inherited frmInventarios: TfrmInventarios
  Caption = 'Entradas Estoque'
  ClientWidth = 912
  ExplicitWidth = 912
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnl_centro: TPanel
    Width = 912
    ExplicitWidth = 912
    inherited pgcPrincipal: TPageControl
      Width = 892
      ActivePage = tab_dados
      ExplicitWidth = 892
      inherited tab_painel: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 884
        ExplicitHeight = 503
        inherited grd_painel: TDBGrid
          Width = 874
          DataSource = dmPrincipal.ds_estoque
          OnDblClick = grd_painelDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Codigo_Produto'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DescricaoProduto'
              Title.Caption = 'Descri'#231#227'o Produto'
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Qtde_Anterior'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Anterior'
              Width = 130
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Qtde_Lancamento'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Lan'#231'amento'
              Width = 130
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Tipo_Lancamento'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data_Lancamento'
              Title.Alignment = taCenter
              Title.Caption = 'Data Lan'#231'amento'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao_Lancamento'
              Visible = False
            end>
        end
        inherited Panel2: TPanel
          Width = 884
          ExplicitWidth = 884
          inherited grp_busca: TGroupBox
            Width = 874
            ExplicitWidth = 874
            inherited Panel4: TPanel
              Width = 860
              ExplicitWidth = 860
              inherited edt_busca: TEdit
                Width = 840
                OnKeyPress = edt_buscaKeyPress
                ExplicitWidth = 840
              end
            end
          end
        end
      end
      inherited tab_dados: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 884
        ExplicitHeight = 503
        object ScrollBox: TScrollBox [0]
          Left = 0
          Top = 60
          Width = 884
          Height = 443
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 1
          object grp_cod_produto: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'C'#243'digo Produto'
            TabOrder = 0
            object btn_busca_produtos: TImage
              AlignWithMargins = True
              Left = 726
              Top = 19
              Width = 36
              Height = 28
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alRight
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
              OnClick = btn_busca_produtosClick
              ExplicitLeft = 667
              ExplicitHeight = 33
            end
            object edt_cod_produto: TEdit
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 694
              Height = 23
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
              OnKeyPress = edt_cod_produtoKeyPress
            end
          end
          object grp_descricao_produto: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 63
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'Decri'#231#227'o Produto'
            TabOrder = 1
            object edt_descricao_produto: TEdit
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 750
              Height = 23
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              Enabled = False
              TabOrder = 0
            end
          end
          object grp_qtde_anterior: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 183
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'Qtde Anterior'
            TabOrder = 3
            object edt_qtde_anterior: TEdit
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 750
              Height = 23
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              Enabled = False
              TabOrder = 0
            end
          end
          object grp_qtde_atual: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 123
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'Qtde_Lancamento'
            TabOrder = 2
            object edt_qtde_lancamento: TEdit
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 750
              Height = 23
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
            end
          end
          object grp_tipo_lancamento: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 243
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'Tipo de Lan'#231'amento'
            TabOrder = 4
            object cmb_tipo_lancamento: TComboBox
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 750
              Height = 25
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = 'ENTRADA'
              Items.Strings = (
                'ENTRADA'
                'SAIDA')
            end
          end
          object grp_desc_lancamento: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 303
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'Descri'#231#227'o do Lan'#231'amento'
            TabOrder = 5
            object edt_descricao_lancamento: TEdit
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 750
              Height = 23
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
            end
          end
          object grp_data_lancamento: TGroupBox
            AlignWithMargins = True
            Left = 10
            Top = 363
            Width = 774
            Height = 54
            Margins.Left = 10
            Margins.Right = 100
            Align = alTop
            Caption = 'Data Lan'#231'amento'
            TabOrder = 6
            object edt_data_lancamento: TEdit
              AlignWithMargins = True
              Left = 12
              Top = 24
              Width = 750
              Height = 23
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              Align = alClient
              BorderStyle = bsNone
              Enabled = False
              TabOrder = 0
            end
          end
        end
        inherited grp_codigo: TGroupBox
          Width = 774
          Caption = 'C'#243'digo Lan'#231'amento'
          ExplicitWidth = 774
          object edt_cod_lancamento: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 24
            Width = 750
            Height = 23
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            Enabled = False
            TabOrder = 0
          end
        end
      end
    end
    inherited pnl_botoes: TPanel
      Width = 912
      ExplicitWidth = 912
      inherited pnl_menu_top: TPanel
        Width = 892
        ExplicitWidth = 892
        inherited pnl_alterar: TPanel
          inherited btn_alterar: TSpeedButton
            ExplicitLeft = 5
            ExplicitTop = -1
            ExplicitHeight = 49
          end
        end
        inherited Panel1: TPanel [1]
          TabOrder = 1
        end
        inherited pnl_salvar: TPanel [2]
          TabOrder = 2
        end
        inherited pnl_cancelar: TPanel [3]
          TabOrder = 3
        end
        inherited pnl_barra_botoes: TPanel [4]
          Width = 892
          TabOrder = 4
          ExplicitWidth = 892
        end
        inherited pnl_novo: TPanel [5]
          TabOrder = 5
        end
      end
    end
  end
  inherited pnl_topo: TPanel
    Width = 912
    ExplicitWidth = 912
    inherited pnl_fechar: TPanel
      Left = 852
      ExplicitLeft = 852
    end
    inherited pnl_Titulo: TPanel
      Width = 834
      ExplicitWidth = 834
      inherited lbl_titulo_1: TLabel
        Height = 35
      end
      inherited lbl_titulo_2: TLabel
        Height = 35
      end
    end
    inherited pnl_barra_menu: TPanel
      Width = 892
      ExplicitWidth = 892
    end
  end
end
