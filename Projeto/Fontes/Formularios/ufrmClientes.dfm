inherited frmClientes: TfrmClientes
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnl_centro: TPanel
    inherited pgcPrincipal: TPageControl
      inherited tab_painel: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 710
        ExplicitHeight = 503
        inherited grd_painel: TDBGrid
          DataSource = dmPrincipal.ds_clientes
          OnTitleClick = grd_painelTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cidade'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Width = 30
              Visible = True
            end>
        end
        inherited Panel2: TPanel
          inherited grp_busca: TGroupBox
            inherited Panel4: TPanel
              inherited edt_busca: TEdit
                OnKeyPress = edt_buscaKeyPress
              end
            end
          end
        end
      end
      inherited tab_dados: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 710
        ExplicitHeight = 503
        inherited grp_codigo: TGroupBox
          Top = 183
          Caption = 'UF'
          TabOrder = 3
          ExplicitTop = 183
          object cmb_uf: TComboBox
            AlignWithMargins = True
            Left = 12
            Top = 24
            Width = 576
            Height = 25
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            Style = csDropDownList
            CharCase = ecUpperCase
            MaxLength = 5
            TabOrder = 0
            TextHint = 'UF'
          end
        end
        object GroupBox1: TGroupBox
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
          object edt_codigo: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 24
            Width = 576
            Height = 23
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Enabled = False
            MaxLength = 999999
            TabOrder = 0
            TextHint = 'Codigo'
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 123
          Width = 600
          Height = 54
          Margins.Left = 10
          Margins.Right = 100
          Align = alTop
          Caption = 'Cidade'
          TabOrder = 2
          object edt_cidade: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 24
            Width = 576
            Height = 23
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 0
            TextHint = 'Cidade'
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 63
          Width = 600
          Height = 54
          Margins.Left = 10
          Margins.Right = 100
          Align = alTop
          Caption = 'Nome'
          TabOrder = 1
          object edt_nome: TEdit
            AlignWithMargins = True
            Left = 12
            Top = 24
            Width = 576
            Height = 23
            Margins.Left = 10
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 0
            TextHint = 'Nome'
          end
        end
      end
    end
  end
  inherited pnl_topo: TPanel
    inherited pnl_fechar: TPanel
      inherited btn_fechar: TSpeedButton
        Transparent = False
      end
    end
    inherited pnl_Titulo: TPanel
      inherited lbl_titulo_1: TLabel
        Height = 35
      end
      inherited lbl_titulo_2: TLabel
        Height = 35
      end
    end
  end
end
