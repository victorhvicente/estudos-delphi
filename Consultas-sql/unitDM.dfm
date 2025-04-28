object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 150
  Width = 215
  object conexao: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'aula'
    User = 'root'
    Protocol = 'mysql-5'
    Left = 16
    Top = 8
  end
  object sqlConsulta: TZQuery
    Connection = conexao
    Active = True
    SQL.Strings = (
      'SELECT * FROM clientes')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pConsulta'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pConsulta'
        ParamType = ptUnknown
      end>
  end
  object dsSqlConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 112
    Top = 64
  end
end
