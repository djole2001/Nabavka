object frmNalog: TfrmNalog
  Left = 0
  Top = 0
  Caption = 'Nalog'
  ClientHeight = 362
  ClientWidth = 662
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
    Left = 256
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 1
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Tag = 5
    Left = 200
    Top = 106
    Width = 320
    Height = 120
    FixedCols = 0
    RowCount = 4
    TabOrder = 2
    ColWidths = (
      64
      184
      64
      79
      64)
    ColAligments = (
      1
      0
      1
      1
      1)
  end
  object Button3: TButton
    Left = 8
    Top = 193
    Width = 98
    Height = 25
    Caption = 'Unos podataka'
    TabOrder = 3
    OnClick = Button3Click
  end
  object BindNavigator1: TBindNavigator
    Left = 266
    Top = 75
    Width = 65
    Height = 25
    VisibleButtons = [nbRefresh]
    Orientation = orHorizontal
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 16
    Top = 64
    Width = 105
    Height = 21
    TabOrder = 5
    Text = 'Unesite naziv artikla'
  end
  object Edit2: TEdit
    Left = 16
    Top = 106
    Width = 105
    Height = 21
    TabOrder = 6
    Text = 'Unesite cenu'
  end
  object Edit3: TEdit
    Left = 16
    Top = 150
    Width = 105
    Height = 21
    TabOrder = 7
    Text = 'Unesite kolicinu'
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQuery2
    ScopeMappings = <>
    Left = 248
    Top = 120
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
end
