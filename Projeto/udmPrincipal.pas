unit udmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, uPedido;

type
  TdmPrincipal = class(TDataModule)
    CONEXAO: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    qry_clientes: TFDQuery;
    qry_produtos: TFDQuery;
    qry_pedidos: TFDQuery;
    qry_pedidos_itens: TFDQuery;
    ds_clientes: TDataSource;
    ds_produtos: TDataSource;
    ds_pedidos: TDataSource;
    ds_pedidos_itens: TDataSource;
    qry_estados: TFDQuery;
    ds_estados: TDataSource;
    qry_estadosCodigo: TFDAutoIncField;
    qry_estadosDescricao: TStringField;
    qry_estadosSigla: TStringField;
    qry_clientesCodigo: TFDAutoIncField;
    qry_clientesNome: TStringField;
    qry_clientesCidade: TStringField;
    qry_clientesUF: TStringField;
    qry_produtosCodigo: TFDAutoIncField;
    qry_produtosDescrição: TStringField;
    qry_produtosVUnit: TBCDField;
    qry_produtosEstoque: TBCDField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qry_pedidoscodigo: TIntegerField;
    qry_pedidoscodigo_cliente: TIntegerField;
    qry_pedidosnome_cliente: TStringField;
    qry_pedidosqtde_itens: TBCDField;
    qry_pedidosvtotal: TBCDField;
    qry_pedidosxstatus: TStringField;
    qry_pedidos_itenscodigo: TFDAutoIncField;
    qry_pedidos_itenscodigo_pedido: TIntegerField;
    qry_pedidos_itensproduto: TIntegerField;
    qry_pedidos_itensdescricao: TStringField;
    qry_pedidos_itensqtde: TBCDField;
    qry_pedidos_itensvunit: TBCDField;
    qry_pedidos_itensvtotal: TBCDField;
    vlr_item: TFloatField;
    qry_inventarios: TFDQuery;
    ds_estoque: TDataSource;
    qry_inventariosCodigo: TFDAutoIncField;
    qry_inventariosCodigo_Produto: TIntegerField;
    qry_inventariosDescricaoProduto: TStringField;
    qry_inventariosQtde_Anterior: TFloatField;
    qry_inventariosQtde_Atual: TFloatField;
    qry_inventariosTipo_Lancamento: TStringField;
    qry_inventariosData_Lancamento: TSQLTimeStampField;
    qry_inventariosDescricao_Lancamento: TStringField;
    procedure qry_pedidos_itensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dmPrincipal: TdmPrincipal;

  TelaAberta, Acao : string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPrincipal.qry_pedidos_itensCalcFields(DataSet: TDataSet);
Var qryBusca : TFDQuery;
    uPedido : TPedido;
begin
  With DataSet do
  begin
    FieldByName('vlr_item').AsFloat := FieldByName('Qtde').AsFloat * FieldByName('VUnit').AsFloat;

    if (qry_pedidos_itens.state in [dsEdit]) then
      Begin
        try
          qryBusca := TFDQuery.Create(Nil);
          qryBusca.Connection := dmPrincipal.CONEXAO;

          with qryBusca do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE tab_pedido_itens SET qtde = :qtde, VUnit = :vunit, VTotal = :vTotal');
              SQL.Add('WHERE codigo = :codigo');
                Params.ParamByName('codigo').AsInteger := qry_pedidos_itenscodigo.Value;
                Params.ParamByName('qtde').AsFloat := qry_pedidos_itensqtde.AsFloat;
                Params.ParamByName('vunit').AsFloat := qry_pedidos_itensvunit.AsFloat;
                Params.ParamByName('vTotal').AsFloat := qry_pedidos_itens.FieldByName('vlr_item').asFloat;
              ExecSQL;
            End;

          uPedido := TPedido.Create;
          uPedido.AtualizarPedido(qry_pedidoscodigo.Value);
          uPedido.Free;

          qryBusca.Free;
        Except
          Exit;
        end;
      end;
  end;
end;

end.
