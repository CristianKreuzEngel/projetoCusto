object formMenuRelatorio: TformMenuRelatorio
  Left = 0
  Top = 0
  Caption = 'formMenuRelatorio'
  ClientHeight = 635
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 288
    Top = 136
    Width = 50
    Height = 15
    Caption = 'Relat'#243'rio:'
  end
  object Label3: TLabel
    Left = 271
    Top = 162
    Width = 67
    Height = 15
    Caption = 'Ordenar por:'
  end
  object Label4: TLabel
    Left = 455
    Top = 191
    Width = 6
    Height = 15
    Caption = #224
  end
  object Label2: TLabel
    Left = 294
    Top = 191
    Width = 44
    Height = 15
    Caption = 'Per'#237'odo:'
  end
  object btnGerar: TButton
    Left = 374
    Top = 280
    Width = 75
    Height = 25
    Caption = 'GERAR'
    TabOrder = 0
    OnClick = btnGerarClick
  end
  object dtHoje: TDateTimePicker
    Left = 467
    Top = 191
    Width = 105
    Height = 23
    Date = 45195.000000000000000000
    Time = 0.809366921297623800
    Enabled = False
    TabOrder = 1
  end
  object cbTipoRel: TComboBox
    Left = 344
    Top = 133
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 2
    Text = '1 - Listar Clientes'
    OnChange = cbTipoRelChange
    Items.Strings = (
      '1 - Listar Clientes'
      '2 - Listar Fornecedores'
      '3 - Listar Vendas'
      '4 - Listar Compras')
  end
  object cbOrdenar: TComboBox
    Left = 344
    Top = 162
    Width = 145
    Height = 23
    TabOrder = 3
    Items.Strings = (
      'C'#243'digo'
      'Nome')
  end
  object dtOntem: TDateTimePicker
    Left = 344
    Top = 191
    Width = 105
    Height = 23
    Date = 45195.000000000000000000
    Time = 0.809366921297623800
    Enabled = False
    TabOrder = 4
  end
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 800
    Top = 48
  end
  object DataSource1: TDataSource
    Left = 800
    Top = 112
  end
end
