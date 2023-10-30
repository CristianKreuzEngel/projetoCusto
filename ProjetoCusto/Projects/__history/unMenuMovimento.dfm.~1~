object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 646
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 208
    Top = 328
    Width = 456
    Height = 168
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 280
    Width = 450
    Height = 25
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 184
    Width = 121
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 224
    Width = 121
    Height = 23
    DataField = 'VALOR'
    DataSource = DataSource1
    TabOrder = 3
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM cliente'
      '')
    Left = 304
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 384
    Top = 88
  end
end
