object Form1: TForm1
  Left = 264
  Top = 228
  Width = 870
  Height = 640
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 105
    Height = 17
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1077#1082#1090#1088
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 392
    Width = 137
    Height = 17
    Caption = #1055#1077#1088#1077#1087#1088#1072#1074#1080#1090#1100' '#1084#1082#1084' '#1074' '#1085#1084
    TabOrder = 1
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 40
    Width = 193
    Height = 17
    Caption = #1058#1086#1083#1100#1082#1086' '#1074#1080#1076#1080#1084#1091#1102' '#1095#1072#1089#1090#1100' '#1089#1087#1077#1082#1090#1088#1072
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text files|*.txt|Data files|*.dat|All files|*.*'
    Left = 144
    Top = 8
  end
end
