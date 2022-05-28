unit ufrmInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmHeranca, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, uProdutos;

type
  TfrmEstoque = class(TfrmHeranca)
    grp_tipo_lancamento: TGroupBox;
    grp_qtde_atual: TGroupBox;
    grp_qtde_anterior: TGroupBox;
    grp_data_lancamento: TGroupBox;
    grp_descricao_produto: TGroupBox;
    grp_cod_produto: TGroupBox;
    edt_cod_lancamento: TEdit;
    edt_cod_produto: TEdit;
    edt_descricao_produto: TEdit;
    edt_qtde_anterior: TEdit;
    edt_qtde_lancamento: TEdit;
    edt_data_lancamento: TEdit;
    edt_descricao_lancamento: TEdit;
    cmb_tipo_lancamento: TComboBox;
    grp_desc_lancamento: TGroupBox;
    ScrollBox: TScrollBox;
    procedure FormShow(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure grd_painelDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    uProdutos : TProdutos;

  end;

var
  frmEstoque: TfrmEstoque;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmEstoque.btn_alterarClick(Sender: TObject);
begin
  inherited;

  if not uProdutos.BuscaEstoque(dmPrincipal.qry_estoqueCodigo.AsInteger) then
    ShowMessage('Erro ao Buscar lanšamento')
  else
    Begin

      edt_cod_lancamento.Text         := uProdutos.Codigo_Estoque.ToString;
      edt_cod_produto.Text            := uProdutos.codigo.ToString;
      edt_descricao_produto.Text      := uProdutos.descricao;
      edt_qtde_atual.Text             := uProdutos.Qtde_Atual.ToString;
      edt_qtde_anterior.Text          := uProdutos.Qtde_Anterior.ToString;

      if uProdutos.Tipo_Lancamento = 'E' then
        cmb_tipo_lancamento.ItemIndex := 0
      else
        cmb_tipo_lancamento.ItemIndex := 1;

      edt_descricao_lancamento.Text   := uProdutos.Descricao_Lancamento;
      edt_data_lancamento.Text        := FormatDateTime('dd/mm/yyyy hh:mm:ss', uProdutos.Data_Lancamento);
    End;

end;

procedure TfrmEstoque.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  with dmPrincipal.qry_estoque do
    Begin
      Close;
      Params.ParamByName('DESCRICAO').AsString :=  '%' + edt_busca.Text + '%';
      Open;
    End;

end;

procedure TfrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  uProdutos.free;
end;

procedure TfrmEstoque.FormCreate(Sender: TObject);
begin
  inherited;

  uProdutos := TProdutos.Create;
end;

procedure TfrmEstoque.FormShow(Sender: TObject);
begin
  inherited;

  grd_painel.DataSource   := dmPrincipal.ds_estoque;

  with dmPrincipal.qry_estoque do
    Begin
      Close;
      Params.ParamByName('DESCRICAO').AsString :=  '%' + edt_busca.Text + '%';
      Open;
    End;
end;

procedure TfrmEstoque.grd_painelDblClick(Sender: TObject);
begin
  inherited;

  btn_alterarClick(Self);
end;

end.
