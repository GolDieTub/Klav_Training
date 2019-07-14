object FormTraining: TFormTraining
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1058#1088#1077#1085#1080#1088#1086#1074#1082#1072
  ClientHeight = 670
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Orientation = 3
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 30
  object sgGameField: TStringGrid
    Left = 8
    Top = 80
    Width = 673
    Height = 33
    TabStop = False
    ColCount = 24
    DefaultRowHeight = 32
    Enabled = False
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Orientation = 5
    Font.Style = []
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = sgGameFieldDrawCell
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
    RowHeights = (
      32)
  end
  object btShow: TButton
    Left = 304
    Top = 8
    Width = 75
    Height = 66
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Orientation = 3
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyDown = FormKeyDown
    OnKeyPress = btShowKeyPress
  end
  object pnlTime: TFlowPanel
    Left = 486
    Top = 358
    Width = 185
    Height = 41
    Caption = '00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'System'
    Font.Orientation = 3
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object pnlMistake: TFlowPanel
    Left = 32
    Top = 358
    Width = 185
    Height = 41
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'System'
    Font.Orientation = 3
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object MainMenu: TMainMenu
    Left = 16
    Top = 136
    object miChooseText: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1090#1077#1082#1089#1090' '
      OnClick = miChooseTextClick
    end
    object miExit: TMenuItem
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      OnClick = miExitClick
    end
  end
  object MainTimer: TTimer
    Enabled = False
    OnTimer = MainTimerTimer
    Left = 16
    Top = 192
  end
  object OpenFile: TOpenDialog
    Filter = 'TrainingFile|*.trng'
    Left = 16
    Top = 256
  end
end
