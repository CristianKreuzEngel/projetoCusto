object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 600
  Width = 800
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\kreuz\OneDrive\Documentos\Repositorios\projeto' +
        'Custo\ProjetoCusto\Banco\bancoHorus.FDB'
      'User_Name=sysdba'
      'Password=abacate'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 224
    Top = 58
  end
  object FDQueryNovoCodigo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cliente')
    Left = 550
    Top = 64
  end
end
