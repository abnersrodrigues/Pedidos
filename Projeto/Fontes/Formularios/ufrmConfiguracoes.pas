unit ufrmConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uClasses, uFuncaoCriptografia,
  Vcl.Imaging.pngimage;

type
  TfrmConfiguracoes = class(TForm)
    pnl_principal: TPanel;
    pnl_menu: TPanel;
    pnl_menu_top: TPanel;
    pnl_salvar: TPanel;
    btn_salvar: TSpeedButton;
    pnl_atualizar: TPanel;
    btn_atualizar: TSpeedButton;
    pnl_controle: TPanel;
    pnl_dados: TPanel;
    grp_servidor: TGroupBox;
    edt_hostname: TEdit;
    grp_dll: TGroupBox;
    edt_dll: TEdit;
    pnl_topo: TPanel;
    pnl_fechar: TPanel;
    btn_fechar: TSpeedButton;
    pnl_Titulo: TPanel;
    lbl_titulo_1: TLabel;
    lbl_titulo_2: TLabel;
    pnl_barra_menu: TPanel;
    grp_base: TGroupBox;
    edt_base: TEdit;
    OpenDialog: TOpenDialog;
    grp_senha: TGroupBox;
    edt_senha: TEdit;
    grp_usuario: TGroupBox;
    edt_usuario: TEdit;
    grp_porta: TGroupBox;
    edt_porta: TEdit;
    img_dll: TImage;
    procedure btn_fecharClick(Sender: TObject);
    procedure img_dllClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    function BuscandoIni: Boolean;
    { Private declarations }
  public
    { Public declarations }

    uClasses : TClasses;

  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmConfiguracoes.btn_atualizarClick(Sender: TObject);
begin
  edt_hostname.Enabled  := true;
  edt_hostname.SetFocus;
  edt_base.Enabled      := true;
  edt_porta.Enabled     := true;
  edt_usuario.Enabled   := true;
  edt_senha.Enabled     := true;
end;

procedure TfrmConfiguracoes.btn_fecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmConfiguracoes.btn_salvarClick(Sender: TObject);
begin
  try
    uClasses.base             := edt_base.Text;
    uClasses.hostname         := edt_hostname.Text;
    uClasses.porta            := strtoint(edt_porta.Text);
    uClasses.usuario          := edt_usuario.Text;
    uClasses.senha            := edt_senha.Text;
    uClasses.dllconexao       := edt_dll.Text;

    if not uClasses.fnc_GravarIni then
      ShowMessage('Erro ao gravar arquivo')
    else
      Begin
        ShowMessage('Gravado com sucesso!');

        try
          if not uClasses.fnc_configura_bd then
            ShowMessage('Erro na Conex?o, verifique!')
          else
            Close;

        Except
          ShowMessage('Erro na Conex?o, verifique!')
        end;

      End;
  finally
    //
  end;
end;

procedure TfrmConfiguracoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TelaAberta := '';
  uClasses.free;

  Action := caFree;
end;

procedure TfrmConfiguracoes.FormCreate(Sender: TObject);
begin
  uClasses := TClasses.Create;
end;

procedure TfrmConfiguracoes.FormShow(Sender: TObject);
begin
  BuscandoIni;
end;

procedure TfrmConfiguracoes.img_dllClick(Sender: TObject);
begin
  OpenDialog.Title := 'Selecione a Dll';
  OpenDialog.DefaultExt := '*.dll';
  OpenDialog.InitialDir := extractfilepath(Application.ExeName)+'\dll';

  if OpenDialog.Execute then
  begin
    edt_dll.Text := OpenDialog.FileName;
  end;
end;

function TfrmConfiguracoes.BuscandoIni:Boolean;
Begin
  uClasses.fnc_LerIni;

  edt_hostname.Text   := uclasses.hostname;
  edt_base.Text       := uclasses.base;
  edt_porta.Text      := uclasses.porta.ToString;
  edt_usuario.Text    := uclasses.usuario;
  edt_senha.Text      := uclasses.senha;
  edt_dll.Text        := uclasses.dllconexao;

End;

end.
