object dmDados: TdmDados
  OldCreateOrder = False
  Height = 499
  Width = 694
  object Transaction: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 120
    Top = 8
  end
  object Projeto_PedVendas: TIBDatabase
    DefaultTransaction = Transaction
    ServerType = 'IBServer'
    Left = 40
    Top = 8
  end
  object tabLogos: TIBTable
    Database = Projeto_PedVendas
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    UniDirectional = False
    Left = 40
    Top = 64
  end
  object dsLogos: TDataSource
    DataSet = tabLogos
    Left = 40
    Top = 120
  end
end
