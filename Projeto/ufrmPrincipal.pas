unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uFuncoes,
  Vcl.Menus, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    pnl_fundo: TPanel;
    pnl_topo: TPanel;
    pnl_fechar: TPanel;
    btn_fechar: TSpeedButton;
    pnl_minimizar: TPanel;
    btn_minimizar: TSpeedButton;
    pnl_Titulo: TPanel;
    lbl_titulo_1: TLabel;
    lbl_titulo_2: TLabel;
    pnl_configuracoes: TPanel;
    btn_configuracoes: TSpeedButton;
    pnl_barra_menu: TPanel;
    pnl_principal: TPanel;
    pnl_botoes: TPanel;
    pnl_menu_top: TPanel;
    pnl_clientes: TPanel;
    btn_clientes: TSpeedButton;
    pnl_produtos: TPanel;
    btn_produtos: TSpeedButton;
    pnl_barra_botao: TPanel;
    pnl_pedido: TPanel;
    btn_pedido: TSpeedButton;
    pnl_status_bar: TPanel;
    pnl_computador: TPanel;
    lbl_computador: TLabel;
    pnl_servidor: TPanel;
    lbl_servidor: TLabel;
    pnl_data: TPanel;
    lbl_data: TLabel;
    Image1: TImage;
    pnl_registro_estoque: TPanel;
    btn_inventarios: TSpeedButton;
    pnl_menu: TPanel;
    pnl_menu_sub: TPanel;
    btn_sair: TSpeedButton;
    btn_vendas: TSpeedButton;
    btn_relatorios: TSpeedButton;
    btn_menu: TSpeedButton;
    procedure btn_clientesMouseEnter(Sender: TObject);
    procedure btn_clientesMouseLeave(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_clientesClick(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
    procedure btn_pedidoClick(Sender: TObject);
    procedure btn_inventariosClick(Sender: TObject);
    procedure btn_menuClick(Sender: TObject);
    procedure btn_configuracoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;

  vMenu : Boolean;

implementation

{$R *.dfm}

uses ufrmClientes, udmPrincipal, ufrmProdutos, ufrmPedido, ufrmMovimentacao,
  ufrmInventarios, ufrmConfiguracoes;

procedure TfrmPrincipal.btn_clientesClick(Sender: TObject);
begin
  frmClientes        := TfrmClientes.Create( frmPrincipal );
  frmClientes.Parent := pnl_principal.Parent;
  TelaAberta         := frmClientes.Caption;
  frmClientes.Show;
end;

procedure TfrmPrincipal.btn_clientesMouseEnter(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               True, 'MENU' );
end;

procedure TfrmPrincipal.btn_clientesMouseLeave(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               false, 'MENU' );
end;

procedure TfrmPrincipal.btn_configuracoesClick(Sender: TObject);
begin
  if TelaAberta = frmConfiguracoes.Caption then
    Begin
      ShowMessage('Tela j? em processamento');
      exit;
    End;

  Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  frmConfiguracoes.Parent := pnl_principal.Parent;
  frmConfiguracoes.Show;

  TelaAberta       := frmConfiguracoes.Caption;
end;

procedure TfrmPrincipal.btn_inventariosClick(Sender: TObject);
begin
  frmInventarios          := TfrmInventarios.Create( frmPrincipal );
  frmInventarios.Parent   := pnl_principal.Parent;
  TelaAberta              := frmInventarios.Caption;
  frmInventarios.Show;
end;

procedure TfrmPrincipal.btn_menuClick(Sender: TObject);
begin
  if vMenu then
    Begin
      pnl_menu_sub.Width := 60;
      pnl_menu.Width := 60;
    End
  else
    Begin
      pnl_menu_sub.Width :=  180;
      pnl_menu.Width :=  180;
    End;

  vMenu := not vMenu;

end;

procedure TfrmPrincipal.btn_fecharClick(Sender: TObject);
begin
  if messagedlg('Deseja mesmo sair?', mtconfirmation,[mbyes,mbno],0)= mryes then
    if TelaAberta <> '' then
      ShowMessage('Tela de '+TelaAberta+' em processamento!')
    else
      Application.Terminate;
end;

procedure TfrmPrincipal.btn_pedidoClick(Sender: TObject);
begin
  frmMovimentacao         := TfrmMovimentacao.Create( frmPrincipal );
  frmMovimentacao.Parent  := pnl_principal.Parent;
  TelaAberta              := frmMovimentacao.Caption;
  frmMovimentacao.Show;
end;

procedure TfrmPrincipal.btn_produtosClick(Sender: TObject);
begin
  frmProdutos        := TfrmProdutos.Create( frmPrincipal );
  frmProdutos.Parent := pnl_principal.Parent;
  TelaAberta         := frmProdutos.Caption;
  frmProdutos.Show;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  if not FileExists(ChangeFileExt( Application.Exename, '.ini')) then
    Begin
      btn_configuracoesClick(Self);
    End
  else
    Begin
      if not AbreBD then
        Begin
          ShowMessage('Erro ao abrir Banco de Dados');
          btn_configuracoesClick(Self);
          Exit;
        End;
    End;
end;

end.
