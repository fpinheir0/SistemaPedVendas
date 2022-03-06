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
    Top = 120
  end
end
