unit ufrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmHeranca, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, uClientes, uFuncoes;

type
  TfrmClientes = class(TfrmHeranca)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edt_codigo: TEdit;
    edt_nome: TEdit;
    edt_cidade: TEdit;
    cmb_uf: TComboBox;
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure grd_painelTitleClick(Column: TColumn);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    uClientes : TClientes;

  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmClientes.btn_alterarClick(Sender: TObject);
begin
  uClientes.BuscaCliente(dmPrincipal.qry_clientesCodigo.asinteger);

  edt_codigo.text := inttostr(uclientes.codigo);
  edt_nome.text   := uclientes.nome;
  edt_cidade.text := uclientes.cidade;

  ufuncoes.LancaEstado(cmb_uf); //pupulando combobox
  cmb_uf.ItemIndex := cmb_uf.Items.IndexOf(uclientes.uf_sigla);

  inherited;
end;

procedure TfrmClientes.btn_novoClick(Sender: TObject);
begin
  inherited;
  LancaEstado(cmb_uf);
  edt_nome.SetFocus;
end;

procedure TfrmClientes.btn_salvarClick(Sender: TObject);
begin
  uClientes.nome    := edt_nome.Text;
  uClientes.cidade  := edt_cidade.Text;
  uClientes.uf_sigla:= cmb_uf.Text;

  if not uClientes.AddCliente then
    ShowMessage('Erro ao Inserir Novo Cliente')
  else
    Begin
      edt_codigo.Text := inttostr(uClientes.codigo);
      ShowMessage('Inserido com Sucesso');
    End;

  dmPrincipal.qry_clientes.Refresh;
  dmPrincipal.qry_clientes. First; //setando primeiro registro.

  LimparEdits(Self);
  inherited;
end;

procedure TfrmClientes.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if key = #13 then
    Begin
      with dmPrincipal.qry_clientes do
        Begin
          Close;
          Params.ParamByName('BUSCA').AsString := '%' + edt_busca.Text + '%';
          Open;
        End;
    End;

end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  uClientes.free;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  inherited;

  uClientes := TClientes.Create;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  inherited;

  grd_painel.DataSource   := dmPrincipal.ds_clientes;

  with dmPrincipal.qry_clientes do
    Begin
      Close;
      Params.ParamByName('BUSCA').AsString :=  '%' + edt_busca.Text + '%';
      Open;
    End;
end;

procedure TfrmClientes.grd_painelTitleClick(Column: TColumn);
begin
  inherited;

  if dmPrincipal.qry_clientes.IndexFieldNames = Column.FieldName then
    dmPrincipal.qry_clientes.IndexFieldNames := Column.FieldName + ':D'
  else
    dmPrincipal.qry_clientes.IndexFieldNames := Column.FieldName;
  dmPrincipal.qry_clientes.First;
end;

end.
