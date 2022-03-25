object data_m: Tdata_m
  OldCreateOrder = False
  Height = 514
  Width = 738
  object FD: TFDConnection
    Params.Strings = (
      'Database=pdv'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 136
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 280
    Top = 32
  end
  object tb_cargos: TFDTable
    IndexFieldNames = 'id'
    Connection = FD
    UpdateOptions.UpdateTableName = 'pdv.cargos'
    TableName = 'pdv.cargos'
    Left = 136
    Top = 120
    object tb_cargosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_cargoscargo: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
  end
  object query_cargos: TFDQuery
    Connection = FD
    SQL.Strings = (
      'select * from cargos')
    Left = 288
    Top = 120
    object query_cargosid: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object query_cargoscargo: TStringField
      DisplayLabel = 'CARGO'
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
  end
end
