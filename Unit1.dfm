object Form1: TForm1
  Left = 373
  Top = 422
  Width = 600
  Height = 437
  Caption = 'Security Notepad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = True
  DesignSize = (
    584
    379)
  PixelsPerInch = 96
  TextHeight = 13
  object Editor: TMemo
    Left = 0
    Top = 0
    Width = 585
    Height = 381
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object MainMenu: TMainMenu
    Left = 512
    Top = 65508
    object FileItem: TMenuItem
      Caption = 'File'
      object OpenItem: TMenuItem
        Caption = 'Open...'
        object OpenWithoutCode: TMenuItem
          Action = OpenWithoutCD
        end
        object OpenWithCode: TMenuItem
          Action = OpenWithCD
        end
      end
      object SaveItem: TMenuItem
        Caption = 'Save...'
        object SaveWithoutCode: TMenuItem
          Action = SaveNoCode
        end
        object SaveWithCode: TMenuItem
          Action = SaveCode
        end
      end
      object ExitItem: TMenuItem
        Caption = 'Exit'
      end
    end
    object AboutItem: TMenuItem
      Caption = 'About'
      OnClick = AboutItemClick
    end
  end
  object OpenThatShit: TOpenDialog
    Left = 512
    Top = 32
  end
  object SaveThatShit: TSaveDialog
    Left = 512
    Top = 104
  end
  object ActionList1: TActionList
    Left = 512
    Top = 72
    object SaveNoCode: TAction
      Caption = 'Save file without code'
      ShortCut = 16467
      OnExecute = SaveNoCodeExecute
    end
    object SaveCode: TAction
      Caption = 'Save with Code'
      ShortCut = 24659
      OnExecute = SaveCodeExecute
    end
    object OpenWithoutCD: TAction
      Caption = 'Open without code'
      ShortCut = 16463
      OnExecute = OpenWithoutCDExecute
    end
    object OpenWithCD: TAction
      Caption = 'Open with Code'
      ShortCut = 24655
      OnExecute = OpenWithCDExecute
    end
  end
end
