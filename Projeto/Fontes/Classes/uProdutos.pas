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

    public

    property codigo     : integer  read fcodigo     write fcodigo;
    property descricao  : String   read fdescricao  write fdescricao;
    property valor      : Double   read fvalor      write fvalor;
    property estoque    : double   read festoque    write festoque;

    //Funcoes
    function BuscaProduto(scodigo: integer): Boolean;
    function AddProduto: Boolean;
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

    with qryBusca do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO tab_produtos (descricao, valor, estoque)');
        SQL.Add('VALUES (:descricao, :valor, :estoque) RETURNING codigo');
          Params.ParamByName('descricao').AsString  := descricao;
          Params.ParamByName('valor').AsFloat       := valor;
          Params.ParamByName('estoque').AsFloat     := estoque;
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
