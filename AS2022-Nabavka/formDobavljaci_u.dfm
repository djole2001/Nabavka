object formDobavljaci: TformDobavljaci
  Left = 0
  Top = 0
  Caption = 'Dobaljaci'
  ClientHeight = 408
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 312
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Ime dobavljaca'
  end
  object Edit2: TEdit
    Left = 8
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Adresa dobavljaca'
  end
  object StringGrid1: TStringGrid
    Tag = 3
    Left = 192
    Top = 184
    Width = 320
    Height = 120
    ColCount = 3
    FixedCols = 0
    RowCount = 4
    TabOrder = 4
    ColWidths = (
      79
      64
      64)
    ColAligments = (
      1
      0
      0)
  end
  object Button3: TButton
    Left = 8
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Unos podataka'
    TabOrder = 5
    OnClick = Button3Click
  end
  object BindNavigator1: TBindNavigator
    Left = 224
    Top = 136
    Width = 57
    Height = 42
    DataSource = BindSourceDB1
    VisibleButtons = [nbRefresh]
    Orientation = orHorizontal
    TabOrder = 6
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\urke1\Desktop\Nabavka\Nabavka_db.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    Left = 576
    Top = 320
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM DOBAVLJAC')
    Left = 608
    Top = 256
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 456
    Top = 200
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 608
    Top = 200
  end
  object FDQuery3: TFDQuery
    Connection = FDConnection1
    Left = 632
    Top = 160
  end
end
