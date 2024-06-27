object Form1: TForm1
  Left = 289
  Top = 330
  Width = 638
  Height = 478
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 240
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ApdComPort1: TApdComPort
    ComNumber = 2
    Baud = 115200
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    Left = 80
    Top = 32
  end
end
