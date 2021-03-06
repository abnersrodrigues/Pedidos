unit uPedido;

interface

uses FireDAC.Comp.Client, Data.DB, Vcl.StdCtrls;

type
    TPedido = class

    private
    fcodigo_pedido: integer;
    fvtotal: double;
    fcodigo_cliente: integer;
    fqtde_itens: double;
    fxstatus: String;
    fvtotal_item: double;
    fqtde: double;
    fcodigo_item: integer;
    fvunit: double;
    fcodigo_produto: integer;
    fproduto_descricao: string;
    fnome_cliente: String;
    function AtualizarEstoque(vcodigo:integer; vqtde: double): Boolean;


    public

    //Pedido
    property codigo_pedido  : integer   read fcodigo_pedido     write fcodigo_pedido;
    property codigo_cliente : integer   read fcodigo_cliente    write fcodigo_cliente;
    property nome_cliente   : String    read fnome_cliente      write fnome_cliente;
    property qtde_itens     : double    read fqtde_itens        write fqtde_itens;
    property vtotal         : double    read fvtotal            write fvtotal;
    property xstatus        : String    read fxstatus           write fxstatus;

    //Itens
    property codigo_item    : integer   read fcodigo_item       write fcodigo_item;
    property codigo_produto : integer   read fcodigo_produto    write fcodigo_produto;
    property produto_descricao : string read fproduto_descricao write fproduto_descricao;
    property qtde           : double    read fqtde              write fqtde;
    property vunit          : double    read fvunit             write fvunit;
    property vtotal_item    : double    read fvtotal_item       write fvtotal_item;


    //Funcoes
    function BuscaPedido(codigo: integer): Boolean;
    function AddPedido: Boolean;
    function AddItem: Boolean;
    function BuscaItem(codigo: integer): Boolean;
    function LancaClientes(cmb: TComboBox): Boolean;
    function BuscaCliente(nome: string): Boolean;
    function AtualizarPedido(codigo: integer): Boolean;
    function BuscaItens(codigo: integer): Boolean;
    function UpdateItem(vitem: integer; vqtde, vvunit, vvtotal: double): Boolean;
    function DelPedido(vcodigo: integer): Boolean;
    function AtualizarStatus(codigo:integer; sstatus:string):Boolean;
    //Procedures

end;


implementation

{ TClientes }

uses udmPrincipal, ufrmPedido;

function TPedido.BuscaPedido(codigo: integer): Boolean;
Var qryBusca : TFDQuery;
begin
  qryBusca := TFDQuery.Create(Nil);
  qryBusca.Connection := dmPrincipal.CONEXAO;

  with qryBusca do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('codigo,');
      SQL.Add('codigo_cliente,');
      SQL.Add('qtde_itens,');
      SQL.Add('vtotal,');
      SQL.Add('xstatus');
      SQL.Add('FROM tab_pedido');
      SQL.Add('where codigo = :codigo');
        Params.ParamByName('codigo').AsInteger := codigo;
      Open;

      codigo          := qryBusca.FieldByName('codigo').AsInteger;
      codigo_cliente  := qryBusca.FieldByName('codigo_cliente').AsInteger;
      qtde_itens      := qryBusca.FieldByName('qtde_itens').AsFloat;
      vtotal          := qryBusca.FieldByName('vtotal').AsFloat;
      xstatus         := qryBusca.FieldByName('xstatus').AsString;

    End;

  qryBusca.Free;
end;

function TPedido.BuscaItem(codigo: integer): Boolean;   // individual
Var qryBusca : TFDQuery;
begin
  qryBusca := TFDQuery.Create(Nil);
  qryBusca.Connection := dmPrincipal.CONEXAO;

  with qryBusca do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('codigo,');
      SQL.Add('codigo_pedido,');
      SQL.Add('produto,');
      SQL.Add('qtde,');
      SQL.Add('vunit,');
      SQL.Add('vtotal');
      SQL.Add('FROM tab_pedido_itens');
      SQL.Add('where codigo = :codigo');
        Params.ParamByName('codigo').AsInteger := codigo;
      Open;



      codigo         := qryBusca.FieldByName('codigo').AsInteger;
      codigo_pedido  := qryBusca.FieldByName('codigo_pedido').AsInteger;
      qtde           := qryBusca.FieldByName('qtde').AsFloat;
      codigo_produto := qryBusca.FieldByName('produto').AsInteger;
      vunit          := qryBusca.FieldByName('vunit').AsFloat;
      vtotal         := qryBusca.FieldByName('vtotal').AsFloat;

    End;

  qryBusca.Free;
end;

function TPedido.BuscaItens(codigo: integer): Boolean; // todos itens
Var qryBusca : TFDQuery;
begin
  qryBusca := TFDQuery.Create(Nil);
  qryBusca.Connection := dmPrincipal.CONEXAO;

  with qryBusca do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('i.codigo,');
      SQL.Add('i.codigo_pedido,');
      SQL.Add('i.produto,');
      SQL.Add('prod.Descricao AS descricao,');
      SQL.Add('i.qtde,');
      SQL.Add('i.vunit,');
      SQL.Add('i.vtotal');
      SQL.Add('FROM tab_pedido_itens i');
      SQl.Add('join tab_produtos prod ON prod.Codigo = i.Produto');
      SQL.Add('where i.codigo_pedido = :codigo');
        Params.ParamByName('codigo').AsInteger := codigo;
      Open;
    End;

  qryBusca.Free;
end;

function TPedido.AddPedido: Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    BuscaCliente(nome_cliente);

    try
      with qryBusca do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO tab_pedido (codigo_cliente, qtde_itens, vtotal, xstatus)');
          SQL.Add('VALUES (:codigo_cliente, :qtde_itens, :vtotal, :xstatus)');
            Params.ParamByName('codigo_cliente').AsInteger := codigo_cliente;
            Params.ParamByName('qtde_itens').AsFloat := qtde_itens;
            Params.ParamByName('vtotal').AsFloat := vtotal;
            Params.ParamByName('xstatus').asString := 'A';
          ExecSQL;
        End;
    Except
      Result := false;
    end;

    try
      with qryBusca do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT codigo FROM tab_pedido');
          SQL.Add('ORDER BY 1 desc');
          SQL.Add('LIMIT 1');
          Open;

          codigo_pedido := qryBusca.FieldByName('codigo').AsInteger;

        End;
    Except
      Result := false;
    end;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
end;

function TPedido.DelPedido(vcodigo:integer): Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM tab_pedido_itens WHERE Codigo_Pedido = :Codigo_Pedido');
          Params.ParamByName('Codigo_Pedido').AsInteger := vcodigo;
        ExecSQL;
      End;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM tab_pedido WHERE Codigo = :Codigo');
          Params.ParamByName('Codigo').AsInteger := vcodigo;
        ExecSQL;
      End;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
end;


function TPedido.UpdateItem(vitem: integer; vqtde, vvunit, vvtotal: double): Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE tab_pedido_itens SET qtde = :qtde, VUnit = :vunit, VTotal = :vTotal');
        SQL.Add('WHERE codigo = :codigo');
          Params.ParamByName('codigo').AsInteger := vitem;
          Params.ParamByName('qtde').AsFloat := vqtde;
          Params.ParamByName('vunit').AsFloat := vvunit;
          Params.ParamByName('vTotal').AsFloat := vvtotal;
        ExecSQL;
      End;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
end;

function TPedido.AddItem: Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;


        SQL.Add('INSERT INTO tab_pedido_itens (codigo_pedido, produto, qtde, vunit, vtotal, ind_cancelamento)');
        SQL.Add('VALUES (:codigo_pedido, :produto, :qtde, :vunit, :vtotal, :ind_cancelamento) RETURNING codigo');
          Params.ParamByName('codigo_pedido').AsInteger := codigo_pedido;
          Params.ParamByName('produto').AsFloat := codigo_produto;
          Params.ParamByName('qtde').AsFloat := qtde;
          Params.ParamByName('vunit').AsFloat := vunit;
          Params.ParamByName('vtotal').AsFloat := vtotal;
          Params.ParamByName('ind_cancelamento').asString := xstatus;
        Open;

        codigo_pedido := qryBusca.FieldByName('codigo').AsInteger;

      End;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
end;

function TPedido.AtualizarPedido(codigo:integer):Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;


        SQL.Add('UPDATE tab_pedido p');
        SQL.Add('SET p.Qtde_Itens = (SELECT COUNT(PI.codigo_pedido) FROM tab_pedido_itens pi WHERE PI.codigo_pedido = p.Codigo),');
        SQL.Add('p.VTotal = 	(SELECT sum(PI.VTotal) FROM tab_pedido_itens PI WHERE PI.codigo_pedido = p.Codigo)');
        SQL.Add('WHERE p.Codigo = :codigo');
          Params.ParamByName('codigo').AsInteger := codigo;
        ExecSQL;
      End;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;

End;

function TPedido.AtualizarStatus(codigo:integer; sstatus:string):Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;

        SQL.Add('UPDATE tab_pedido SET xstatus = :xstatus');

        if sstatus = 'C' then
          Begin
            SQl.Add(', data_cancelamento = current_timestamp()')
          End;

        if sstatus = 'F' then
          Begin
            SQl.Add(', data_fechamento = current_timestamp()')
          End;
        SQL.Add('WHERE CODIGO = :CODIGO');
          Params.ParamByName('CODIGO').AsInteger := codigo;
          Params.ParamByName('xstatus').asString := sstatus;
        ExecSQL;
      End;

    if sstatus = 'C' then
      Begin
        with qryBusca do
          Begin
            Close;
            SQL.Clear;

            SQL.Add('SELECT * FROM tab_pedido_itens');
            SQL.Add('WHERE codigo_pedido = :codigo_pedido');
              Params.ParamByName('codigo_pedido').AsInteger := codigo;
            Open;
            if qryBusca.RecordCount <> 0 then
              Begin
                while not qryBusca.Eof do
                  Begin
                    AtualizarEstoque(qryBusca.FieldByName('Produto').AsInteger, qryBusca.FieldByName('Qtde').AsFloat);
                    qryBusca.Next;
                  End;
              End;

          End;
      End;


    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
End;

function TPedido.AtualizarEstoque(vcodigo:integer; vqtde: double):Boolean; //Pos Cancelamento
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;

        SQL.Add('UPDATE tab_produtos SET estoque = estoque + :qtde');
        SQL.Add('WHERE codigo = :codigo');
          Params.ParamByName('codigo').AsInteger := vcodigo;
          Params.ParamByName('qtde').AsFloat := vqtde;
        ExecSQL;
      End;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
End;


function TPedido.BuscaCliente(nome: string): Boolean;
Var qryBusca : TFDQuery;
begin
  qryBusca := TFDQuery.Create(Nil);
  qryBusca.Connection := dmPrincipal.CONEXAO;

  with qryBusca do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('codigo');
      SQL.Add('FROM tab_clientes');
      SQL.Add('WHERE nome like :nome');
        Params.ParamByName('nome').asString := nome;
      Open;

      codigo_cliente := qryBusca.FieldByName('codigo').asInteger;
    End;

  qryBusca.Free;
end;

function TPedido.LancaClientes(cmb: TComboBox): Boolean;
Begin
  try
    dmPrincipal.qry_clientes.Close;
    dmPrincipal.qry_clientes.Params.ParamByName('BUSCA').AsString :=  '%' + '' + '%';
    dmPrincipal.qry_clientes.Open;
    cmb.Items.Clear;
    cmb.Items.BeginUpdate;

    dmPrincipal.qry_clientes.First;
    while not dmPrincipal.qry_clientes.eof do
      Begin
        cmb.Items.Add(dmPrincipal.qry_clientesNome.asString);
        dmPrincipal.qry_clientes.Next;
      End;
    cmb.Items.EndUpdate;
    cmb.ItemIndex := 0;

    Result := true;
  Except
    Result := false;
  end;
End;

end.
