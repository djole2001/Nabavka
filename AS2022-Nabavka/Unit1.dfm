object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 433
  Width = 593
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\urke1\Desktop\AS2022-Nabavka vrata\AS2022-Naba' +
        'vka\Win32\Debug\Nabavka.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 56
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM KORISNIK')
    Left = 168
    Top = 64
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ARTIKLI_ZA_NABAVKU')
    Left = 248
    Top = 72
  end
end
