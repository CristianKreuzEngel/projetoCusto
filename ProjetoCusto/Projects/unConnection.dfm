object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\kreuz\OneDrive\Documentos\ProjetoCusto\Banco\b' +
        'ancoHorus.FDB'
      'User_Name=sysdba'
      'Password=abacate'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 280
    Top = 72
  end
  object FDQueryNovoCodigo: TFDQuery
    Connection = FDConnection1
    Left = 688
    Top = 80
  end
end
