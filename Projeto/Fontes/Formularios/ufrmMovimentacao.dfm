object frmMovimentacao: TfrmMovimentacao
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Right = 10
  Margins.Bottom = 10
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Movimenta'#231#227'o'
  ClientHeight = 553
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_centro: TPanel
    Left = 0
    Top = 48
    Width = 747
    Height = 505
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 677
    object pnl_botoes: TPanel
      Left = 0
      Top = 0
      Width = 747
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnl_menu_top: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 727
        Height = 50
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object pnl_alterar: TPanel
          AlignWithMargins = True
          Left = 149
          Top = 0
          Width = 100
          Height = 50
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object btn_alterar: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 100
            Height = 50
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'ALTERAR'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_alterarClick
            OnMouseEnter = btn_novoMouseEnter
            OnMouseLeave = btn_novoMouseLeave
            ExplicitLeft = -72
            ExplicitTop = 2
            ExplicitHeight = 44
          end
        end
        object pnl_novo: TPanel
          AlignWithMargins = True
          Left = 22
          Top = 0
          Width = 100
          Height = 50
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object btn_novo: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 100
            Height = 50
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'NOVO'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_novoClick
            OnMouseEnter = btn_novoMouseEnter
            OnMouseLeave = btn_novoMouseLeave
            ExplicitLeft = -72
            ExplicitTop = 2
            ExplicitHeight = 44
          end
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 530
          Top = 0
          Width = 100
          Height = 50
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
        end
        object pnl_salvar: TPanel
          AlignWithMargins = True
          Left = 403
          Top = 0
          Width = 100
          Height = 50
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
        end
        object pnl_deletar: TPanel
          AlignWithMargins = True
          Left = 276
          Top = 0
          Width = 100
          Height = 50
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object btn_deletar: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 100
            Height = 50
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'DELETAR'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_deletarClick
            OnMouseEnter = btn_novoMouseEnter
            OnMouseLeave = btn_novoMouseLeave
            ExplicitLeft = -72
            ExplicitTop = 2
            ExplicitHeight = 44
          end
        end
      end
      object pnl_barra_botao: TPanel
        Left = 56
        Top = 47
        Width = 89
        Height = 1
        Color = 18432
        ParentBackground = False
        TabOrder = 1
        Visible = False
      end
      object pnl_barra_botoes: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 56
        Width = 727
        Height = 1
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alBottom
        BevelOuter = bvNone
        Color = 14408667
        ParentBackground = False
        TabOrder = 2
      end
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 0
      Top = 57
      Width = 747
      Height = 65
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object grp_busca: TGroupBox
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 737
        Height = 59
        Margins.Left = 5
        Margins.Right = 5
        Align = alClient
        Caption = 'Busca por Nome'
        TabOrder = 0
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 12
          Top = 15
          Width = 723
          Height = 42
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object edt_busca: TEdit
            AlignWithMargins = True
            Left = 10
            Top = 5
            Width = 703
            Height = 27
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnKeyPress = edt_buscaKeyPress
          end
        end
      end
    end
    object grd_painel: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 132
      Width = 737
      Height = 363
      Margins.Left = 5
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alClient
      DataSource = dmPrincipal.ds_pedidos
      PopupMenu = PopupMenu1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grd_painelDrawColumnCell
      OnDblClick = grd_painelDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          ReadOnly = True
          Title.Caption = 'C'#243'digo Pedido'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_cliente'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nome_cliente'
          Title.Caption = 'Nome Cliente'
          Width = 250
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'qtde_itens'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Itens'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'vtotal'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'xstatus'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Width = 50
          Visible = True
        end>
    end
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnl_fechar: TPanel
      AlignWithMargins = True
      Left = 687
      Top = 5
      Width = 50
      Height = 37
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object btn_fechar: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 50
        Height = 37
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000E6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DE1C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C
          1BE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6
          E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBA
          B6B4BAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1B1C1C1BBAB6B4E6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C
          1C1B1C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4BAB6B41C1C1BBAB6B4E6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6B4E6
          E1DEE6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEBAB6B41C1C1BBAB6B4E6E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BBAB6
          B4E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE1C1C1BBAB6B4E6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEBAB6B41C1C1BE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE
          E6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1
          DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6
          E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DEE6E1DE}
        OnClick = btn_fecharClick
        ExplicitLeft = 1012
        ExplicitTop = 5
        ExplicitWidth = 48
        ExplicitHeight = 38
      end
    end
    object pnl_Titulo: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 669
      Height = 41
      Margins.Left = 10
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object lbl_titulo_1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 62
        Height = 35
        Align = alLeft
        Caption = 'TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4596480
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 19
      end
      object lbl_titulo_2: TLabel
        AlignWithMargins = True
        Left = 78
        Top = 3
        Width = 61
        Height = 35
        Margins.Left = 10
        Align = alLeft
        Caption = '| Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4596480
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 16
      end
    end
    object pnl_barra_menu: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 47
      Width = 727
      Height = 1
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 14408667
      ParentBackground = False
      TabOrder = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 528
    Top = 384
    object btn_abrir_pedido: TMenuItem
      Caption = 'ABRIR'
      OnClick = btn_abrir_pedidoClick
    end
    object btn_cancelar_pedido: TMenuItem
      Caption = 'CANCELAR'
      OnClick = btn_cancelar_pedidoClick
    end
    object btn_fechar_pedido: TMenuItem
      Caption = 'FECHAR'
      OnClick = btn_fechar_pedidoClick
    end
  end
end
