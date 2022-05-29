object frmConfiguracoes: TfrmConfiguracoes
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Right = 10
  Margins.Bottom = 10
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Configura'#231#245'es'
  ClientHeight = 458
  ClientWidth = 595
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
  object pnl_principal: TPanel
    Left = 0
    Top = 48
    Width = 595
    Height = 410
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnl_menu: TPanel
      Left = 0
      Top = 0
      Width = 595
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnl_menu_top: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 595
        Height = 50
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object pnl_salvar: TPanel
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
          object btn_salvar: TSpeedButton
            Tag = 3
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
            Caption = 'SALVAR'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_salvarClick
            ExplicitTop = -1
          end
        end
        object pnl_atualizar: TPanel
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
          object btn_atualizar: TSpeedButton
            Tag = 3
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
            Caption = 'ATUALIZAR'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btn_atualizarClick
            ExplicitTop = -1
          end
        end
      end
    end
    object pnl_controle: TPanel
      Left = 0
      Top = 57
      Width = 595
      Height = 353
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnl_dados: TPanel
        AlignWithMargins = True
        Left = 30
        Top = 0
        Width = 535
        Height = 353
        Margins.Left = 30
        Margins.Top = 0
        Margins.Right = 30
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object grp_servidor: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 529
          Height = 46
          Align = alTop
          Caption = 'Servidor'
          TabOrder = 0
          object edt_hostname: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 20
            Width = 505
            Height = 21
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alClient
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object grp_dll: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 263
          Width = 529
          Height = 46
          Align = alTop
          Caption = 'Dll'
          TabOrder = 5
          object img_dll: TImage
            AlignWithMargins = True
            Left = 492
            Top = 15
            Width = 25
            Height = 24
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alRight
            Center = True
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF40000000473424954080808087C0864880000000970
              485973000000EE000000EE0106D6B2340000001974455874536F667477617265
              007777772E696E6B73636170652E6F72679BEE3C1A000003524944415478DABD
              977B684F511CC0CFDD4C4A9E212CFE608ADA90E59DC76C7FF863258F22224D88
              B6B0E419936889F9431492258C5223AC491E4B4AC61E1EE5510A8DA56626CF44
              3F9F6FE7FC747677EFFDDD3B6DA73E9DBB73BEE77B3EF7DCDF3DF7CC89C562CA
              AF388E93443512322D46C33BA8313C843AF27C53ED288E9F0093A7539D827121
              F27C8642729DFC6F01264EA6DA0C45D03562BE6BB0929C0DED1260F2E154E760
              7CF4C56CB51A6BC95B164980C9FB5055439A47DC77A8875A780283957E3499E6
              DA5D7EC34472D78612607287EBEB90E311731AD611F78930914B8537FCFDDA88
              AFA03A083D5DE39E8A2071BFC2082CE0FA82ABAF09F2E8BF62261A6B56C031FD
              3BE8DB63FA861AD1E9AE1CC5C46C0B148024633BCAD53787C197FF05B61590BE
              793059E957B19BC9936AE5F8631E454D9040063C76B5973168499B60FD08E42E
              FB29FD635D0F85466012CC86ABAE61FBC9B529486039945A6D3F6008833EAA04
              05A1BD54F125DEC89812DACAB99E6B85DDA23D3B48E01014586DF7183025D1E4
              4640DE9CE73040E93765202C83C356580BF48DF9EC78227017A65A6D4788CD0F
              2360240ACC4D4899013FE1BE2B2C8D9CAFFC0464E3B05FA1D5041F8F20209B56
              B5F973031C35ABE15861F3C959EE27F04CE90F4EBCEC26B82882400AD55BB3FC
              6B94DE4FDC779B45CE2A3F81B3B0D86AAB203837AC8091184125AFE925A55FCD
              F3AE905472BEF71390D7A8C46AFB00836241DFE960991293335EBE92AA876F3C
              CC84DBAEF67C061D69C7E4B209C966D4DB6AAE2257569080D8354277DB1A32E2
              FB7D04814AA53723BBE492A7C2778CF916C89EBEDDD57747E9EDB825E4E45BA8
              8A5DCD72520A3CD0C4057A71FD52E90DC52EF2C3591578077AD94F78DCB994A5
              8C3D9350C0249A467513523CE22E9ABE074A7F37E40C20EFFF04C853AD9FB95D
              E4EC308B399A120A180949760CBA0448CB0047852F229CED27E1752694672687
              D1F40893849198E5F581F33C15232187D15D209FD1E49093C859414E4672A0CD
              F0E87F6456A2958493E0FF0239F32D54FAEC272BE37ED65F94FE5D1C204FA519
              D35FE9DF4B280927EC8667CE8DC3600C34C30BC636FAC40649D41B89E6480251
              4B02893AC811890E13082991DDA1022124F675B8400289864E11089028ED3401
              2321C7F9ADB0086EC0CEBF483D691864C9F9D10000000049454E44AE426082}
            Stretch = True
            OnClick = img_dllClick
            ExplicitLeft = 107
            ExplicitTop = 5
            ExplicitHeight = 26
          end
          object edt_dll: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 20
            Width = 460
            Height = 21
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alClient
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object grp_base: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 529
          Height = 46
          Align = alTop
          Caption = 'Base'
          TabOrder = 1
          object edt_base: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 20
            Width = 505
            Height = 21
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alClient
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object grp_senha: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 211
          Width = 529
          Height = 46
          Align = alTop
          Caption = 'Senha'
          TabOrder = 4
          object edt_senha: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 20
            Width = 505
            Height = 21
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alClient
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 0
          end
        end
        object grp_usuario: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 529
          Height = 46
          Align = alTop
          Caption = 'Usu'#225'rio'
          TabOrder = 3
          object edt_usuario: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 20
            Width = 505
            Height = 21
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alClient
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
        end
        object grp_porta: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 107
          Width = 529
          Height = 46
          Align = alTop
          Caption = 'Porta'
          TabOrder = 2
          object edt_porta: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 20
            Width = 505
            Height = 21
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Align = alClient
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnl_fechar: TPanel
      AlignWithMargins = True
      Left = 535
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
      Width = 517
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
        Width = 142
        Height = 35
        Align = alLeft
        Caption = 'CONFIGURA'#199#213'ES'
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
        Left = 158
        Top = 3
        Width = 114
        Height = 35
        Margins.Left = 10
        Align = alLeft
        Caption = '| BANCO DE DADOS'
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
      Width = 575
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
  object OpenDialog: TOpenDialog
    Left = 522
    Top = 47
  end
end
