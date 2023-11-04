object formRelatorioNotas: TformRelatorioNotas
  Left = 0
  Top = 0
  Caption = 'formRelatorioNotas'
  ClientHeight = 738
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -8
    Top = -1
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 16
        Top = 17
        Width = 191
        Height = 19
        Caption = 'RELAT'#211'RIO DE NOTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 894
        Height = 26
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 56
      BandType = btHeader
      object RLDraw2: TRLDraw
        Left = -168
        Top = 31
        Width = 1047
        Height = 26
        DrawKind = dkLine
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 161
      Width = 718
      Height = 546
      object RLDBText1: TRLDBText
        Left = 139
        Top = 71
        Width = 92
        Height = 19
        DataField = 'NUM_NOTA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 179
        Top = 111
        Width = 131
        Height = 19
        DataField = 'DATA_EMISSAO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 139
        Top = 207
        Width = 102
        Height = 19
        DataField = 'DESCRICAO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 105
        Top = 255
        Width = 89
        Height = 19
        DataField = 'VALOR_NF'
        DataSource = DataSource1
        DisplayMask = 'R$ .0.00 '
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 105
        Top = 31
        Width = 74
        Height = 19
        DataField = 'ID_NOTA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDraw4: TRLDraw
        Left = -32
        Top = 455
        Width = 983
        Height = 26
        DrawKind = dkLine
      end
      object RLLabel7: TRLLabel
        Left = 30
        Top = 31
        Width = 61
        Height = 19
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 30
        Top = 71
        Width = 103
        Height = 19
        Caption = 'C'#243'digo Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 30
        Top = 111
        Width = 134
        Height = 19
        Caption = 'Data de emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 30
        Top = 207
        Width = 83
        Height = 19
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 30
        Top = 255
        Width = 46
        Height = 19
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 30
        Top = 159
        Width = 120
        Height = 19
        Caption = 'C'#243'digo Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 171
        Top = 159
        Width = 76
        Height = 19
        DataField = 'COD_CLI'
        DataSource = DataSource1
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 771
      Width = 718
      Height = 64
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 38
        Width = 76
        Height = 19
        Info = itFullDate
        Layout = tlJustify
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = -112
        Top = 6
        Width = 1007
        Height = 26
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 577
        Top = 38
        Width = 56
        Height = 19
        Caption = 'P'#225'gina'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 639
        Top = 38
        Width = 112
        Height = 19
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 681
        Top = 38
        Width = 142
        Height = 19
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 665
        Top = 38
        Width = 10
        Height = 19
        Caption = '/'
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 707
      Width = 718
      Height = 64
      BandType = btFooter
    end
  end
  object qryNotas: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from notafiscal'
      'order by data_emissao asc'
      '')
    Left = 776
    Top = 472
  end
  object DataSource1: TDataSource
    DataSet = qryNotas
    Left = 768
    Top = 392
  end
end
