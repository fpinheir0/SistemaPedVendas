object dmDados: TdmDados
  OldCreateOrder = False
  Height = 499
  Width = 694
  object Transaction: TIBTransaction
    Active = True
    DefaultDatabase = Projeto_PedVendas
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 120
    Top = 8
  end
  object Projeto_PedVendas: TIBDatabase
    Connected = True
    DatabaseName = 'LocalHost:C:\Users\Huron\Desktop\ProjetoEstudo\DBIND\BANCO.FDB'
    Params.Strings = (
      ''
      'user_name=SYSDBA'
      'password=Path1234'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = Transaction
    ServerType = 'IBServer'
    Left = 40
    Top = 8
  end
  object TB_CLIENTES: TIBTable
    Database = Projeto_PedVendas
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TB_CLIENTES'
    UniDirectional = False
    Left = 40
    Top = 72
    object TB_CLIENTESID_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
    end
    object TB_CLIENTESCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Size = 35
    end
    object TB_CLIENTESCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Size = 35
    end
    object TB_CLIENTESCLI_NUMERO: TIBBCDField
      FieldName = 'CLI_NUMERO'
      Precision = 18
      Size = 2
    end
    object TB_CLIENTESCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Size = 35
    end
    object TB_CLIENTESCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Size = 15
    end
    object TB_CLIENTESCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Size = 35
    end
    object TB_CLIENTESCLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
    end
    object TB_CLIENTESCLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
      Size = 15
    end
    object TB_CLIENTESCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
      Size = 15
    end
    object TB_CLIENTESCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Size = 15
    end
  end
  object dsCliente: TDataSource
    DataSet = TB_CLIENTES
    Left = 42
    Top = 169
  end
  object TB_PRODUTOS: TIBTable
    Database = Projeto_PedVendas
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PROD_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROD_CODIGO_BARRAS'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PROD_PRODUTO'
        DataType = ftWideString
        Size = 36
      end
      item
        Name = 'PROD_VALOR_CUSTO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_LUCRO'
        DataType = ftInteger
      end
      item
        Name = 'PROD_VALOR_VENDA'
        DataType = ftFloat
      end
      item
        Name = 'PROD_QTDE_ESTOQUE'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_TB_PRODUTOS'
        Fields = 'PROD_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TB_PRODUTOS'
    UniDirectional = False
    Left = 136
    Top = 72
    object TB_PRODUTOSPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Required = True
    end
    object TB_PRODUTOSPROD_CODIGO_BARRAS: TIBStringField
      FieldName = 'PROD_CODIGO_BARRAS'
    end
    object TB_PRODUTOSPROD_PRODUTO: TIBStringField
      FieldName = 'PROD_PRODUTO'
      Size = 36
    end
    object TB_PRODUTOSPROD_VALOR_CUSTO: TFloatField
      FieldName = 'PROD_VALOR_CUSTO'
      currency = True
    end
    object TB_PRODUTOSPROD_LUCRO: TIntegerField
      FieldName = 'PROD_LUCRO'
    end
    object TB_PRODUTOSPROD_VALOR_VENDA: TFloatField
      FieldName = 'PROD_VALOR_VENDA'
      currency = True
    end
    object TB_PRODUTOSPROD_QTDE_ESTOQUE: TIntegerField
      FieldName = 'PROD_QTDE_ESTOQUE'
    end
  end
  object dsProdutos: TDataSource
    DataSet = TB_PRODUTOS
    Left = 136
    Top = 168
  end
  object TB_VENDAS: TIBTable
    Database = Projeto_PedVendas
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TB_VENDAS'
    UniDirectional = False
    Left = 224
    Top = 72
    object TB_VENDASVEN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'VEN_ID'
    end
    object TB_VENDASVEN_NUMERO_NOTA: TIBStringField
      FieldName = 'VEN_NUMERO_NOTA'
    end
    object TB_VENDASVEN_DATA_VENDA: TDateField
      FieldName = 'VEN_DATA_VENDA'
    end
    object TB_VENDASVEN_HORA_VENDA: TTimeField
      FieldName = 'VEN_HORA_VENDA'
    end
    object TB_VENDASVEN_TOTAL_VENDA: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VEN_TOTAL_VENDA'
      currency = True
    end
    object TB_VENDASVEN_PAGAMENTOS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VEN_PAGAMENTOS'
      currency = True
    end
    object TB_VENDASVEN_TROCO: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VEN_TROCO'
      currency = True
    end
    object TB_VENDASCLI_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLI_ID'
    end
    object TB_VENDASFUNC_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FUNC_ID'
    end
    object TB_VENDASFORMA_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FORMA_ID'
    end
  end
  object dsVendas: TDataSource
    DataSet = TB_VENDAS
    Left = 224
    Top = 168
  end
  object sqlConsultas: TIBQuery
    Database = Projeto_PedVendas
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TB_PRODUTOS')
    Left = 304
    Top = 72
    object sqlConsultasPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = '"TB_PRODUTOS"."PROD_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlConsultasPROD_CODIGO_BARRAS: TIBStringField
      FieldName = 'PROD_CODIGO_BARRAS'
      Origin = '"TB_PRODUTOS"."PROD_CODIGO_BARRAS"'
    end
    object sqlConsultasPROD_PRODUTO: TIBStringField
      FieldName = 'PROD_PRODUTO'
      Origin = '"TB_PRODUTOS"."PROD_PRODUTO"'
      Size = 36
    end
    object sqlConsultasPROD_VALOR_CUSTO: TFloatField
      FieldName = 'PROD_VALOR_CUSTO'
      Origin = '"TB_PRODUTOS"."PROD_VALOR_CUSTO"'
      currency = True
    end
    object sqlConsultasPROD_LUCRO: TIntegerField
      FieldName = 'PROD_LUCRO'
      Origin = '"TB_PRODUTOS"."PROD_LUCRO"'
    end
    object sqlConsultasPROD_VALOR_VENDA: TFloatField
      FieldName = 'PROD_VALOR_VENDA'
      Origin = '"TB_PRODUTOS"."PROD_VALOR_VENDA"'
      currency = True
    end
    object sqlConsultasPROD_QTDE_ESTOQUE: TIntegerField
      FieldName = 'PROD_QTDE_ESTOQUE'
      Origin = '"TB_PRODUTOS"."PROD_QTDE_ESTOQUE"'
    end
  end
  object dsConsultas: TDataSource
    DataSet = sqlConsultas
    Left = 304
    Top = 160
  end
end
