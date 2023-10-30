object formRelatorioFornecedor: TformRelatorioFornecedor
  Left = 0
  Top = 0
  Caption = 'formRelatorioFornecedor'
  ClientHeight = 836
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -8
    Top = 0
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
        Width = 252
        Height = 19
        Caption = 'RELAT'#211'RIO DE FORNECEDOR'
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
        Width = 894
        Height = 26
        DrawKind = dkLine
      end
      object RLLabel7: TRLLabel
        Left = 77
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
        Left = 181
        Top = 6
        Width = 106
        Height = 19
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 561
        Top = 6
        Width = 49
        Height = 19
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 353
        Top = 6
        Width = 121
        Height = 19
        Caption = 'Nome Fantasia'
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
      Height = 48
      object RLDBText1: TRLDBText
        Left = 77
        Top = 23
        Width = 144
        Height = 19
        DataField = 'ID_FORNECEDOR'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 181
        Top = 23
        Width = 128
        Height = 19
        DataField = 'RAZAO_SOCIAL'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 353
        Top = 23
        Width = 140
        Height = 19
        DataField = 'NOME_FANTASIA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 561
        Top = 23
        Width = 170
        Height = 19
        DataField = 'CNPJ_FORNECEDOR'
        DataSource = DataSource1
        DisplayMask = '#00.000.000#/#0000##.00'
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 209
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
  object qryFornecedores: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from fornecedor')
    Left = 816
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = qryFornecedores
    Left = 816
    Top = 336
  end
end
