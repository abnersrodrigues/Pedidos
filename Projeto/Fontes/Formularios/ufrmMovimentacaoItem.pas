unit ufrmMovimentacaoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmItens = class(TForm)
    pnl_centro: TPanel;
    pnl_topo: TPanel;
    pnl_fechar: TPanel;
    btn_fechar: TSpeedButton;
    pnl_Titulo: TPanel;
    lbl_titulo_1: TLabel;
    lbl_titulo_2: TLabel;
    pnl_barra_menu: TPanel;
    DBGrid1: TDBGrid;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItens: TfrmItens;

implementation

{$R *.dfm}

uses udmPrincipal, ufrmMovimentacao;

procedure TfrmItens.btn_fecharClick(Sender: TObject);
begin
  dmPrincipal.qry_pedidos.Refresh;
  Self.Close;
end;

procedure TfrmItens.FormShow(Sender: TObject);
begin
  frmItens.top := round( (frmMovimentacao.pnl_centro.Height div 2) - (frmItens.height div 2) );
  frmItens.left := round( (frmMovimentacao.pnl_centro.Width div 2) - (frmItens.width div 2) );

  lbl_titulo_1.Caption := self.Caption; //Nome Formulario
  lbl_titulo_2.Caption := 'Pedido - '+ inttostr(dmPrincipal.qry_pedidoscodigo.Value); // Cadastro ou Movimentação (Lançamento)

end;

end.
