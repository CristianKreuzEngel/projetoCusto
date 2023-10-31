object formRelatorioNota: TformRelatorioNota
  Left = 0
  Top = 0
  Caption = 'formRelatorioNota'
  ClientHeight = 725
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 992
    Height = 1403
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 47
      Top = 47
      Width = 898
      Height = 67
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 368
        Top = 17
        Width = 139
        Height = 19
        Caption = 'MOVIMENTA'#199#195'O'
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
    object RLGroup1: TRLGroup
      Left = 47
      Top = 114
      Width = 898
      Height = 175
      DataFields = 'DATA_MOVIMENTACAO'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 898
        Height = 41
        BandType = btHeader
        object RLDraw2: TRLDraw
          Left = -152
          Top = 15
          Width = 894
          Height = 26
          DrawKind = dkLine
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
          Width = 158
          Height = 19
          Caption = 'Data Movimenta'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
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
        Left = 0
        Top = 41
        Width = 898
        Height = 40
        BandType = btColumnHeader
        object RLDBText1: TRLDBText
          Left = 135
          Top = 21
          Width = 74
          Height = 19
          DataField = 'ID_NOTA'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 257
          Top = 21
          Width = 188
          Height = 19
          DataField = 'DATA_MOVIMENTACAO'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 417
          Top = 21
          Width = 51
          Height = 19
          DataField = 'DESC'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 606
          Top = 21
          Width = 59
          Height = 19
          DataField = 'VALOR'
          DataSource = DataSource1
          DisplayMask = 'R$ .0.00 '
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 38
          Top = 18
          Width = 22
          Height = 19
          DataField = 'ID'
          DataSource = DataSource1
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 81
        Width = 898
        Height = 48
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 606
          Top = 26
          Width = 136
          Height = 19
          DataField = 'VALOR'
          DataSource = DataSource1
          Info = riAverage
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 442
          Top = 26
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
      end
    end
    object RLBand4: TRLBand
      Left = 47
      Top = 289
      Width = 898
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
        Width = 894
        Height = 26
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 576
        Top = 38
        Width = 56
        Height = 19
        Caption = 'P'#225'gina'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 638
        Top = 38
        Width = 112
        Height = 19
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 664
        Top = 38
        Width = 142
        Height = 19
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 652
        Top = 38
        Width = 10
        Height = 19
        Caption = '/'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = qryMovimentacao
    Left = 952
    Top = 320
  end
  object qryMovimentacao: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from movimentacao'
      'order by data_movimentacao asc')
    Left = 952
    Top = 416
  end
end
