unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uFuncoes;

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
    pnl_conexao: TPanel;
    btn_clientes: TSpeedButton;
    pnl_verifica: TPanel;
    btn_produtos: TSpeedButton;
    Panel1: TPanel;
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
    procedure btn_clientesMouseEnter(Sender: TObject);
    procedure btn_clientesMouseLeave(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_clientesClick(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
    procedure btn_pedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;



implementation

{$R *.dfm}

uses ufrmClientes, udmPrincipal, ufrmProdutos, ufrmPedido, ufrmMovimentacao;

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

procedure TfrmPrincipal.btn_fecharClick(Sender: TObject);
begin
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
  lbl_computador.Caption  := 'COMPUTADOR: '+ GetComputerNameFunc;
  lbl_data.Caption        := 'Data: '+ DateToStr(date);


  if not AbreBD then
    Begin
      ShowMessage('Erro ao abrir Banco de Dados');
      Exit;
    End;
end;

end.