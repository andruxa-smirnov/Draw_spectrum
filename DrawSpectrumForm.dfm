object Form2: TForm2
  Left = 282
  Top = 208
  Width = 640
  Height = 630
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1089#1087#1077#1082#1090#1088#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  DesignSize = (
    632
    596)
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 144
    Top = 0
    Width = 482
    Height = 592
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    MarginBottom = 5
    MarginTop = 5
    Title.Color = clWhite
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = []
    Title.Text.Strings = (
      '')
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -16
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = []
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -16
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = []
    Legend.LegendStyle = lsSeries
    View3D = False
    OnAfterDraw = Chart1AfterDraw
    BevelOuter = bvNone
    BevelWidth = 0
    Color = clWhite
    TabOrder = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' BMP'
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 40
    Width = 129
    Height = 169
    Caption = #1054#1073#1097#1080#1077' '#1089#1074#1086#1081#1089#1090#1074#1072
    TabOrder = 2
    object txtGraphName: TLabeledEdit
      Left = 8
      Top = 32
      Width = 89
      Height = 21
      EditLabel.Width = 96
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1072
      TabOrder = 0
      OnChange = txtGraphNameChange
    end
    object txtXName: TLabeledEdit
      Left = 8
      Top = 72
      Width = 81
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1086#1076#1087#1080#1089#1100' '#1086#1089#1080' X'
      TabOrder = 1
      OnChange = txtXNameChange
    end
    object txtYName: TLabeledEdit
      Left = 8
      Top = 112
      Width = 81
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1086#1076#1087#1080#1089#1100' '#1086#1089#1080' Y'
      TabOrder = 2
      OnChange = txtYNameChange
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 64
      Width = 25
      Height = 65
      Hint = #1055#1088#1080#1089#1074#1086#1080#1090#1100' '#1101#1090#1080' '#1087#1086#1076#1087#1080#1089#1080' '#1076#1072#1085#1085#1086#1081' '#1082#1088#1080#1074#1086#1081
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        2E010000424D2E010000000000003E000000280000000F0000003C0000000100
        010000000000F00000000000000000000000020000000000000000000000FFFF
        FF00FEFE0000FC7E0000F83E0000F01E0000E44E0000CC6600009C7200003C78
        00007C7C0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000}
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 136
      Width = 105
      Height = 25
      Caption = #1058#1086#1083#1100#1082#1086' '#1074#1080#1076#1080#1084#1099#1081' '#1089#1087#1077#1082#1090#1088
      Checked = True
      State = cbChecked
      TabOrder = 4
      WordWrap = True
      OnClick = CheckBox1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 208
    Width = 129
    Height = 380
    Anchors = [akLeft, akTop, akBottom]
    Caption = #1044#1072#1085#1085#1099#1077
    TabOrder = 3
    DesignSize = (
      129
      380)
    object Label1: TLabel
      Left = 8
      Top = 248
      Width = 50
      Height = 13
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    end
    object ListBox1: TListBox
      Left = 8
      Top = 56
      Width = 113
      Height = 57
      ItemHeight = 13
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object txtDataName: TLabeledEdit
      Left = 8
      Top = 136
      Width = 113
      Height = 21
      EditLabel.Width = 22
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1084#1103
      TabOrder = 1
      OnChange = txtDataNameChange
    end
    object txtDataXName: TLabeledEdit
      Left = 8
      Top = 176
      Width = 81
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1086#1076#1087#1080#1089#1100' '#1086#1089#1080' X'
      TabOrder = 2
      OnChange = txtDataXNameChange
    end
    object txtDataYName: TLabeledEdit
      Left = 8
      Top = 216
      Width = 81
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1086#1076#1087#1080#1089#1100' '#1086#1089#1080' Y'
      TabOrder = 3
      OnChange = txtDataYNameChange
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 176
      Width = 25
      Height = 65
      Hint = #1055#1088#1080#1089#1074#1086#1080#1090#1100' '#1101#1090#1080' '#1087#1086#1076#1087#1080#1089#1080' '#1075#1088#1072#1092#1080#1082#1091' '#1074' '#1094#1077#1083#1086#1084
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        2E010000424D2E010000000000003E000000280000000F0000003C0000000100
        010000000000F00000000000000000000000020000000000000000000000FFFF
        FF00FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E0000FC7E
        0000FC7E0000FC7E0000FC7E00007C7C00003C7800009C720000CC660000E44E
        0000F01E0000F83E0000FC7E0000FEFE0000}
    end
    object txtDescription: TMemo
      Left = 8
      Top = 272
      Width = 113
      Height = 65
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 5
      OnChange = txtDescriptionChange
    end
    object Button2: TButton
      Left = 8
      Top = 347
      Width = 113
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 24
      Width = 105
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1092#1072#1081#1083#1072
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmap file|*.bmp|All files|*.*'
    Left = 128
    Top = 8
  end
  object SaveDialog2: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text file|*.txt|Data file|*.dat|All files|*.*'
    Left = 160
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text File|*.txt|Data File|*.dat|All files|*.*'
    Left = 192
    Top = 8
  end
end
