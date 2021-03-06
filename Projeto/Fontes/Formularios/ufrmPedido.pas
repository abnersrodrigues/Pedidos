unit ufrmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, uFuncoes, uPedido, uProdutos,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus;

type
  TfrmPedido = class(TForm)
    pnl_centro: TPanel;
    grp_lancamentos: TGroupBox;
    pnl_lanc: TPanel;
    edt_produto: TEdit;
    pnl_topo: TPanel;
    pnl_fechar: TPanel;
    btn_fechar: TSpeedButton;
    pnl_Titulo: TPanel;
    lbl_titulo_1: TLabel;
    lbl_titulo_2: TLabel;
    pnl_barra_menu: TPanel;
    edt_qtde: TEdit;
    Panel3: TPanel;
    img_menos: TImage;
    img_mais: TImage;
    GroupBox5: TGroupBox;
    lbl_pedido: TLabel;
    img_busca_produto: TImage;
    Panel6: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    grp_produtos: TGroupBox;
    cmb_clientes: TComboBox;
    Panel10: TPanel;
    btn_salvar: TSpeedButton;
    Panel11: TPanel;
    btn_cancelar: TSpeedButton;
    pnl_barra_botao: TPanel;
    Panel1: TPanel;
    Panel8: TPanel;
    Panel13: TPanel;
    SpeedButton1: TSpeedButton;
    Panel14: TPanel;
    btn_novo: TSpeedButton;
    grd_painel: TDBGrid;
    qry_temp: TFDMemTable;
    ds_temp: TDataSource;
    qry_tempProduto: TIntegerField;
    qry_tempQtde: TFloatField;
    qry_tempVUnit: TFloatField;
    qry_tempInd_Cancelamento: TStringField;
    qry_tempnome_produto: TStringField;
    PopupMenu1: TPopupMenu;
    btn_cancel_item: TMenuItem;
    qry_tempcodigo: TIntegerField;
    qry_tempcodigo_pedido: TIntegerField;
    pnl_status_bar: TPanel;
    pnl_vtotal: TPanel;
    lbl_vtotal: TLabel;
    pnl_itens: TPanel;
    lbl_itens: TLabel;
    vlr_total: TFloatField;
    pnl_barra_botoes: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_fecharClick(Sender: TObject);
    procedure img_maisClick(Sender: TObject);
    procedure img_menosClick(Sender: TObject);
    procedure edt_qtdeExit(Sender: TObject);
    procedure btn_novo_produtoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_novoMouseEnter(Sender: TObject);
    procedure btn_novoMouseLeave(Sender: TObject);
    procedure edt_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_novoClick(Sender: TObject);
    procedure edt_qtdeKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_cancel_itemClick(Sender: TObject);
    procedure qry_tempCalcFields(DataSet: TDataSet);
    procedure grd_painelKeyPress(Sender: TObject; var Key: Char);
    procedure grd_painelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure img_busca_produtoClick(Sender: TObject);

  private
    function VerificaAcao(sAcao: String): Boolean;
    function AtualizaStatusBar: Boolean;

    { Private declarations }
  public
    { Public declarations }

    uPedido : TPedido;
    uProdutos: TProdutos;

  end;

var
  frmPedido: TfrmPedido;

implementation

{$R *.dfm}

uses udmPrincipal, ufrmMovimentacao;

procedure TfrmPedido.btn_cancel_itemClick(Sender: TObject);
begin
  if messagedlg('Deseja mesmo excluir?', mtconfirmation,[mbyes,mbno],0)= mryes then
    begin
      qry_temp.delete;
    end
  else
     abort;
end;

procedure TfrmPedido.btn_fecharClick(Sender: TObject);
begin
  TelaAberta := '';
  qry_temp.Close;

  dmPrincipal.qry_pedidos.Refresh;
  dmPrincipal.qry_pedidos.First;

  Self.Close;
end;

procedure TfrmPedido.btn_novoMouseEnter(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               True, 'MENU' );
end;

procedure TfrmPedido.btn_novoMouseLeave(Sender: TObject);
begin
  focar_botao( Self, pnl_barra_botao, ( TComponent ( Sender ) as TspeedButton ),
               FALSE, 'MENU' );
end;

procedure TfrmPedido.btn_novo_produtoClick(Sender: TObject);
begin
  VerificaAcao(TspeedButton(sender).Caption);
  pnl_lanc.Enabled := true;
  grd_painel.Visible := true;
end;

procedure TfrmPedido.edt_produtoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Begin
      if edt_produto.Text = '' then
        Begin
          ShowMessage('Sem produto para busca');
          Exit;
        End;

      if not uProdutos.BuscaProduto(strtoint(edt_produto.Text)) then
        Begin
          ShowMessage('Erro: produto n?o encontrado');
          edt_produto.Text := '';
          edt_produto.SetFocus;
          Exit;
        End
      else
        Begin
          if (uProdutos.estoque-strtofloat(edt_qtde.Text)) < 0 then
            ShowMessage('Isso te deixar? com estoque negativo em :'+FloattoStr(uProdutos.estoque-strtofloat(edt_qtde.Text)));




          qry_temp.Insert;

          qry_tempnome_produto.Value      := uProdutos.descricao;
          qry_tempQtde.Value              := strtofloat(edt_qtde.Text);
          qry_tempProduto.Value           := uProdutos.codigo;
          qry_tempVUnit.Value             := uProdutos.valor;
          qry_tempInd_Cancelamento.Value  := 'N';
          qry_temp.Post;

          edt_produto.Text := '';
          edt_qtde.text := FormatFloat('00', 1.00);
          edt_produto.SetFocus;

          if grd_painel.Visible = false then grd_painel.Visible := true;

          AtualizaStatusBar;

        End;
    End;
end;

function TfrmPedido.AtualizaStatusBar:Boolean;
Begin
  qry_temp.Refresh;
  lbl_itens.Caption := 'Qtde Itens Pedido: '+ IntToStr(qry_temp.RecordCount);
  lbl_vtotal.Caption:= 'Valor Total: R$ '+ FormatFloat('0.00', qry_temp.Aggregates[0].Value);
End;


procedure TfrmPedido.edt_qtdeExit(Sender: TObject);
begin
  if edt_qtde.text <> '' then
    edt_qtde.text := FormatFloat('00', strtofloat(edt_qtde.Text));
end;

procedure TfrmPedido.edt_qtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edt_produto.SetFocus;
end;

procedure TfrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TelaAberta := '';

  uPedido.free;
  uProdutos.free;

  Action := caFree;
end;

procedure TfrmPedido.FormCreate(Sender: TObject);
begin
  uPedido := TPedido.Create;
  uProdutos:= TProdutos.Create;
end;

procedure TfrmPedido.FormShow(Sender: TObject);
begin
  TelaAberta := Self.Caption;
  lbl_titulo_1.Caption := self.Caption; //Nome Formulario
  lbl_titulo_2.Caption := 'Lan?amento'; // Cadastro ou Movimenta??o (Lan?amento)

  if not uPedido.LancaClientes(cmb_clientes) then
    Begin
      ShowMessage('Erro ao popular Clientes. Verifique!');
      Exit;
    End;
end;

procedure TfrmPedido.grd_painelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
    btn_cancel_itemClick(Self);
end;

procedure TfrmPedido.grd_painelKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then AtualizaStatusBar;

end;

procedure TfrmPedido.img_busca_produtoClick(Sender: TObject);
begin
  ShowMessage('Em constru??o: Tela de busca produto');
end;

procedure TfrmPedido.img_maisClick(Sender: TObject);
Var N : integer;
begin
  try
    n := strtoint(edt_qtde.text);

    n := n + 1;

    if n < 1 then
      Begin
        edt_qtde.text := '01';
        exit;
      End;


    edt_qtde.text := FormatFloat('00', n);

  except
    edt_qtde.text := '01';
  end;
end;

procedure TfrmPedido.img_menosClick(Sender: TObject);
Var N : integer;
begin
  try
    n := strtoint(edt_qtde.text);

    n := n - 1;

    if n < 1 then
      Begin
        edt_qtde.text := '01';
        exit;
      End;


    edt_qtde.text := FormatFloat('00', n);

  except
    edt_qtde.text := '01';
  end;

end;

procedure TfrmPedido.qry_tempCalcFields(DataSet: TDataSet);
begin
  With DataSet do
  begin
    FieldByName('vlr_total').AsFloat := FieldByName('Qtde').AsFloat * FieldByName('VUnit').AsFloat;
  end;
end;

procedure TfrmPedido.SpeedButton1Click(Sender: TObject);
begin
  Close;

  dmPrincipal.qry_pedidos.Refresh;
  dmPrincipal.qry_pedidos.First;

  dmPrincipal.qry_pedidos_itens.Refresh;
  dmPrincipal.qry_pedidos_itens.First;
end;

procedure TfrmPedido.btn_novoClick(Sender: TObject);
begin
  qry_temp.Close;
  qry_temp.CreateDataSet;

  btn_cancelarClick(Self);
end;

procedure TfrmPedido.btn_salvarClick(Sender: TObject);
begin
  if qry_temp.RecordCount = 0 then
    Begin
      ShowMessage('Necess?rio Lan?ar um Item');
      Exit;
    End;

  if cmb_clientes.Text = 'CONSUMIDOR FINAL' then
    if messagedlg('Cliente CONSUMIDOR FINAL: Deseja mesmo prosseguir?', mtconfirmation,[mbyes,mbno],0)= mrNo then
      exit;

  Begin
    uPedido.nome_cliente := cmb_clientes.Text;
    uPedido.vtotal       := qry_temp.Aggregates[0].Value;
    uPedido.qtde_itens   := qry_temp.RecordCount;

    if not uPedido.AddPedido then
      Begin
        ShowMessage('Erro ao incluir Pedido. Verifique!');
        Exit;
      End
    else
      Begin
        lbl_pedido.Caption := inttostr(uPedido.codigo_pedido);

        qry_temp.First;
        while not qry_temp.Eof do
          Begin
            uPedido.codigo_pedido  := strtoint(lbl_pedido.Caption);
            uPedido.qtde           := qry_tempQtde.Value;
            uPedido.codigo_produto := qry_tempProduto.Value;
            uPedido.vunit          := qry_tempVUnit.Value;
            uPedido.vtotal         := qry_temp.FieldByName('vlr_total').Value;
            uPedido.xstatus        := qry_tempInd_Cancelamento.Value;

            if not uPedido.AddItem then
              Begin
                ShowMessage('Erro ao incluir Item: '+ qry_tempnome_produto.Value+#13+'Verifique!');
              End;

            qry_temp.Next;
          End;
      End;
    ShowMessage('Lan?ado com Sucesso');

    grp_lancamentos.Enabled := false;
    uPedido.AtualizarPedido(strtoint(lbl_pedido.Caption));
    btn_salvar.Enabled := false;
  End;
end;

procedure TfrmPedido.btn_cancelarClick(Sender: TObject);
begin
  lbl_pedido.Caption := 'Aguardando Lan?amento';
  cmb_clientes.ItemIndex := 0;

  lbl_itens.Caption := 'Qtde Itens Pedido: 00';
  lbl_vtotal.Caption:= 'Valor Total: R$ 0,00';


  if grd_painel.Visible = true then grd_painel.Visible := false;
  grp_lancamentos.Enabled := true;

  VerificaAcao('CANCELAR');
end;

function TfrmPedido.VerificaAcao(sAcao:String): Boolean;
Begin
  if sAcao = 'NOVO PEDIDO' then
    Begin
      Acao                            := 'NOVO';
      Self.btn_novo.enabled     := false;
      Self.btn_salvar.enabled   := true;
    end
  else
  if sAcao = 'SALVAR' then
    Begin
      Acao                            := '';
      Self.btn_novo.enabled     := true;
      Self.btn_salvar.enabled   := false;
    end
  else
  if sAcao = 'CANCELAR' then
    Begin
      Acao                            := '';
      Self.btn_novo.enabled     := true;
      Self.btn_salvar.enabled   := true;
    end;
End;


end.
