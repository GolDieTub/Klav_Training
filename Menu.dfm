object MenuForm: TMenuForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1083#1072#1074#1080#1072#1090#1091#1088#1085#1099#1081' '#1090#1088#1077#1085#1072#1078#1077#1088
  ClientHeight = 614
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btTrening: TButton
    Tag = 1
    Left = 48
    Top = 64
    Width = 179
    Height = 25
    Caption = #1058#1088#1077#1085#1080#1088#1086#1074#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btTreningClick
    OnKeyDown = FormKeyDown
  end
  object btStatistic: TButton
    Left = 48
    Top = 223
    Width = 179
    Height = 25
    Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btStatisticClick
    OnKeyDown = FormKeyDown
  end
  object btExit: TButton
    Left = 48
    Top = 303
    Width = 179
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btExitClick
    OnKeyDown = FormKeyDown
  end
  object btYourText: TButton
    Left = 48
    Top = 175
    Width = 179
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1074#1086#1081' '#1090#1077#1082#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btYourTextClick
    OnKeyDown = FormKeyDown
  end
  object MainMenu1: TMainMenu
    Left = 288
    Top = 96
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077' '
      OnClick = N3Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1077' '
      OnClick = N2Click
    end
  end
end
