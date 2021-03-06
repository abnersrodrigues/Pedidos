unit ufrmMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, uPedido, uFuncoes,
  Vcl.Menus;

type
  TfrmMovimentacao = class(TForm)
    pnl_centro: TPanel;
    grd_painel: TDBGrid;
    Panel2: TPanel;
    grp_busca: TGroupBox;
    Panel4: TPanel;
    edt_busca: TEdit;
    pnl_botoes: TPanel;
    pnl_menu_top: TPanel;
    pnl_alterar: TPanel;
    pnl_novo: TPanel;
    btn_novo: TSpeedButton;
    Panel1: TPanel;
    pnl_salvar: TPanel;
    pnl_deletar: TPanel;
    pnl_barra_botao: TPanel;
    pnl_topo: TPanel;
    pnl_fechar: TPanel;
    btn_fechar: TSpeedButton;
    pnl_Titulo: TPanel;
    lbl_titulo_1: TLabel;
    lbl_titulo_2: TLabel;
    pnl_barra_menu: TPanel;
    btn_deletar: TSpeedButton;
    btn_alterar: TSpeedButton;
    pnl_barra_botoes: TPanel;
    PopupMenu1: TPopupMenu;
    btn_fechar_pedido: TMenuItem;
    btn_abrir_pedido: TMenuItem;
    btn_cancelar_pedido: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoMouseEnter(Sender: TObject);
    procedure btn_novoMouseLeave(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure grd_painelDblClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure grd_painelDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_fechar_pedidoClick(Sender: TObject);
    procedure btn_abrir_pedidoClick(Sender: TObject);
    procedure btn_cancelar_pedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    uPedido : TPedido;
  end;

var
  frmMovimentacao: TfrmMovimentacao;

implementation

{$R *.dfm}

uses ufrmPedido, udmPrincipal, ufrmPrincipal, ufrmMovimentacaoItem;

procedure TfrmMovimentacao.btn_abrir_pedidoClick(Sender: TObject);
begin
  if not uPedido.AtualizarStatus(dmPrincipal.qry_pedidoscodigo.Value, 'A') then
    Begin
      ShowMessage('Erro ao fechar Pedido');
      exit;
    End
  else
    dmPrincipal.qry_pedidos.Refresh;
end;

procedure TfrmMovimentacao.btn_alterarClick(Sender: TObject);
begin
  if dmPrincipal.qry_pedidosxstatus.AsString = 'C' then
    Begin
      ShowMessage('N?o permitido edi??o para pedido cancelado');
      Exit;
    end;
  if dmPrincipal.qry_pedidosxstatus.AsString = 'F' then
    Begin
      ShowMessage('N?o permitido edi??o para pedido j? fechado');
      Exit;
    end;

  frmItens           := TfrmItens.Create( frmMovimentacao );
  frmItens.Parent    := frmMovimentacao.pnl_centro.Parent;
  frmItens.Show;
end;

procedure TfrmMovimentacao.btn_cancelar_pedidoClick(Sender: TObject);
begin
  if messagedlg('Deseja mesmo excluir?', mtconfirmation,[mbyes,mbno],0)= mryes then
    begin
      if not uPedido.AtualizarStatus(dmPrincipal.qry_pedidoscodigo.Value, 'C') then
        Begin
          ShowMessage('Erro ao fechar Pedido');
          exit;
        End
      else
        Begin
          dmPrincipal.qry_pedidos.Refresh;
        End;
    end
  else
     abort;
end;

procedure TfrmMovimentacao.btn_deletarClick(Sender: TObject);
begin
  if messagedlg('Deseja mesmo excluir?', mtconfirmation,[mbyes,mbno],0)= mryes then
    begin
      if not uPedido.DelPedido(dmPrincipal.qry_pedidoscodigo.Value) then
        Begin
          ShowMessage('Erro ao deletar Pedido. Verifique!');
          exit;
        End
      else
        dmPrincipal.qry_pedidos.Refresh;
    end
  else
     abort;
end;

procedure TfrmMovimentacao.btn_fecharClick(Sender: TObject);
begin
  TelaAberta := '';
  Close;
end;

procedure TfrmMovimentacao.btn_fechar_pedidoClick(Sender: TObject);
begin
  if not uPedido.AtualizarStatus(dmPrincipal.qry_pedidoscodigo.Value, 'F') then
    Begin
      ShowMessage('Erro ao fechar Pedido');
      exit;
    End
  else
    dmPrincipal.qry_pedidos.Refresh;
end;

procedure TfrmMovimentacao.btn_novoClick(Sender: TObject);
begin
  frmPedido           := TfrmPedido.Create( frmPrincipal );
  frmPedido.Parent := frmPrincipal.pnl_principal.Parent;
  frmPedido.Show;

  frmPedido.qry_temp.CreateDataSet;
end;

procedure TfrmMovimentacao.btn_novoMouseEnter(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               True, 'MENU' );
end;

procedure TfrmMovimentacao.btn_novoMouseLeave(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               false, 'MENU' );
end;

procedure TfrmMovimentacao.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
  dmPrincipal.qry_pedidos_itens.Close;
  with dmPrincipal.qry_pedidos do
    Begin
      Close;
      Params.ParamByName('cli.Nome').AsString := '%' + edt_busca.Text + '%';
      Open;
    End;
  dmPrincipal.qry_pedidos_itens.Open;
end;

procedure TfrmMovimentacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  uPedido := TPedido.Create;

  Action := caFree;
end;

procedure TfrmMovimentacao.FormCreate(Sender: TObject);
begin
  try
    dmPrincipal.qry_pedidos_itens.Close;
    with dmPrincipal.qry_pedidos do
      Begin
        Close;
        Params.ParamByName('cli.Nome').AsString := '%' + edt_busca.Text + '%';
        Open;
      End;
    dmPrincipal.qry_pedidos_itens.Open;
  Except
    ShowMessage('Erro ao popular estados');
  end;
end;

procedure TfrmMovimentacao.FormShow(Sender: TObject);
begin
  TelaAberta := Self.Caption;
  lbl_titulo_1.Caption := self.Caption; //Nome Formulario
  lbl_titulo_2.Caption := 'Pedidos'; // Cadastro ou Movimenta??o (Lan?amento)
end;

procedure TfrmMovimentacao.grd_painelDblClick(Sender: TObject);
begin
  btn_alterarClick(Self);
end;

procedure TfrmMovimentacao.grd_painelDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if grd_painel.Fields[5].value = 'A' then
    Begin
      if DataCol = 5 then
        Begin
          TDBGrid(Sender).Canvas.Brush.Color  := $00FFCA95;
          TDBGrid(Sender).Canvas.Font.Color   := $00462300;
          TDBGrid(Sender).Canvas.Font.Style   := [fsBold];
        End;
    end
  else
  if grd_painel.Fields[5].value = 'F' then
    Begin
      if DataCol = 5 then
        Begin
          TDBGrid(Sender).Canvas.Brush.Color  := $00D1D1D1;
          TDBGrid(Sender).Canvas.Font.Color   := $00373737;
          TDBGrid(Sender).Canvas.Font.Style   := [];
        End;
    end
  else
  if grd_painel.Fields[5].value = 'C' then
    Begin
      if DataCol = 5 then
        Begin
          TDBGrid(Sender).Canvas.Brush.Color  := $00A8A8FF;
          TDBGrid(Sender).Canvas.Font.Color   := $00000046;
          TDBGrid(Sender).Canvas.Font.Style   := [];
        End;
    end;

  grd_painel.Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
