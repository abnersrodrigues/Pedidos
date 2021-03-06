object frmHeranca: TfrmHeranca
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Right = 10
  Margins.Bottom = 10
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'HERANCA'
  ClientHeight = 658
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object pnl_centro: TPanel
    Left = 0
    Top = 48
    Width = 738
    Height = 610
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pgcPrincipal: TPageControl
      AlignWithMargins = True
      Left = 10
      Top = 62
      Width = 718
      Height = 538
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 10
      ActivePage = tab_painel
      Align = alClient
      Style = tsButtons
      TabOrder = 0
      object tab_painel: TTabSheet
        Caption = 'Painel'
        object grd_painel: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 75
          Width = 700
          Height = 425
          Margins.Left = 5
          Margins.Top = 10
          Margins.Right = 5
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI Semibold'
          TitleFont.Style = [fsBold]
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 710
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
            Width = 700
            Height = 59
            Margins.Left = 5
            Margins.Right = 5
            Align = alClient
            Caption = 'Busca por Nome'
            TabOrder = 0
            object Panel4: TPanel
              AlignWithMargins = True
              Left = 12
              Top = 19
              Width = 686
              Height = 38
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
                Width = 666
                Height = 23
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
                Text = '%'
              end
            end
          end
        end
      end
      object tab_dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 1
        object grp_codigo: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 3
          Width = 600
          Height = 54
          Margins.Left = 10
          Margins.Right = 100
          Align = alTop
          Caption = 'C'#243'digo'
          TabOrder = 0
        end
      end
    end
    object pnl_botoes: TPanel
      Left = 0
      Top = 0
      Width = 738
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnl_menu_top: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 0
        Width = 718
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
          Height = 49
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
            Height = 49
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
          Height = 49
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
            Height = 49
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
          Height = 49
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
          Height = 49
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          object btn_salvar: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 100
            Height = 49
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'SALVAR'
            Enabled = False
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_salvarClick
            OnMouseEnter = btn_novoMouseEnter
            OnMouseLeave = btn_novoMouseLeave
            ExplicitLeft = -72
            ExplicitTop = 2
            ExplicitHeight = 44
          end
        end
        object pnl_cancelar: TPanel
          AlignWithMargins = True
          Left = 276
          Top = 0
          Width = 100
          Height = 49
          Margins.Left = 22
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          object btn_cancelar: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 100
            Height = 49
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alClient
            Caption = 'CANCELAR'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_cancelarClick
            OnMouseEnter = btn_novoMouseEnter
            OnMouseLeave = btn_novoMouseLeave
            ExplicitLeft = -72
            ExplicitTop = 2
            ExplicitHeight = 44
          end
        end
        object pnl_barra_botoes: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 49
          Width = 718
          Height = 1
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alBottom
          BevelOuter = bvNone
          Color = 14408667
          ParentBackground = False
          TabOrder = 5
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
    end
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnl_fechar: TPanel
      AlignWithMargins = True
      Left = 678
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
      Width = 660
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
      Width = 718
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
end
