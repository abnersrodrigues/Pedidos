unit ufrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmHeranca, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, uProdutos;

type
  TfrmProdutos = class(TfrmHeranca)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edt_codigo: TEdit;
    edt_descricao: TEdit;
    edt_vunit: TEdit;
    edt_est: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_vunitExit(Sender: TObject);
    procedure edt_estExit(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure grd_painelTitleClick(Column: TColumn);
    procedure btn_alterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    uProdutos : TProdutos;
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses udmPrincipal, uFuncoes;

procedure TfrmProdutos.btn_alterarClick(Sender: TObject);
begin
  uProdutos.BuscaProduto(dmPrincipal.qry_produtosCodigo.AsInteger);

  edt_codigo.Text     := inttostr(uProdutos.codigo);
  edt_descricao.Text  := uProdutos.descricao;
  edt_vunit.Text      := FormatFloat('#,##0.00', uProdutos.valor);
  edt_est.Text        := FormatFloat('#,##0.00', uProdutos.estoque);

  inherited;
end;

procedure TfrmProdutos.btn_novoClick(Sender: TObject);
begin
  inherited;
  edt_est.Text := '0,00';
end;

procedure TfrmProdutos.btn_salvarClick(Sender: TObject);
begin
  uProdutos.descricao := edt_descricao.Text;
  uProdutos.valor     := strtofloat(edt_vunit.Text);
  uProdutos.estoque   := strtofloat(edt_est.Text);

  if not uProdutos.AddProduto then
    ShowMessage('Erro ao Inserir Novo Produto')
  else
    Begin
      edt_codigo.Text := inttostr(uProdutos.codigo);
      ShowMessage('Inserido com Sucesso');
    End;

  dmPrincipal.qry_produtos.Refresh;
  dmPrincipal.qry_produtos. First;   //setando primeiro registro.

  LimparEdits(Self);
  inherited;
end;

procedure TfrmProdutos.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if key = #13 then
    Begin
      with dmPrincipal.qry_produtos do
        Begin
          Close;
          Params.ParamByName('BUSCA').AsString := '%' + edt_busca.Text + '%';
          Open;
        End;
    End;
end;

procedure TfrmProdutos.edt_estExit(Sender: TObject);
begin
  inherited;

  if edt_est.Text <> '' then
    Begin
      StringReplace(edt_est.Text, '.', ',', [rfReplaceAll]);
      edt_est.Text := FormatFloat('#,##0.00', StrToFloat(edt_est.Text));
    End;
end;

procedure TfrmProdutos.edt_vunitExit(Sender: TObject);
begin
  inherited;

  if edt_vunit.Text <> '' then
    Begin
      StringReplace(edt_vunit.Text, '.', ',', [rfReplaceAll]);
      edt_vunit.Text := FormatFloat('#,##0.00', StrToFloat(edt_vunit.Text));
    End;
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  uProdutos.free;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  uProdutos := TProdutos.Create;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  inherited;

  grd_painel.DataSource   := dmPrincipal.ds_produtos;

  with dmPrincipal.qry_produtos do
    Begin
      Close;
      Params.ParamByName('BUSCA').AsString :=  '%' + edt_busca.Text + '%';
      Open;
    End;
end;

procedure TfrmProdutos.grd_painelTitleClick(Column: TColumn);
begin
  inherited;

  if dmPrincipal.qry_produtos.IndexFieldNames = Column.FieldName then
    dmPrincipal.qry_produtos.IndexFieldNames := Column.FieldName + ':D'
  else
    dmPrincipal.qry_produtos.IndexFieldNames := Column.FieldName;
  dmPrincipal.qry_produtos.First;
end;

end.
