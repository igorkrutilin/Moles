object Form1: TForm1
  Left = 194
  Top = 149
  Width = 824
  Height = 464
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
  object Score: TLabel
    Left = 776
    Top = 8
    Width = 18
    Height = 37
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label0: TLabel
    Left = 680
    Top = 112
    Width = 3
    Height = 13
  end
  object MoleGenerator: TTimer
    Interval = 1500
    OnTimer = MoleGeneratorTimer
    Left = 8
    Top = 8
  end
end
