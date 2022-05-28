unit ufrmHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uFuncoes,
  Vcl.Imaging.pngimage;

type
  TfrmHeranca = class(TForm)
    pnl_centro: TPanel;
    pgcPrincipal: TPageControl;
    tab_painel: TTabSheet;
    tab_dados: TTabSheet;
    GroupBox5: TGroupBox;
    pnl_topo: TPanel;
    pnl_fechar: TPanel;
    btn_fechar: TSpeedButton;
    pnl_Titulo: TPanel;
    lbl_titulo_1: TLabel;
    lbl_titulo_2: TLabel;
    pnl_barra_menu: TPanel;
    grd_painel: TDBGrid;
    pnl_botoes: TPanel;
    pnl_menu_top: TPanel;
    pnl_alterar: TPanel;
    btn_alterar: TSpeedButton;
    pnl_novo: TPanel;
    Panel1: TPanel;
    pnl_barra_botao: TPanel;
    btn_novo: TSpeedButton;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    Panel2: TPanel;
    grp_busca: TGroupBox;
    Panel4: TPanel;
    edt_busca: TEdit;
    pnl_cancelar: TPanel;
    btn_cancelar: TSpeedButton;
    pnl_barra_botoes: TPanel;
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_novoMouseEnter(Sender: TObject);
    procedure btn_novoMouseLeave(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }

    function VerificaAcao(sAcao:String): Boolean;
  public
    { Public declarations }
  end;

var
  frmHeranca: TfrmHeranca;

implementation

{$R *.dfm}

uses udmPrincipal, ufrmPrincipal;

procedure TfrmHeranca.btn_alterarClick(Sender: TObject);
begin
  VerificaAcao(TspeedButton(sender).Caption);
  pgcPrincipal.ActivePage := tab_dados;
end;

function TfrmHeranca.VerificaAcao(sAcao:String): Boolean;
Begin
  if sAcao = 'NOVO' then
    Begin
      Acao                            := 'NOVO';
      Self.btn_novo.enabled     := false;
      Self.btn_alterar.enabled  := false;
      Self.btn_salvar.enabled   := true;
    end
  else
  if sAcao = 'ALTERAR' then
    Begin
      Acao                            := 'ALTERAR';
      Self.btn_novo.enabled     := false;
      Self.btn_alterar.enabled  := false;
      Self.btn_salvar.enabled   := true;
    end
  else
  if sAcao = 'SALVAR' then
    Begin
      Acao                            := '';
      Self.btn_novo.enabled     := true;
      Self.btn_alterar.enabled  := true;
      Self.btn_salvar.enabled   := false;
    end
  else
  if sAcao = 'CANCELAR' then
    Begin
      Acao                            := '';
      Self.btn_novo.enabled     := true;
      Self.btn_alterar.enabled  := true;
      Self.btn_salvar.enabled   := false;
    end
End;

procedure TfrmHeranca.btn_cancelarClick(Sender: TObject);
begin
  VerificaAcao('CANCELAR');
  pgcPrincipal.ActivePage := tab_painel;
  LimparEdits(Self);
end;

procedure TfrmHeranca.btn_fecharClick(Sender: TObject);
begin
  TelaAberta := '';
  Self.Close;
end;

procedure TfrmHeranca.btn_novoClick(Sender: TObject);
begin
  VerificaAcao(TspeedButton(sender).Caption);
  pgcPrincipal.ActivePage := tab_dados;
end;

procedure TfrmHeranca.btn_novoMouseEnter(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               True, 'MENU' );
end;

procedure TfrmHeranca.btn_novoMouseLeave(Sender: TObject);
begin
  focar_botao( self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               False, 'MENU' );
end;

procedure TfrmHeranca.btn_salvarClick(Sender: TObject);
begin
  btn_cancelarClick(Self);
end;

procedure TfrmHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmHeranca.FormCreate(Sender: TObject);
begin
  ocultar_tabs(pgcPrincipal);
  pgcPrincipal.ActivePage := tab_painel;
  ufuncoes.LimparEdits(Self);
end;

procedure TfrmHeranca.FormShow(Sender: TObject);
begin
  TelaAberta := Self.Caption;
  lbl_titulo_1.Caption := self.Caption; //Nome Formulario
  lbl_titulo_2.Caption := 'Cadastro'; // Cadastro ou Movimentação (Lançamento)


  dmPrincipal.qry_estados.open;
end;

end.
