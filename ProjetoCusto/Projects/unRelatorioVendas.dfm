object formRelatorioVendas: TformRelatorioVendas
  Left = 0
  Top = 0
  Caption = 'formRelatorioVendas'
  ClientHeight = 840
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -6
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
        Width = 202
        Height = 19
        Caption = 'RELAT'#211'RIO DE VENDAS'
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
        Left = -152
        Top = 31
        Width = 1047
        Height = 26
        DrawKind = dkLine
      end
      object RLLabel7: TRLLabel
        Left = 38
        Top = 6
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
      object RLLabel2: TRLLabel
        Left = 417
        Top = 6
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
        Left = 606
        Top = 6
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
      object RLLabel4: TRLLabel
        Left = 257
        Top = 6
        Width = 138
        Height = 19
        Caption = 'Data Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 135
        Top = 6
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
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 161
      Width = 718
      Height = 135
      object RLDBText1: TRLDBText
        Left = 135
        Top = 23
        Width = 74
        Height = 19
        DataField = 'ID_NOTA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 257
        Top = 23
        Width = 188
        Height = 19
        DataField = 'DATA_MOVIMENTACAO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 417
        Top = 23
        Width = 51
        Height = 19
        DataField = 'DESC'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 606
        Top = 23
        Width = 59
        Height = 19
        DataField = 'VALOR'
        DataSource = DataSource1
        DisplayMask = 'R$ .0.00 '
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 38
        Top = 23
        Width = 22
        Height = 19
        DataField = 'ID'
        DataSource = DataSource1
        Text = ''
      end
      object RLDraw4: TRLDraw
        Left = -56
        Top = 87
        Width = 983
        Height = 26
        DrawKind = dkLine
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 360
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
        Left = 609
        Top = 38
        Width = 56
        Height = 19
        Caption = 'P'#225'gina'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 671
        Top = 38
        Width = 112
        Height = 19
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 713
        Top = 38
        Width = 142
        Height = 19
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 697
        Top = 38
        Width = 10
        Height = 19
        Caption = '/'
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 296
      Width = 718
      Height = 64
      BandType = btFooter
      object RLLabel9: TRLLabel
        Left = 606
        Top = 29
        Width = 65
        Height = 19
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 677
        Top = 29
        Width = 155
        Height = 19
        DataSource = DataSource1
        Info = riAverage
        Text = ''
      end
    end
  end
  object qryVendas: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from movimentacao'
      'where tipo = '#39'E'#39
      'order by data_movimentacao asc'
      '')
    Left = 498
    Top = 535
  end
  object DataSource1: TDataSource
    DataSet = qryVendas
    Left = 672
    Top = 624
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 90
    Top = 431
  end
end
