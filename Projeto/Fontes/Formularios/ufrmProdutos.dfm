inherited frmProdutos: TfrmProdutos
  Caption = 'Produtos'
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnl_centro: TPanel
    inherited pgcPrincipal: TPageControl
      ActivePage = tab_painel
      inherited tab_painel: TTabSheet
        inherited grd_painel: TDBGrid
          DataSource = dmPrincipal.ds_produtos
          OnTitleClick = grd_painelTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descri'#231#227'o'
              Width = 350
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VUnit'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Unit'#225'rio'
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Estoque'
              Title.Alignment = taCenter
              Width = 100
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        inherited grp_codigo: TGroupBox
          Top = 183
          Caption = 'Estoque Atual'
          TabOrder = 3
          ExplicitTop = 183
          object edt_est: TEdit
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
            TabOrder = 0
            OnExit = edt_estExit
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 123
          Width = 600
          Height = 54
          Margins.Left = 10
          Margins.Right = 100
          Align = alTop
          Caption = 'Valor Unit'#225'rio'
          TabOrder = 2
          object edt_vunit: TEdit
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
            TabOrder = 0
            OnExit = edt_vunitExit
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 10
          Top = 63
          Width = 600
          Height = 54
          Margins.Left = 10
          Margins.Right = 100
          Align = alTop
          Caption = 'Descri'#231#227'o'
          TabOrder = 1
          object edt_descricao: TEdit
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
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
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
            TabOrder = 0
          end
        end
      end
    end
  end
end
