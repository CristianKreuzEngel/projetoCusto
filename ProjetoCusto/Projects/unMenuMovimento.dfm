object formMenuRelatorioMovi: TformMenuRelatorioMovi
  Left = 0
  Top = 0
  Caption = 'formMenuRelatorioMovi'
  ClientHeight = 646
  ClientWidth = 949
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
  object Label2: TLabel
    Left = 294
    Top = 191
    Width = 44
    Height = 15
    Caption = 'Per'#237'odo:'
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
  object btnGerar: TButton
    Left = 406
    Top = 264
    Width = 75
    Height = 25
    Caption = 'GERAR'
    TabOrder = 0
    OnClick = btnGerarClick
  end
  object cbTipoRel: TComboBox
    Left = 344
    Top = 133
    Width = 228
    Height = 23
    TabOrder = 1
    Text = 'Selecione o tipo de relat'#243'rio'
    OnChange = cbTipoRelChange
    Items.Strings = (
      '1 - Movimento di'#225'rio'
      '2 - Movimento caixa'
      '3 - Listar Entradas'
      '4 - Listar Sa'#237'das')
  end
  object dtHoje: TDateTimePicker
    Left = 467
    Top = 191
    Width = 105
    Height = 23
    Date = 45195.000000000000000000
    Time = 0.809366921297623800
    TabOrder = 2
  end
  object dtOntem: TDateTimePicker
    Left = 344
    Top = 191
    Width = 105
    Height = 23
    Date = 45195.000000000000000000
    Time = 0.809366921297623800
    TabOrder = 3
  end
  object cbOrdenar2: TComboBox
    Left = 344
    Top = 162
    Width = 228
    Height = 23
    TabOrder = 4
    Text = 'Selecione o tipo de oredena'#231#227'o'
    Items.Strings = (
      'Listar por cliente'
      'Listar por n'#250'mero de nota'
      'Listar por Data')
  end
end
