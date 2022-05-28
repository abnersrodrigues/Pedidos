unit ufrmInventarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmHeranca, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, uProdutos,
  Vcl.Imaging.pngimage;

type
  TfrmInventarios = class(TfrmHeranca)
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
    btn_busca_produtos: TImage;
    procedure FormShow(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure grd_painelDblClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_busca_produtosClick(Sender: TObject);
    procedure edt_cod_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    uProdutos : TProdutos;

  end;

var
  frmInventarios: TfrmInventarios;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmInventarios.btn_alterarClick(Sender: TObject);
begin
  inherited;

  if not uProdutos.BuscaInventario(dmPrincipal.qry_inventariosCodigo.AsInteger) then
    ShowMessage('Erro ao Buscar lançamento')
  else
    Begin

      edt_cod_lancamento.Text         := uProdutos.Codigo_Estoque.ToString;
      edt_cod_produto.Text            := uProdutos.codigo.ToString;
      edt_descricao_produto.Text      := uProdutos.descricao;
      edt_qtde_lancamento.Text        := uProdutos.Qtde_Lancamento.ToString;
      edt_qtde_anterior.Text          := uProdutos.Qtde_Anterior.ToString;

      if uProdutos.Tipo_Lancamento = 'E' then
        cmb_tipo_lancamento.ItemIndex := 0
      else
        cmb_tipo_lancamento.ItemIndex := 1;

      edt_descricao_lancamento.Text   := uProdutos.Descricao_Lancamento;
      edt_data_lancamento.Text        := FormatDateTime('dd/mm/yyyy hh:mm:ss', uProdutos.Data_Lancamento);
    End;

end;

procedure TfrmInventarios.btn_novoClick(Sender: TObject);

begin
  inherited;

  edt_data_lancamento.Text        := FormatDateTime('dd/mm/yyyy hh:mm', now());
end;

procedure TfrmInventarios.btn_salvarClick(Sender: TObject);
begin
  uProdutos.codigo                := strtoint(edt_cod_produto.Text);

  uProdutos.Qtde_Anterior         := strtofloat(FormatFloat('0.00', strtofloat(edt_qtde_anterior.Text)));
  uProdutos.Qtde_Lancamento       := strtofloat(FormatFloat('0.00', strtofloat(edt_qtde_lancamento.Text)));

  if cmb_tipo_lancamento.ItemIndex = 0 then
    uProdutos.Tipo_Lancamento     := 'E'
  ELSE
    uProdutos.Tipo_Lancamento     := 'S';

  uProdutos.Descricao_Lancamento  := edt_descricao_lancamento.Text;
  uProdutos.Data_Lancamento       := StrToDateTime(edt_data_lancamento.Text);

  if not uProdutos.AddInventario then
    Begin
      ShowMessage('Erro ao lançar Inventário');
      Exit;
    End
  else
    Begin
      dmPrincipal.qry_inventarios.Refresh;
    End;

  inherited;
end;

procedure TfrmInventarios.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  with dmPrincipal.qry_inventarios do
    Begin
      Close;
      Params.ParamByName('DESCRICAO').AsString :=  '%' + edt_busca.Text + '%';
      Open;
    End;

end;

procedure TfrmInventarios.edt_cod_produtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  if key = #13 then
    Begin
      btn_busca_produtosClick(Self);
    End;
end;

procedure TfrmInventarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  uProdutos.free;
end;

procedure TfrmInventarios.FormCreate(Sender: TObject);
begin
  inherited;

  uProdutos := TProdutos.Create;
end;

procedure TfrmInventarios.FormShow(Sender: TObject);
begin
  inherited;

  grd_painel.DataSource   := dmPrincipal.ds_estoque;

  with dmPrincipal.qry_inventarios do
    Begin
      Close;
      Params.ParamByName('DESCRICAO').AsString :=  '%' + edt_busca.Text + '%';
      Open;
    End;
end;

procedure TfrmInventarios.grd_painelDblClick(Sender: TObject);
begin
  inherited;

  btn_alterarClick(Self);
end;

procedure TfrmInventarios.btn_busca_produtosClick(Sender: TObject);
Var vestoque:Double;
begin
  inherited;

  if not uProdutos.BuscaProduto(strtoint(edt_cod_produto.Text)) then
    begin
      ShowMessage('Produto não encontrado');
      exit;
    End
  else
    Begin
      edt_descricao_produto.Text := uProdutos.descricao;

      uProdutos.BuscaEstAtual(strtoint(edt_cod_produto.Text), vestoque);
      edt_qtde_anterior.Text := vestoque.ToString;

      edt_qtde_lancamento.SetFocus;
    End;
end;

end.
