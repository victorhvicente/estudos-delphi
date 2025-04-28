object formConsulta: TformConsulta
  Left = 214
  Top = 151
  Width = 528
  Height = 410
  Caption = 'Consultas ao Banco de Dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object labelConsulta: TLabel
    Left = 256
    Top = 16
    Width = 93
    Height = 13
    Caption = 'Pesquisar por nome'
  end
  object radioGroupOpcoes: TRadioGroup
    Left = 24
    Top = 16
    Width = 217
    Height = 49
    Caption = 'Op'#231#245'es de Consulta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    TabOrder = 0
    OnClick = radioGroupOpcoesClick
  end
  object txtConsulta: TEdit
    Left = 256
    Top = 32
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object btnRealizarConsulta: TButton
    Left = 24
    Top = 80
    Width = 473
    Height = 33
    Caption = 'Realizar Consulta'
    TabOrder = 2
    OnClick = btnRealizarConsultaClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 136
    Width = 473
    Height = 209
    DataSource = DM.dsSqlConsulta
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Title.Caption = 'BAIRRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Caption = 'IDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end>
  end
end
