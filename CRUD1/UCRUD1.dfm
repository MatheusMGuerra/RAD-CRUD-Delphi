object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 268
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 49
    Caption = 'Cadastro de alunos:'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 472
    Height = 40
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 470
      Height = 40
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = -1
    Top = 95
    Width = 472
    Height = 136
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel3: TPanel
    Left = 0
    Top = 225
    Width = 472
    Height = 48
    Color = clAppWorkSpace
    ParentBackground = False
    TabOrder = 3
    object btn_Conect: TButton
      Left = 303
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 0
      OnClick = btn_ConectClick
    end
    object Button1: TButton
      Left = 384
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Db_Teste'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 320
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 168
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 216
    Top = 320
  end
end
