unit uProdutos;

interface

uses FireDAC.Comp.Client, Data.DB, SysUtils;

type
    TProdutos = class

    private

    fcodigo     : integer;
    fdescricao  : String;
    fvalor      : Double;
    festoque    : Double;
    fTipo_Lancamento: String;
    fCodigo_Estoque: integer;
    fData_Lancamento: TDateTime;
    fQtde_Anterior: Double;
    fQtde_Atual: Double;
    fDescricao_Lancamento: String;

    public

    //Produto
    property codigo     : integer  read fcodigo     write fcodigo;
    property descricao  : String   read fdescricao  write fdescricao;
    property valor      : Double   read fvalor      write fvalor;
    property estoque    : double   read festoque    write festoque;

    //Estoque
    property Codigo_Estoque  : integer    read fCodigo_Estoque    write fCodigo_Estoque;
    property Qtde_Anterior   : Double     read fQtde_Anterior     write fQtde_Anterior;
    property Qtde_Lancamento : Double     read fQtde_Atual        write fQtde_Atual;
    property Tipo_Lancamento : String     read fTipo_Lancamento   write fTipo_Lancamento;
    property Data_Lancamento : TDateTime  read fData_Lancamento   write fData_Lancamento;
    property Descricao_Lancamento : String     read fDescricao_Lancamento   write fDescricao_Lancamento;


    //Funcoes
    function BuscaProduto(scodigo: integer): Boolean;
    function AddProduto: Boolean;
    function BuscaEstAtual(codprod:integer; out vestoque:double):Boolean;
    function BuscaInventario(vcodigo: integer): Boolean;
    function AddInventario: Boolean;
    function AtualizaEstoque: Boolean;

end;


implementation

{ TClientes }

uses udmPrincipal;


{ TProdutos }

function TProdutos.BuscaProduto(scodigo: integer): Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT');
        SQL.Add('codigo,');
        SQL.Add('descricao,');
        SQL.Add('valor,');
        SQL.Add('estoque');
        SQL.Add('FROM tab_produtos');
        SQL.Add('WHERE codigo = :codigo');
          Params.ParamByName('codigo').AsInteger := scodigo;
        Open;

        if qryBusca.RecordCount = 0 then
          Result := false
        else
          Result := true;

        codigo    := qryBusca.FieldByName('codigo').AsInteger;
        descricao := qryBusca.FieldByName('descricao').AsString;
        valor     := qryBusca.FieldByName('valor').AsFloat;
        estoque   := qryBusca.FieldByName('estoque').AsFloat;
      End;

    qryBusca.Free;
  Except
    Result := false;
  end;
end;

function TProdutos.AddProduto: Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    try
      with qryBusca do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO tab_produtos (descricao, valor, estoque)');
          SQL.Add('VALUES (:descricao, :valor, :estoque)');
            Params.ParamByName('descricao').AsString  := descricao;
            Params.ParamByName('valor').AsFloat       := valor;
            Params.ParamByName('estoque').AsFloat     := estoque;
          ExecSQL;
        End;
    Except
      Result := false;
    end;

    //Buscando codigo da inser??o
    try
      with qryBusca do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT codigo FROM tab_produtos');
          SQL.Add('WHERE descricao LIKE :descricao');
            Params.ParamByName('descricao').AsString   := descricao;
          Open;

          codigo := qryBusca.FieldByName('codigo').AsInteger;

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

function TProdutos.BuscaEstAtual(codprod:integer; out vestoque:double):Boolean;
Var qryBusca : TFDQuery;
Begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQl.Add('SELECT estoque FROM tab_produtos');
        SQl.Add('WHERE codigo = :codigo');
          Params.ParamByName('codigo').AsInteger := codprod;
        Open;

        vestoque := qryBusca.FieldByName('estoque').AsInteger;

        Result := true;
      End;

    qryBusca.Free;
  Except
    Result := false;
  end;
End;

function TProdutos.BuscaInventario(vcodigo: integer): Boolean;
Var qryBusca : TFDQuery;
begin
  qryBusca := TFDQuery.Create(Nil);
  qryBusca.Connection := dmPrincipal.CONEXAO;

  with qryBusca do
    Begin
      Close;
      SQL.Clear;
      SQl.Add('SELECT');
      SQl.Add('est.Codigo,');
      SQl.Add('est.Codigo_Produto,');
      SQl.Add('prod.Descricao as DescricaoProduto,');
      SQl.Add('est.Qtde_Anterior,');
      SQl.Add('est.Qtde_Lancamento,');
      SQl.Add('est.Tipo_Lancamento,');
      SQl.Add('est.Data_Lancamento,');
      SQl.Add('est.Descricao_Lancamento');
      SQl.Add('from tab_inventarios est');
      SQl.Add('JOIN tab_produtos prod ON prod.Codigo = est.Codigo_Produto');
      SQl.Add('WHERE est.Codigo = :codigo');
        Params.ParamByName('codigo').AsInteger := vcodigo;
      Open;

      Codigo_Estoque        := qryBusca.FieldByName('Codigo').AsInteger;
      codigo                := qryBusca.FieldByName('Codigo_Produto').AsInteger;
      Descricao             := qryBusca.FieldByName('DescricaoProduto').AsString;
      Qtde_Anterior         := qryBusca.FieldByName('Qtde_Anterior').AsFloat;
      Qtde_Lancamento       := qryBusca.FieldByName('Qtde_Lancamento').AsFloat;
      Tipo_Lancamento       := qryBusca.FieldByName('Tipo_Lancamento').AsString;
      Data_Lancamento       := qryBusca.FieldByName('Data_Lancamento').AsDateTime;
      Descricao_Lancamento  := qryBusca.FieldByName('Descricao_Lancamento').AsString;

    End;

  qryBusca.Free;
end;

function TProdutos.AddInventario: Boolean;
Var qryBusca : TFDQuery;
    vestoque : Double;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;

        SQl.Add('INSERT INTO tab_inventarios (Codigo_Produto, Qtde_Anterior, Qtde_Lancamento, Tipo_Lancamento, Data_Lancamento, Descricao_Lancamento)');
        SQl.Add('values (:Codigo_Produto, :Qtde_Anterior, :Qtde_Lancamento, :Tipo_Lancamento, :Data_Lancamento, :Descricao_Lancamento)');
          Params.ParamByName('Codigo_Produto').AsInteger  := codigo;

          Params.ParamByName('Qtde_Anterior').AsFloat     := Qtde_Anterior;

          Params.ParamByName('Qtde_Lancamento').AsFloat   := Qtde_Lancamento;

          Params.ParamByName('Tipo_Lancamento').asString  := Tipo_Lancamento;
          Params.ParamByName('Data_Lancamento').AsDateTime:= now();
          Params.ParamByName('Descricao_Lancamento').asString := Descricao_Lancamento;
        ExecSQL;

        AtualizaEstoque;

      End;

    qryBusca.Free;
    Result := true;

  Except
    Result := false;
  end;
end;

function TProdutos.AtualizaEstoque: Boolean;
Var qryBusca : TFDQuery;
    vestoque : Double;
begin
  try

    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    with qryBusca do
      Begin
        Close;
        SQL.Clear;

        if Tipo_Lancamento = 'E' then
          Begin
            SQl.Add('UPDATE tab_produtos SET estoque = estoque + :qtde_lancamento');
            SQl.Add('WHERE codigo = :codigo');
          End
        else
          Begin
            SQl.Add('UPDATE tab_produtos SET estoque = estoque - :qtde_lancamento');
            SQl.Add('WHERE codigo = :codigo');
          End;

          Params.ParamByName('codigo').AsInteger  := codigo;
          Params.ParamByName('qtde_lancamento').AsFloat   := qtde_lancamento;

        ExecSQL;
      End;

    qryBusca.Free;
    Result := true;

  Except
    Result := false;
  end;
end;

end.
