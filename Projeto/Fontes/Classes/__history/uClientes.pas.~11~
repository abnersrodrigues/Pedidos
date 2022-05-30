unit uClientes;

interface

uses FireDAC.Comp.Client, Data.DB;

type
    TClientes = class

    private

    fcodigo     : integer;
    fnome       : String;
    fcidade     : String;
    fuf         : integer;
    fuf_sigla   : String;

    public

    property codigo   : integer  read fcodigo   write fcodigo;
    property nome     : String   read fnome     write fnome;
    property cidade   : String   read fcidade   write fcidade;
    property uf       : integer  read fuf       write fuf;
    property uf_sigla : String   read fuf_sigla write fuf_sigla;


    //Funcoes
    function BuscaCliente(codigo: integer): Boolean;
    function BuscaEstado(sigla: string): Boolean;
    function AddCliente: Boolean;
end;


implementation

{ TClientes }

uses udmPrincipal;

function TClientes.BuscaCliente(codigo: integer): Boolean;
Var qryBusca : TFDQuery;
begin
  qryBusca := TFDQuery.Create(Nil);
  qryBusca.Connection := dmPrincipal.CONEXAO;

  with qryBusca do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('cli.codigo as Codigo,');
      SQL.Add('cli.nome as Nome,');
      SQL.Add('cli.cidade as Cidade,');
      SQL.Add('(select sigla from tab_estados e where e.codigo = cli.uf) as UF');
      SQL.Add('from tab_clientes as cli');
      SQL.Add('where cli.codigo = :codigo');
        Params.ParamByName('codigo').AsInteger := codigo;
      Open;

      codigo   := qryBusca.FieldByName('codigo').AsInteger;
      nome     := qryBusca.FieldByName('nome').AsString;
      cidade   := qryBusca.FieldByName('cidade').AsString;
      uf_sigla := qryBusca.FieldByName('uf').AsString;
    End;

  qryBusca.Free;
end;

function TClientes.BuscaEstado(sigla: string): Boolean;
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
      SQL.Add('sigla');
      SQL.Add('FROM tab_estados');
      SQL.Add('WHERE sigla = :sigla');
        Params.ParamByName('sigla').asString := sigla;
      Open;

      uf       := qryBusca.FieldByName('codigo').asInteger;
      uf_sigla := qryBusca.FieldByName('sigla').AsString;
    End;

  qryBusca.Free;
end;

function TClientes.AddCliente: Boolean;
Var qryBusca : TFDQuery;
begin
  try
    qryBusca := TFDQuery.Create(Nil);
    qryBusca.Connection := dmPrincipal.CONEXAO;

    BuscaEstado(uf_sigla);


    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO tab_clientes (nome, cidade, uf)');
        SQL.Add('VALUES (:nome, :cidade, :uf) RETURNING codigo');
          Params.ParamByName('nome').AsString   := nome;
          Params.ParamByName('cidade').AsString := cidade;
          Params.ParamByName('uf').asInteger    := uf;
        Open;

        codigo := qryBusca.FieldByName('codigo').AsInteger;
      End;

    qryBusca.Free;
    Result := true;
  Except
    Result := false;
  end;
end;


end.
