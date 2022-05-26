﻿object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 450
  Width = 714
  object CONEXAO: TFDConnection
    Params.Strings = (
      'Database=WF'
      'User_Name=root'
      'Password=Abner@2022'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\MAC\Desktop\Teste WK Technology\Dll\libmysql.dll'
    Left = 80
    Top = 368
  end
  object qry_clientes: TFDQuery
    Connection = CONEXAO
    SQL.Strings = (
      'select '
      'cli.codigo as Codigo,'
      'cli.nome as Nome,'
      'cli.cidade as Cidade,'
      '(select sigla from tab_estados e where e.codigo = cli.uf) as UF'
      'from tab_clientes as cli'
      'where cli.nome like :BUSCA'
      'order by 1 asc')
    Left = 312
    Top = 32
    ParamData = <
      item
        Name = 'BUSCA'
        ParamType = ptInput
        Value = Null
      end>
    object qry_clientesCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_clientesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 255
    end
    object qry_clientesCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'Cidade'
      Required = True
      Size = 100
    end
    object qry_clientesUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object qry_produtos: TFDQuery
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT'
      'codigo AS Codigo,'
      'descricao AS Descri'#231#227'o,'
      'valor AS VUnit,'
      'estoque AS Estoque'
      'FROM tab_produtos'
      'WHERE descricao LIKE :busca'
      'order by descricao asc')
    Left = 312
    Top = 96
    ParamData = <
      item
        Name = 'BUSCA'
        ParamType = ptInput
      end>
    object qry_produtosCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_produtosDescrição: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descri'#231#227'o'
      Origin = 'Descricao'
      Size = 100
    end
    object qry_produtosVUnit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VUnit'
      Origin = 'Valor'
      currency = True
      Precision = 9
      Size = 2
    end
    object qry_produtosEstoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Estoque'
      Origin = 'Estoque'
      Precision = 9
      Size = 2
    end
  end
  object qry_pedidos: TFDQuery
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT distinct'
      'ped.codigo,'
      'ped.codigo_cliente,'
      'cli.Nome AS nome_cliente,'
      'ped.qtde_itens,'
      'ped.vtotal,'
      'ped.xstatus'
      'FROM tab_pedido ped'
      'join tab_clientes cli ON cli.Codigo = ped.Codigo_Cliente'
      'where cli.Nome like :cli.Nome'
      'ORDER BY 1 desc')
    Left = 312
    Top = 168
    ParamData = <
      item
        Name = 'CLI.NOME'
        ParamType = ptInput
        Value = Null
      end>
    object qry_pedidoscodigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_pedidoscodigo_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_cliente'
      Origin = 'Codigo_Cliente'
    end
    object qry_pedidosnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object qry_pedidosqtde_itens: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'qtde_itens'
      Origin = 'Qtde_Itens'
      Precision = 9
      Size = 2
    end
    object qry_pedidosvtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vtotal'
      Origin = 'VTotal'
      currency = True
      Precision = 9
      Size = 2
    end
    object qry_pedidosxstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'xstatus'
      Origin = 'XStatus'
      FixedChar = True
      Size = 1
    end
  end
  object qry_pedidos_itens: TFDQuery
    OnCalcFields = qry_pedidos_itensCalcFields
    CachedUpdates = True
    MasterSource = ds_pedidos
    MasterFields = 'codigo'
    Connection = CONEXAO
    SQL.Strings = (
      'SELECT'
      'i.codigo,'
      'i.codigo_pedido,'
      'i.produto,'
      'prod.Descricao AS descricao,'
      'i.qtde,'
      'i.vunit,'
      'i.vtotal'
      'FROM tab_pedido_itens i'
      'join tab_produtos prod ON prod.Codigo = i.Produto'
      'where i.codigo_pedido = :codigo'
      ''
      '')
    Left = 312
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object qry_pedidos_itenscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_pedidos_itenscodigo_pedido: TIntegerField
      FieldName = 'codigo_pedido'
      Origin = 'Codigo_Pedido'
      Required = True
    end
    object qry_pedidos_itensproduto: TIntegerField
      FieldName = 'produto'
      Origin = 'Produto'
      Required = True
    end
    object qry_pedidos_itensdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'Descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qry_pedidos_itensqtde: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'qtde'
      Origin = 'Qtde'
      Precision = 9
      Size = 2
    end
    object qry_pedidos_itensvunit: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vunit'
      Origin = 'VUnit'
      currency = True
      Precision = 9
      Size = 2
    end
    object qry_pedidos_itensvtotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vtotal'
      Origin = 'VTotal'
      currency = True
      Precision = 9
      Size = 2
    end
    object vlr_item: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vlr_item'
      currency = True
      Calculated = True
    end
  end
  object ds_clientes: TDataSource
    AutoEdit = False
    DataSet = qry_clientes
    Left = 400
    Top = 32
  end
  object ds_produtos: TDataSource
    AutoEdit = False
    DataSet = qry_produtos
    Left = 408
    Top = 96
  end
  object ds_pedidos: TDataSource
    DataSet = qry_pedidos
    Left = 408
    Top = 168
  end
  object ds_pedidos_itens: TDataSource
    DataSet = qry_pedidos_itens
    Left = 416
    Top = 240
  end
  object qry_estados: TFDQuery
    Connection = CONEXAO
    SQL.Strings = (
      'select * from tab_estados')
    Left = 312
    Top = 360
    object qry_estadosCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_estadosDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 100
    end
    object qry_estadosSigla: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sigla'
      Origin = 'Sigla'
      FixedChar = True
      Size = 2
    end
  end
  object ds_estados: TDataSource
    AutoEdit = False
    DataSet = qry_estados
    Left = 400
    Top = 360
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 584
    Top = 320
  end
end