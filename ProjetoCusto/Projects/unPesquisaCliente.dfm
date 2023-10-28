object formPesquisaCliente: TformPesquisaCliente
  Left = 0
  Top = 0
  Caption = 'formPesquisaCliente'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 64
    Top = 8
    Width = 481
    Height = 426
    DataSource = dsPesquisarClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'C'#211'DIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CLIENTE'
        Visible = True
      end>
  end
  object qryPesquisaCliente: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from cliente')
    Left = 544
    Top = 40
  end
  object dsPesquisarClientes: TDataSource
    DataSet = qryPesquisaCliente
    Left = 544
    Top = 112
  end
end
