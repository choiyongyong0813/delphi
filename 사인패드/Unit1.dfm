object Form1: TForm1
  Left = 651
  Top = 321
  Width = 1305
  Height = 618
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object KSNet_Dongle1: TKSNet_Dongle
    Left = 200
    Top = 56
    Width = 233
    Height = 145
    TabOrder = 0
    ControlData = {0000010015180000FC0E000000000000}
  end
  object Button1: TButton
    Left = 448
    Top = 72
    Width = 129
    Height = 73
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
