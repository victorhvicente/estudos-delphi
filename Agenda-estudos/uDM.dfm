object dmDados: TdmDados
  OldCreateOrder = False
  Left = 662
  Top = 248
  Height = 363
  Width = 431
  object conexao: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Protocol = 'mysql-5'
    Left = 32
    Top = 16
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = tbClientes
    Left = 96
    Top = 80
  end
  object tbClientes: TZTable
    Connection = conexao
    TableName = 'clientes'
    Left = 96
    Top = 16
    object tbClientesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object tbClientesnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object tbClientescelular: TStringField
      FieldName = 'celular'
      Size = 16
    end
    object tbClientesbloqueado: TSmallintField
      FieldName = 'bloqueado'
    end
    object tbClientesdata: TDateField
      FieldName = 'data'
    end
    object tbClientesobservacoes: TStringField
      FieldName = 'observacoes'
      Size = 200
    end
  end
end
