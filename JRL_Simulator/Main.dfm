object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'JRLP Simulator'
  ClientHeight = 925
  ClientWidth = 1274
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ___pnBase: TPanel
    Left = 0
    Top = 122
    Width = 1274
    Height = 803
    Align = alClient
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 144
    ExplicitWidth = 185
    ExplicitHeight = 41
    object memo_Data: TAdvMemo
      Left = 0
      Top = 702
      Width = 1274
      Height = 101
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alBottom
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 3355443
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsSingle
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.GutterColor = 3355443
      Gutter.GutterColorTo = 3355443
      Gutter.LineNumberTextColor = 2129339
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      ReadOnly = True
      RightMargin = 211
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      TabOrder = 0
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
      ExplicitTop = 551
      ExplicitWidth = 1024
    end
    object memo: TAdvMemo
      Left = 528
      Top = 0
      Width = 746
      Height = 702
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      Align = alRight
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 3355443
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsNone
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.GutterColor = 3355443
      Gutter.GutterColorTo = 3355443
      Gutter.LineNumberTextColor = 2129339
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 2262986
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = True
      SmartTabs = False
      TabOrder = 1
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
    end
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 528
      Height = 702
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 248
      ExplicitTop = 176
      ExplicitWidth = 150
      ExplicitHeight = 150
      object TPage
        Left = 0
        Top = 0
        Caption = 'Connection'
        ExplicitWidth = 150
        ExplicitHeight = 150
        object __pnBase_00_Connection: TPanel
          Left = 0
          Top = 0
          Width = 528
          Height = 702
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = -6
          ExplicitTop = -6
          ExplicitWidth = 800
          object lb_Title_Local_IP: TLabel
            Left = 24
            Top = 30
            Width = 50
            Height = 16
            Caption = 'Local IP'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Title_Multicast_IP: TLabel
            Left = 24
            Top = 74
            Width = 76
            Height = 16
            Caption = 'Multicast IP'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lb_Title_Multicast_Port: TLabel
            Left = 24
            Top = 116
            Width = 91
            Height = 16
            Caption = 'Multicast Port'
            Color = 2129339
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object ed_MCast_Port: TAdvEdit
            Left = 130
            Top = 111
            Width = 100
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 65535
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 5
            ParentFont = False
            TabOrder = 8
            Text = '14759'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_MCast_IP_1: TAdvEdit
            Left = 130
            Top = 69
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 4
            Text = '233'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_1: TAdvEdit
            Left = 130
            Top = 26
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 0
            Text = '192'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_2: TAdvEdit
            Left = 183
            Top = 26
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 1
            Text = '168'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_3: TAdvEdit
            Left = 236
            Top = 26
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 2
            Text = '0'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_Local_IP_4: TAdvEdit
            Left = 289
            Top = 26
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 3
            Text = '174'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_MCast_IP_4: TAdvEdit
            Left = 289
            Top = 69
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 7
            Text = '111'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_MCast_IP_3: TAdvEdit
            Left = 236
            Top = 69
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 6
            Text = '111'
            Visible = True
            Version = '3.3.5.3'
          end
          object ed_MCast_IP_2: TAdvEdit
            Left = 183
            Top = 69
            Width = 47
            Height = 26
            EditAlign = eaCenter
            EditType = etNumeric
            EmptyText = '0'
            EmptyTextStyle = []
            MaxValue = 255
            LabelFont.Charset = DEFAULT_CHARSET
            LabelFont.Color = clWindowText
            LabelFont.Height = -11
            LabelFont.Name = 'Tahoma'
            LabelFont.Style = []
            Lookup.Font.Charset = DEFAULT_CHARSET
            Lookup.Font.Color = clWindowText
            Lookup.Font.Height = -11
            Lookup.Font.Name = 'Arial'
            Lookup.Font.Style = []
            Lookup.Separator = ';'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentFont = False
            TabOrder = 5
            Text = '111'
            Visible = True
            Version = '3.3.5.3'
          end
          object btn_Create_Socket: TAdvGlassButton
            Left = 130
            Top = 143
            Width = 100
            Height = 32
            Cursor = crHandPoint
            BackColor = 3355443
            Caption = 'Create'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 2262986
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ForeColor = clWhite
            GlowColor = clOlive
            InnerBorderColor = 3355443
            OuterBorderColor = cl3DDkShadow
            ParentFont = False
            ShineColor = clGray
            TabOrder = 9
            Version = '1.3.0.2'
            OnClick = btn_Create_SocketClick
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = 'Protocol'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_01_Protocol: TPanel
          Left = 0
          Top = 0
          Width = 528
          Height = 702
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 619
          ExplicitWidth = 545
          ExplicitHeight = 185
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 2
        Caption = 'Setting'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_02_Setting: TPanel
          Left = 0
          Top = 0
          Width = 528
          Height = 702
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 619
          ExplicitWidth = 545
          ExplicitHeight = 185
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 3
        Caption = 'Generator'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object __pnBase_03_Generator: TPanel
          Left = 0
          Top = 0
          Width = 528
          Height = 702
          Align = alClient
          BevelOuter = bvNone
          Color = 3355443
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 619
          ExplicitWidth = 545
          ExplicitHeight = 185
        end
      end
    end
  end
  object MainRibbonMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 1274
    Height = 122
    Cursor = crHandPoint
    BarManager = BarMgr
    ColorSchemeName = 'MetropolisDark'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    ExplicitWidth = 1024
    object Menu: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          ToolbarName = 'BarMgrBar1'
        end>
      Index = 0
    end
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 528
    Top = 1
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1058
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MainBtn_Connection'
        end
        item
          Visible = True
          ItemName = 'MainBtn_Protocol'
        end
        item
          Visible = True
          ItemName = 'MainBtn_Setting'
        end
        item
          Visible = True
          ItemName = 'MainBtn_Generator'
        end
        item
          Visible = True
          ItemName = 'MainBtn_Version'
        end
        item
          Visible = True
          ItemName = 'MainBtn_Test'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MainBtn_Connection: TdxBarLargeButton
      Caption = 'Connect'
      Category = 0
      Hint = 'Connect'
      Visible = ivAlways
      OnClick = MainButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050000
        000D000000150000001A0000001C0000001C0000001C0000001C0000001C0000
        001D0000001D0000001D0000001D0000001D0000001D0000001D0000001E0000
        001E0000001E0000001E0000001E0000001E0000001E0000001F0000001F0000
        001F0000001F0000001E000000180000000F00000006000000020000000C0621
        3C5E1368C1EC1672D6FF1672D6FF1671D6FF1670D6FF1670D5FF1670D5FF166F
        D5FF166FD4FF166FD4FF166ED4FF156DD4FF156CD3FF156DD3FF156CD2FF156C
        D2FF156BD2FF156AD2FF146AD2FF146AD1FF146AD1FF1569D0FF1569D0FF1568
        D0FF1469D0FF1568D0FF1361C2F2061D3A610000000F0000000300000014136A
        C3E93094F4FF38A1FFFF38A1FFFF38A1FFFF38A0FFFF38A0FFFF37A0FFFF389F
        FFFF389FFFFF389FFFFF389FFFFF2B97F7FF178DEEFF178DEEFF178CEEFF178C
        EEFF168CEEFF158AEEFF158AEDFF158AEDFF158AEDFF148AEDFF1489EDFF1489
        EDFF1488EDFF1289EDFF1380E4FF115DB8EA0000001700000006000000181877
        DAFF3BA2FFFF329DFFFF329CFFFF329DFFFF329DFFFF319BFFFF319BFFFF329C
        FFFF319BFFFF329DFFFF319BFFFF2B98FBFF1589EEFF1588EEFF1488EEFF1488
        EDFF1487EDFF1488EDFF1387EDFF1387EDFF1387EDFF1386EDFF1386EDFF1286
        EDFF1286ECFF1286ECFF1589EDFF1469D1FF0000001C0000000700000018187A
        DCFF3DA5FFFF339EFFFF339EFFFF339EFFFF329DFFFF339EFFFF339EFFFF339E
        FFFF339EFFFF339EFFFF329DFFFF319DFEFF178AEFFF168AEFFF1689EEFF1689
        EEFF1589EEFF1588EEFF1588EEFF1588EEFF1487EEFF1487EEFF1487EDFF1387
        EDFF1387EDFF1387EDFF168BEEFF146AD2FF0000001D00000007000000181A7C
        DDFF3EA4FFFF349EFFFF349DFFFF4BA8FDFFC4E0FAFFFCFAF8FFC4E0FAFF4BA8
        FDFF349EFFFF349DFFFF349DFFFF389FFEFFF9F5F1FFF9F5F0FFF9F5F0FFF9F4
        F0FF178AEFFF168AEFFF168AEFFF168AEFFFF9F4F0FFF9F4F0FFF9F4F0FFF4F0
        EFFF1587EEFF1587EEFF188BEFFF156BD3FF0000001C00000007000000171A7D
        DEFF40A7FFFF35A0FFFF36A1FFFFC4DEF6FFFAF6F3FFF9F5F1FFFAF6F3FFC9E0
        F7FF35A0FFFF369FFFFF35A0FFFF389FFDFFF4EDE6FFF2EAE1FFF2EAE1FFF1E8
        DFFF188AF0FF188AEFFF188AEFFF178AEFFFF2E9E0FFF2E9E0FFF2E9E0FFEBE4
        DEFF1689EFFF1689EFFF198EEFFF156DD4FF0000001B00000007000000161B80
        DEFF42AAFFFF37A1FFFF37A1FFFFEBE7E8FFF9F5F1FFF9F5F1FFF9F5F1FFF0EB
        EAFF37A1FFFF37A1FFFF36A2FFFF4DA9FAFFF6EFE9FFF3EAE1FFF3EAE1FFDED9
        D9FF1B8CF0FF1A8CF0FF1A8CF0FF2690EEFFF2EAE1FFF2E9E1FFF2E9E1FFDEDA
        DBFF1789EFFF178AEFFF1C8FF0FF156ED5FF0000001B00000007000000151D82
        E0FF46ACFFFF38A3FFFF38A3FFFFADB9D1FFF3EBE6FFF9F4F0FFF3EBE6FFB2BB
        D1FF38A3FFFF38A3FFFF38A2FFFF7DBBF5FFF7F1ECFFF3EAE2FFF3EAE2FFB2BD
        D1FF1C8DF1FF1C8DF1FF1C8DF1FF4299EBFFF2EAE1FFF2EAE1FFF2EAE1FFC6CC
        D6FF198BF0FF198BF0FF1F90F1FF156ED6FF0000001A00000007000000151E86
        E3FF46ADFFFF39A5FFFF39A5FFFF2D7CD9FFA3B1CEFFE0D2CEFFA2B1CDFF2C7B
        D7FF39A5FFFF39A5FFFF39A5FFFFD3E3F3FFF8F4EFFFF3EBE2FFF3EAE2FF729A
        CFFF1E8FF2FF1E8EF2FF1D8EF2FF68A8E7FFF3EAE1FFF3EAE1FFF2EAE1FFA0B4
        D2FF1C8CF1FF1A8BF1FF2091F2FF1571D8FF0000001900000006000000141F87
        E3FF49B0FFFF3AA7FFFF3AA7FFFF359FFAFF1975DBFF0C60CDFF1975DBFF359F
        FAFF3AA7FFFF3AA7FFFF85C7FCFFFAF6F2FFF9F5F1FFF3ECE4FFEDE2D9FF3185
        DDFF2090F3FF2091F3FF1F90F2FFA7C6E7FFF3EAE2FFF3EAE2FFF3EAE1FF749D
        D2FF1D8DF2FF1D8DF1FF2393F2FF1672D8FF000000180000000600000013218B
        E4FF4AB2FFFF3CA9FFFF3CA9FFFF3CA7FFFF3CA9FFFF3CA9FFFF3CA9FFFF3BA8
        FFFF3CA9FFFF67BAFDFFF5F5F6FFF9F6F2FFF9F5F1FFF3ECE5FF9EADC9FF1E8B
        EDFF2292F3FF2192F3FF2894F2FFE5E6E6FFF3EAE2FFF3EAE2FFF1E7DFFF428B
        DBFF1F90F2FF1E8EF2FF2696F3FF1773D9FF000000180000000600000012238D
        E5FF4DB4FFFF3EABFFFF3DABFFFF3EABFFFF3EABFFFF3DABFFFF3DABFFFF3EAB
        FFFF85C9FDFFF5F6F7FFFAF6F2FFFAF6F2FFFAF6F2FFE2D8D4FF2F7BD5FF2494
        F4FF2493F4FF2493F4FF72B6F1FFF3ECE4FFF3EBE3FFF3EBE2FFD3D0D3FF1D86
        EAFF2191F3FF2090F3FF2897F4FF1675DBFF000000170000000600000012248F
        E7FF4FB6FFFF40ADFFFF3FACFFFF40ADFFFF3FACFFFF5AB8FEFF8DCDFDFFD9EC
        FAFFFCF9F7FFFAF6F2FFFAF6F2FFFAF6F2FFF0E6E0FF5688CCFF238EEFFF2696
        F5FF2695F5FF2A96F4FFE0E5EBFFF3EBE2FFF3EBE3FFF3EAE2FF7D9DCCFF2392
        F4FF2392F4FF2391F4FF2B99F5FF1777DBFF0000001600000006000000112592
        E8FF51B9FFFF41B0FFFF41B0FFFFFDFBFAFFFDFBFAFFFCFAF8FFFBF9F7FFFAF8
        F4FFFAF6F3FFFAF6F3FFF9F5F2FFEDE1DBFF7599CDFF2B91ECFF2998F6FF2898
        F6FF2898F5FF89C2F2FFF5EDE5FFF4ECE4FFF4ECE4FFE7DDD7FF2E81DCFF2594
        F5FF2594F5FF2594F4FF2E9CF5FF1779DDFF0000001500000005000000102795
        E9FF53BAFFFF42B1FFFF42B1FFFFFBF7F4FFFBF7F4FFFAF7F4FFFAF7F4FFFAF7
        F4FFFAF7F3FFF4EDE8FFE1D8D5FF5689CDFF288AE6FF41B0FFFF2B9AF6FF2B9B
        F6FF49A6F4FFEDEBEBFFF4ECE5FFF4ECE4FFF3EAE2FF89A1C9FF248FF0FF2796
        F5FF2695F5FF2694F5FF319CF6FF187BDEFF00000015000000050000000F2998
        EAFF55BDFFFF44B2FFFF43B3FFFFFBF8F5FFFBF8F4FFF8F2EFFFF6EFEBFFF0E6
        E1FFE9DBD5FFA1B2CFFF3076CEFF3196EDFF43B3FFFF43B3FFFF32A0F8FF3EA4
        F6FFD6E5F1FFF4EDE7FFF4EDE5FFF4EDE5FFD8D1D1FF247CDBFF2999F6FF2997
        F6FF2897F6FF2897F6FF329FF7FF197CDFFF00000014000000050000000F2B9B
        EBFF57BFFFFF45B5FFFF45B5FFFFE7D8D1FFE7D8D1FFC8C7D0FFAFB9D0FF7499
        CEFF2970CDFF1F7CDCFF3DA8F7FF46B5FFFF45B5FFFF46B5FFFF49ADF9FFD1E4
        F2FFF6EFE9FFF5EEE7FFF5EDE6FFEDE1D9FF5789CCFF2996F4FF2C9BF7FF2C9A
        F7FF2B99F7FF2A99F7FF36A2F7FF197DE1FF00000013000000050000000E2D9C
        ECFF5AC2FFFF47B8FFFF47B6FFFF0D62CCFF0D62CCFF156ED3FF1C78D9FF2C90
        E7FF3FADF8FF47B6FFFF47B6FFFF47B6FFFF47B6FFFF6DC6FEFFE4EEF6FFF6F1
        EAFFF5EEE8FFF5EEE7FFF0E5DEFF8CA3C9FF2288E8FF2F9EF8FF2E9DF8FF2E9D
        F7FF2D9BF7FF2D9AF7FF39A4F8FF1A80E1FF00000012000000050000000D2FA0
        EEFF5CC3FFFF49B9FFFF48BAFFFF49B9FFFF48BAFFFF49B9FFFF49B9FFFF48BA
        FFFF48BAFFFF49B9FFFF49B9FFFF4FBBFFFF9CD8FDFFF6F8F8FFF9F6F2FFF6EF
        E9FFF6EFE9FFF0E7DFFFA3B0CAFF1F7ADDFF329FF8FF319FF8FF319EF8FF309F
        F8FF309DF8FF2F9DF8FF3CA6F9FF1B82E3FF00000012000000040000000C31A2
        EEFF5FC5FFFF4BBBFFFF4ABAFFFF4ABAFFFF4BBBFFFF4ABAFFFF4ABAFFFF4BBB
        FFFF4BBBFFFF50BCFFFF90D4FDFFE8F3FAFFFCFAF8FFFBF8F5FFFAF7F4FFF6F0
        EAFFEEE4DDFFA6B2CAFF1E75D8FF33A0F8FF34A2F9FF33A0F9FF32A1F9FF329F
        F9FF329FF9FF319FF9FF40A8F9FF1C83E4FF00000011000000040000000C33A4
        F0FF61C7FFFF4CBDFFFF4CBDFFFF4CBDFFFF4CBDFFFF65C6FEFF70CAFEFF8FD5
        FDFFC8E9FCFFF7FAFAFFFCFBF9FFFBF9F7FFFBF8F6FFFBF8F6FFF9F5F2FFEBDE
        D6FF8CA5CAFF1C75D8FF35A3F8FF37A5FAFF36A4FAFF35A3FAFF35A2F9FF34A2
        F9FF34A1F9FF34A1F9FF42AAFAFF1D86E5FF00000010000000040000000B35A7
        F0FF62C8FFFF4DBEFFFF4DBEFFFFFEFDFCFFFEFDFCFFFDFCFBFFFDFCFAFFFDFC
        FAFFFCFAF8FFFCF9F7FFFCF9F7FFFCF9F6FFFBF7F4FFF1E9E4FFD6D0D2FF5688
        CCFF1D7DDEFF38A7FAFF39A7FBFF38A7FAFF38A7FAFF37A5FAFF37A5FAFF37A5
        FAFF36A5FAFF36A3FAFF46ADFBFF1D88E6FF0000000F000000040000000A37A9
        F1FF64CBFFFF4FC0FFFF4EC1FFFFFCFBF9FFFCFAF8FFFCFAF8FFFCFAF8FFFCFA
        F8FFFCFAF8FFFCFAF7FFF9F5F1FFF2E9E5FFDFD5D6FF7C9FCFFF1E70D0FF3298
        ECFF3CABFBFF3BABFBFF3BA9FBFF3BA9FBFF3AA8FBFF3AA8FBFF39A7FBFF38A7
        FBFF38A7FBFF38A5FAFF49AFFBFF1F8AE7FF0000000F000000040000000A3AAC
        F2FF66CDFFFF4FC2FFFF50C3FFFFFDFBF9FFFDFBF9FFFDFBF9FFF8F4F2FFF5EF
        ECFFF1E9E4FFEADDD8FFC6C7D2FF7FA1D0FF2674CEFF2E92E5FF4DBEFDFF4ABB
        FEFF3FADFCFF3DACFCFF3DACFCFF3DABFBFF3CABFBFF3CABFBFF3BA9FBFF3BA9
        FBFF3AA8FBFF39A9FBFF4AB3FCFF208CE8FF0000000E00000004000000093BAD
        F2FF68CEFFFF51C4FFFF51C4FFFFE8DAD4FFE8DAD4FFE5D9D3FFBDC2D2FFA1B3
        D1FF759CCFFF2B73CDFF1973D4FF3092E5FF4CBBFAFF51C4FFFF51C4FFFF4EC1
        FFFF41AFFCFF3FAFFCFF40AFFCFF3FADFCFF3FADFCFF3EACFCFF3EACFCFF3DAC
        FCFF3CACFCFF3CACFCFF4DB5FCFF208EE9FF0000000D00000003000000083DAF
        F3FF6ACFFFFF52C6FFFF52C6FFFF0F65CCFF1064CCFF1066CCFF1D78D6FF2684
        DDFF3398E7FF4AB8F8FF52C6FFFF53C5FFFF52C6FFFF53C5FFFF53C5FFFF53C5
        FFFF44B4FDFF43B1FDFF41B0FDFF41B0FDFF40B0FDFF40AEFCFF3FAEFCFF3FAE
        FCFF3FACFCFF3EACFCFF50B7FCFF2291EAFF0000000C00000003000000073FB1
        F4FF7AD6FFFF54C8FFFF54C8FFFF54C8FFFF54C8FFFF54C8FFFF54C8FFFF54C8
        FFFF54C6FFFF54C8FFFF54C8FFFF54C8FFFF54C6FFFF54C6FFFF54C6FFFF54C8
        FFFF48B8FDFF45B5FDFF43B2FDFF43B2FDFF42B2FDFF42B0FDFF42B0FDFF41B0
        FDFF41AFFDFF40AEFDFF60BEFDFF2392EBFF0000000B00000003000000053DA5
        E3EE8CD7FCFFA6E4FFFFA6E4FFFFA5E4FFFFA5E4FFFFA3E3FFFFA3E3FFFFA3E3
        FFFFA2E3FFFFA2E2FFFFA0E2FFFFA0E2FFFFA0E2FFFF9FE2FFFF9FE2FFFF9DE2
        FFFF99DBFEFF94D6FEFF94D5FEFF91D5FEFF90D5FEFF90D4FEFF8FD4FEFF8ED2
        FEFF8CD2FEFF8BD1FEFF70C1F9FF2288DAEE000000090000000200000003102D
        3D443698CED842B5F4FF42B5F4FF42B3F4FF42B3F4FF42B3F4FF41B2F4FF41B1
        F4FF41B1F4FF41B1F4FF41B0F4FF41B0F3FF40B0F3FF40AFF3FF3FAFF2FF3FAE
        F2FF35A7F1FF279DEFFF279CEEFF269BEEFF269BEEFF2699EEFF269AEEFF2699
        EEFF2699EEFF2598EDFF1F7FC5D909253A470000000500000001000000010000
        0003000000040000000600000006000000060000000600000007000000070000
        0007000000070000000700000007000000070000000800000008000000080000
        0008000000080000000800000008000000080000000900000009000000090000
        0009000000090000000900000007000000040000000200000000}
      Width = 60
    end
    object MainBtn_Protocol: TdxBarLargeButton
      Tag = 1
      Caption = 'R-Time Protocol'
      Category = 0
      Hint = 'R-Time Protocol'
      Visible = ivAlways
      OnClick = MainButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0004000000040000000200000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000070000
        000D0000000E0000000A00000005000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000040000000EA55E
        37FF5E321BA91008053300000011000000090000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000500000013A662
        38FFC9996DFF9F5C36F9502A1896070402240000000F00000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000500000014AA65
        3BFFE7C99CFFE1BC8AFFC18D61FF93522FEC3E22137A020101190000000D0000
        0007000000030000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000400000013AB6A
        3FFFE9CEA3FFDFB67FFFE1BD89FFDFB88AFFBB8359FF864929DC2C180E5F0000
        00140000000C0000000500000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000400000011AF6E
        44FFEBD1ACFFE1BA83FFE1B983FFE1BA85FFE4C190FFDAB486FFB3784FFF7542
        25C51E110948000000120000000A000000050000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000400000010B273
        48FFEED7B3FFE3BE8AFFE2BD89FFE2BC88FFE2BC87FFE2BC8AFFE6C394FFD5AA
        7EFFAF7048FF633820AB0F090530000000100000000900000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000040000000FB478
        4DFFF1DABBFFE5C290FFE5C28FFFE4C08EFFE4C08DFFE3BE8BFFE3BD89FFE4BF
        8CFFE7C596FFCD9F73FFA5663FF954301D95080402230000000E000000080000
        0003000000010000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000EB77B
        53FFF3E0C4FFE8C696FFE7C695FFE7C595FFE6C493FFE5C291FFE4C08EFFE3BF
        8BFFE2BD88FFE4C08DFFE4C294FFC7966AFF9A5E39EC40261677020101180000
        000B000000040000000100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000DBA82
        59FFF5E4CAFFEACB9DFFEACA9CFFE9C99BFFE9C999FFE7C697FFE7C494FFE5C2
        90FFE4BF8DFFE2BD89FFE1BB86FFE4BF8DFFDFBB8EFFBF895EFF8C5533DB2F1C
        1159000000090000000200000001000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000CBD86
        5DFFF7E8D1FFEDD0A3FFECCFA2FFECCEA2FFEBCDA0FFEACB9DFFE9C999FFE8C6
        96FFE6C392FFE4C08EFFE2BD89FFE1B984FFE2BC8AFFE8CCA0FFDCB890FFAC6C
        42FF0000000C0000000300000001000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000BC18D
        64FFF8EBD7FFF1D8AFFFF2DBB2FFF3DCB3FFF2DBB2FFF1D9AFFFEFD5AAFFECD1
        A4FFEACA9BFFE6C493FFE5C291FFEACEA6FFE5C9A6FFC39169FF855535C82115
        0D40000000080000000200000001000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000020000000AC491
        6AFFFBF2DBFFF6E4BEFFF6E4BEFFF5E2BCFFF5E0BAFFF4DFB7FFF2DCB3FFF0D9
        AFFFEFD7ACFFF1DDB6FFEFDBBCFFD0A581FF9D6A46E139261962000000100000
        0008000000030000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000200000009C697
        6FFFFCF5DEFFF8E9C4FFF8E8C3FFF7E7C2FFF7E5C0FFF5E3BDFFF4E0B9FFF5E4
        BFFFF6EBCDFFDEBF9EFFB4805AF35238257F0403021600000009000000050000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000200000008C99B
        75FFFDF7E0FFFAEDC9FFFAECC8FFF9EBC6FFF9E9C5FFF8E9C6FFFAEFD3FFECD7
        BAFFC69972FD6F4F369F0D090620000000090000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000200000007CBA0
        79FFFEF8E1FFFBEFCDFFFCEFCCFFFBEFCDFFFCF3D7FFF4E7CCFFD4AF8BFF916B
        4CC5221911390000000900000005000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000006CDA4
        7EFFFEFAE1FFFDF2D1FFFEF5D9FFFBF2D8FFDFC2A1FFAC8360DF3E2F225B0000
        0009000000050000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000005D0A8
        83FFFFFAE2FFFDF8DFFFE9D4B5FFC29A76F2594533790504030E000000050000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000004D2AC
        87FFF1E2C6FFD2B08AFC785F479A0E0B09190000000500000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000002D4B0
        8BFF95785BB9221B152F00000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MainBtn_Setting: TdxBarLargeButton
      Tag = 2
      Caption = 'Setting'
      Category = 0
      Hint = 'Setting'
      Visible = ivAlways
      OnClick = MainButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000040000000600000006000000040000
        0002000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00020000000300000005000000080000000E00000016000000160000000F0000
        0008000000050000000400000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        00080000000F000000110000001628201D7070594FFF6F584FFF201816710000
        001800000014000000110000000A000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000070404
        031C594842C63E302AB30E0B0A4B53423CC4B7A69DFFAD998EFF46352FC50E0B
        0A4F372925B040302ACC040302240000000A0000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000020000000B604F
        48C7CABCB5FFAB9990FF745E56FF7A635AFECAB8ADFFC7B4A8FF6B544BFE755F
        56FE9F8B80FFAA968AFF41312BC9000000100000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000C5344
        3EABC2B4ADFFE2D8D2FFD0C1B7FFC2B1A5FFCEBDB2FFCCBAB1FFBEAAA0FFC9B6
        AAFFCAB5A9FFA28E83FF3C2F29B1000000120000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000040000000E120F
        0D3B927F77FCE9E1DDFFD7C9C1FFD5C7BEFFE1D6D0FFE6DDD6FFDFD3CBFFD0C0
        B5FFCBB8AEFF7A6359FD0E0B0A47000000140000000700000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000072D24216C5242
        3BBB8B756BFED8CDC7FFE1D7D0FFCFC2BBFF998179FF9F887EFFD2C5BEFFE1D6
        CFFFC3B1A6FF755E55FF4F3E38C2281F1C720000000C00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000020000000A957D72FFD9D0
        CCFFEBE4E1FFE7E0DCFFE7DDD9FF897167FF251D1B64261E1C65987F77FFE8E0
        DBFFD2C2B9FFCFC0B4FFBBA79CFF836C62FF0000001000000004000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000000000000100000001000000010000000300000009998276FFDBD2
        CEFFF6F3F1FFF9F6F5FFEBE5E1FF7E625BFF1F17155C2018165D8A7068FFEDE6
        E2FFDACAC3FFD2C4BCFFC9BBB5FF877066FF0000000F00000004000000000000
        0000000000000000000000000001000000020000000400000005000000040000
        0002000000010000000200000004000000060000000500000007352E2A606A5B
        52B59A8379FEECE7E4FFEDE6E3FFCEC1BCFF8B736CFF8C736DFFD1C6C0FFE7DE
        D9FFD4C8C1FF8E776CFD60514AB92E2623620201010C00000002000000000000
        0000000000000000000100000003000000080000000F0504031E020202160000
        000800000005000000090101011305040320000000110000000B0000000B1713
        1232AB978EFDF4F0EEFFF0EAE7FFEEE8E4FFF0EAE7FFECE5E1FFEBE3DFFFEBE5
        E1FFE7DEDAFF8A756BFD130F0E3C0000000D0000000400000001000000000000
        0000000000000000000200000007100C0B373B2D289F675248F342332DB20000
        0018000000110000001841322CB2644E46F4382B25A10F0B0A3A0000000D695A
        53AADDD5D1FFF5F2F0FFF4F1EFFFEBE5E2FFFCFAFAFFF0E9E7FFE0D7D1FFF9F7
        F6FFF7F4F2FFC8BCB5FF54453DAF000000090000000200000000000000000000
        000000000001000000030000000B392C2795B1A39CFFD9CFC7FFA18E84FF3529
        24960000002535292599A5958DFFCABBB0FFA3928AFF35292497000000117868
        5FBDE5DFDCFFDED4D1FFAF9C92FDA28B80FDFAF8F8FFF2EDEBFF9E887EFDA997
        8DFBD9CFCBFFE1DAD5FF73625AC1000000070000000200000000000000000000
        000100000002000000050000000E352A258CAE9F99FFE1D7D0FFD6C9BFFF8D78
        6FFF6B5349FF8D786FFFD3C4BBFFD0C2B6FFA29188FF32262290000000130605
        05147B6B62C06A5B54A61814132E72625AB2E2DAD6FFE1DAD6FF705F58B31512
        112D645750A47A6A61C606050412000000030000000100000000000000020000
        0005000000090000000D000000163329248AA19189FFDCD1C9FFD1C1B6FFD9CD
        C2FFDCD1C7FFD7C9BFFFCDBFB2FFD5C7BDFF96837AFF332723910000001B0000
        0013000000100000000B000000073B332F5FA89186FFA89085FF3B332F5F0000
        0005000000050000000400000003000000010000000000000000000000050F0C
        0B2D372D28842F252176362B26897A665DF4D2C6BEFFD6C8BFFFD2C5B9FFD2C4
        B8FFD1C3B7FFD1C2B7FFD1C2B6FFD2C3B8FFCBBDB4FF7A6259F834282493382C
        279940312CA6100D0B3800000009000000040000000300000003000000020000
        0001000000010000000100000000000000000000000000000000000000094336
        3197B4A59FFFA7968EFFA6958DFFD5C8C4FFDCCFC8FFD7C8BEFFD5C7BDFFD5C7
        BDFFD3C6BBFFD3C5BBFFD2C5BBFFD2C4B9FFD3C6BBFFCFC3B9FF9C8A80FFA898
        8EFFAF9F95FF40322CA40000000E000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000040403137964
        5AF0F0EDEAFFEEE8E5FFE9E1DCFFE2D7D1FFE0D3CCFFDDCFC7FFDCD0C7FFE5DD
        D7FFF0EBE8FFF1EBE7FFE6DBD6FFD8CAC0FFD5C6BCFFD5C8BEFFDBD0C8FFD9CD
        C3FFE1DAD4FF6F5951F50504041B000000040000000100000000000000000000
        00000000000000000000000000000000000000000000000000000302020E4F41
        3AA7BEB1ACFFF9F7F5FFECE5E0FFE2D8D0FFE1D8D0FFE1D6D0FFDED6D0FFAD9D
        96FF948078FFB09F99FFE6DFDBFFE5DCD7FFD7C8BFFFD6C8BEFFD6C7BEFFEBE3
        DFFFAA9B95FF41332E9F0101010F000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000040000
        000B4236308CAA9A92FFF6F3F1FFE6DDD6FFE5DAD3FFE4DAD3FFA3928CFF3C32
        2F830000001B40363389A4938DFFECE4E0FFDACBC3FFD8CBC2FFE3D9D4FF9987
        7FFF3227237F0000001100000006000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000700000012806A60F9F3F0EFFFE8E0DAFFE7DFD8FFE6DDD8FF7E6A64FC0303
        021D0000001306050524836E66FFE9E1DCFFDBCEC6FFDBCDC6FFECE5E1FF7861
        57FF0000001A0000000B00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        000940352F82AA9992FFF3EEEAFFE9E3DDFFE9E2DDFFE9E1DCFF907D77FF382D
        2B86000000173C312E8C917F7AFFE0D5CDFFDDD2C9FFDDD1C8FFE9E2DCFF9A86
        7EFF332A267D0000000F00000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020101085647
        41A1C0B4AEFFF6F3F1FFEDE6E1FFECE5E1FFECE4DFFFEBE4DFFFDAD1CBFF8C79
        74FF735D57FF8C7872FFD4CBC4FFE0D6CDFFE0D5CDFFDFD3CCFFDFD3CCFFEBE4
        DDFFAE9E97FF4437319400000009000000020000000000000000000000000000
        00000000000000000000000000000000000000000000000000000504040F8A75
        6CF1F6F4F4FFFAF8F7FFFAF9F7FFF5F2EEFFEFE9E5FFEEE7E3FFEDE7E3FFECE7
        E2FFECE6E0FFECE5DFFFECE5DFFFE7DED8FFE2D8D1FFE3DCD5FFF1EDEAFFF2EC
        E9FFF0EDEAFF826E64F507060519000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000045245
        3F94CBBFBAFFBCAEA7FFBBAEA7FFEEEAE8FFF9F6F4FFF1EBE8FFEFE9E5FFEFE8
        E5FFEFE8E4FFEEE8E4FFEEE8E4FFEEE7E3FFEBE4E1FFEDE9E7FFB6A8A1FFCCC2
        BEFFCCC2BDFF4E403AA100000008000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000021310
        0F254E433C8B3B322D6D4539347F948076F5E7E2DFFFF7F3F1FFF1EBE8FFF1EB
        E8FFF0EBE7FFF0EAE7FFF0EAE6FFF1EBE8FFEFEAE9FF98867DFB4438338A5143
        3DA151433C9F1612103300000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000030000000400000007493E3885C3B6B0FFFAF7F6FFF3EDEBFFFBF9
        F9FFFEFEFDFFFDFBFAFFF6F3F0FFF7F4F2FFBFB3ACFF4A3F38910000000C0000
        0008000000060000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000010000000453474091D0C5C0FFF9F8F5FFFAFAF8FFB09F
        97FF937C71FFAF9E96FFFCFAFAFFFAF7F5FFCCC1BCFF4F423D93000000070000
        0003000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000025A4C4698D4CBC6FFFAFAF9FFC3B5AFFF4036
        3172000000093F353172C1B4ADFFFAF9F9FFD3CAC6FF584A429D000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000011D19173261514BA19C887DF75A4C46990000
        00040000000300000005584B4499998479F75D4F48A21C181535000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000020B090915020201050000
        00010000000100000001020201060B0908160000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MainBtn_Version: TdxBarLargeButton
      Caption = 'Version'
      Category = 0
      Hint = 'Version'
      Visible = ivAlways
      OnClick = MainBtn_VersionClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000700000007000000070000
        0007000000050000000400000002000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000070000000C0000001100000016000000190000001B0000001B0000
        001900000016000000120000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
        3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000162D1E
        1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
        ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
        75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
        C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
        0011000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
        C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
        55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
        145A000000120000000600000001000000000000000000000000000000000000
        000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
        C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
        3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
        5AFA221714590000001000000005000000010000000000000000000000000000
        00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
        5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
        41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
        B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
        00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
        40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
        3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
        C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
        00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
        44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
        DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
        C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
        00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
        46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
        F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
        89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
        0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
        48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
        EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
        47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
        0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
        49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
        FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
        41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
        000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
        52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
        FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
        44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
        000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
        63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
        FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
        46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
        000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
        68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
        FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
        4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
        000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
        6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
        FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
        54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
        0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
        72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
        FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
        59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
        000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
        77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
        FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
        5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
        0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
        7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
        71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
        5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
        00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
        81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
        61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
        67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
        0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
        86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
        D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
        B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
        0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
        8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
        F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
        EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
        0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
        89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
        C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
        F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
        0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
        A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
        8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
        E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
        000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
        FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
        8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
        91F92F2623480000000500000002000000000000000000000000000000000000
        00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
        FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
        A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
        2447000000050000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000002181412229C8177C8D6BC
        B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
        FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
        0004000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000034136
        3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
        EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
        7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MainBtn_Test: TdxBarLargeButton
      Caption = 'Test'
      Category = 0
      Hint = 'Test'
      Visible = ivAlways
      OnClick = MainBtn_TestClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000004000000050000000700000007000000070000
        0006000000040000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000100000004000000090000000F000000150000001A0000001C0000001B0000
        0017000000110000000A00000005000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000700000010000302230020167900402CCA004A32E300563BFF004A33E30040
        2CCB0020167B0003022600000012000000080000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000080000
        0014001B126A004F35EE13674BFF2C7F61FF3C8D6FFF166346FF409075FF2C7F
        61FF13674BFF004F36EF001B136E000000180000000A00000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000008000000150131
        22A1095E42FF328467FF368F6EFF2A8964FF2C8D6AFF0F6243FF31916EFF2B89
        65FF368F6EFF328467FF095E43FF003020A20000001A0000000A000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000600000012012D20960E64
        47FF388D6EFF288864FF248C64FF249169FF2C9A72FF116B49FF319E78FF2591
        69FF248C65FF288965FF388D6FFF0D6246FF002C1E9B00000018000000080000
        0002000000010000000000000000000000000000000000000000000000000000
        00000000000000000000010101040303020D020201130119125E0A6144FF348B
        6CFF258863FF259169FF279A71FF29A074FF30A77EFF147350FF35AB83FF2AA0
        75FF289A71FF25926AFF268964FF348B6DFF085E42FF001A11690302021A0404
        0313010101060000000000000000000000000000000000000000000000000000
        000000000000000000000302020B403532FA1C1B1880025238E72E8466FF2689
        63FF26946BFF299E74FF2BA67CFF2DA87EFF34B185FF167A55FF3AB58BFF2EA9
        7FFF2CA77CFF299F75FF27956DFF268A65FF2E8365FF004C33E91B1B178B3B30
        2DFA0403030F0000000000000000000000000000000000000000000000000000
        00000000000000000000020101081C171571264838FD1A7153FF2A8A66FF2592
        6AFF299F75FF2DA87DFF2FAD82FF31B386FF38B78EFF19805BFF3FBB93FF32B3
        87FF30AF84FF2EA97FFF2BA177FF27936CFF2B8C69FF186D50FF214234FD1C17
        157C0302020C0000000100000000000000000000000000000000000000000000
        00000000000000000001000000060303021C07563BED2E8667FF258D68FF299C
        73FF2DA77DFF31AE84FF32B588FF33B98CFF3BBD93FF1B8660FF42C198FF34B9
        8EFF33B68AFF32B086FF2EA97FFF2B9E75FF26906AFF2D8668FF054F35EF0404
        0329000000090000000100000000000000000000000000000000000000000000
        00000000000000000002000000080217104E146D4FFF298A67FF27966EFF2CA3
        7AFF30AD82FF33B589FF35B98EFF36BD91FF3FC298FF1D8C65FF44C59DFF38BE
        92FF36BB91FF34B78CFF32AF85FF2EA67EFF2A9771FF2A8C69FF10654AFF0015
        0F580000000C0000000300000000000000000000000000000000000000000000
        000000000000000000020000000A03302189237C5DFF268D68FF2A9D75FF2FA9
        80FF33B288FF36B98EFF38BE93FF38C196FF42C59DFF20916AFF47C8A0FF3AC2
        97FF39C095FF37BC91FF36B58CFF31AC84FF2DA078FF28906AFF21775AFF012B
        1E91000000110000000400000001000000000000000000000000000000000000
        000000000000000000030000000C064932BF2B8565FF28936DFF2DA27AFF30AD
        83FF35B68CFF39BC92FF3DC299FF47C8A0FF57CFAAFF31A17DFF5CD1AFFF49CA
        A3FF3FC39CFF3BBF96FF37B990FF34B188FF2FA57DFF299570FF288163FF0242
        2EC5000000150000000500000001000000000000000000000000000000000000
        000000000000000000030000000E08583DDD298866FF2A9770FF2FA77DFF33B0
        87FF3ABB92FF40C29AFF52CCA8FF5ED1B0FF65D5B5FF3BAA86FF6BD8BAFF5FD3
        B1FF56CFABFF44C59EFF3DBE96FF35B58CFF32A982FF2D9A75FF2A8868FF0352
        37E5000000170000000600000001000000000000000000000000000000000000
        0000000000000101010502020215096344ED278967FF2B9B74FF31A980FF39B6
        8EFF42BF99FF58CCABFF67D5B5FF6BD7B9FF74DCC0FF44B28FFF7ADDC2FF6DD8
        BAFF69D6B7FF59CEADFF46C39DFF3EBA94FF34AC84FF2E9E79FF2A8E6AFF045B
        3EF6040303250101010B00000001000000000000000000000000000000000000
        00000000000009070721473B37FF0D6C4BFF298E6AFF2C9D77FF36AD86FF41BA
        93FF4FC6A1FF70D6B9FF76D9BEFF7BDDC2FF84E0C7FF4EBA97FF8AE2CAFF7EDE
        C3FF77DBC0FF71D8BCFF52C9A7FF45BE99FF3AB18CFF2FA17BFF2B926EFF0661
        42FF413632FF0908072800000001000000000000000000000000000000000000
        00000000000001010105020201130B6646ED298D6BFF2FA17AFF3CB18BFF48BE
        98FF64CFAFFF7CDAC0FF83DFC6FF8AE1C9FF93E5CEFF59C09FFF98E6D2FF8BE3
        CBFF86E0C9FF7DDCC3FF66D1B3FF4BC29EFF40B591FF33A380FF2A906DFF065F
        41F6040303230101010A00000001000000000000000000000000000000000000
        000000000000000000020000000B0B6142DC2D906FFF35A07DFF41B38DFF4FC0
        9DFF77D5BAFF8ADFC7FF91E3CEFF98E6D0FFA1EAD6FF50B292FFA5EBD8FF99E7
        D3FF93E6D0FF8BE1CAFF7AD8BDFF51C4A2FF44B694FF38A583FF2C8F6DFF0658
        3CE4000000140000000500000001000000000000000000000000000000000000
        00000000000000000002000000090B5238BA31916FFF38A27DFF46B38FFF54C1
        9FFF86DAC2FF94E1CCFF9DE6D2FFA4E9D6FFAEECDBFF46A484FFB1EEDEFFA5EB
        D9FF9FE7D5FF96E3CFFF88DDC6FF57C5A4FF4AB795FF3BA583FF2C8C6BFF074A
        33C2000000110000000400000001000000000000000000000000000000000000
        0000000000000000000100000006083826822E8D6CFF39A17EFF49B38FFF58C1
        9FFF91DEC8FF9FE5D1FFB0EADBFFBBEFE1FFC5F1E5FF429578FFC6F2E8FFBAF0
        E2FFAFECDCFFA0E6D4FF94DFCCFF5CC5A5FF4DB896FF3DA583FF268464FF0532
        22890000000D0000000300000001000000000000000000000000000000000000
        0000000000000000000100000004041D14471F825FFF41A281FF4BB190FF5CC1
        A1FFA0E1CFFFACD9CCFF8A9A91FF6D6960FF645A50FF554238FF645A51FF6D69
        5FFF899A91FFABDBCCFFA0E2D1FF5EC3A4FF4DB594FF42A483FF197958FF031A
        1250000000090000000200000000000000000000000000000000000000000000
        00000000000000000000000000030101010D126D4CEB47A283FF4FB191FF74C4
        ADFF78887DFF5E483DFF70574AFF806554FF856857FF8B6D5CFF866858FF8164
        55FF705849FF5E483DFF76887DFF6FC4ABFF50B394FF419D7FFF0E6346ED0202
        0219000000060000000100000000000000000000000000000000000000000000
        00000000000000000000010100031C181664315845FC2D8E6CFF60A790FF3F42
        3AFF685146FF8D6E5DFF8F705FFF907160FF917360FF917360FF917360FF9072
        5FFF8E705EFF8E6E5DFF685146FF3E4139FF5AA58DFF278565FF2C5240FC1D18
        166F020101080000000000000000000000000000000000000000000000000000
        0000000000000000000001010104493E3AF91C1C196E186447DE403A32FF5E49
        3DFF6F5749FF957763FF937462FF957663FF967665FF977765FF967764FF9576
        64FF947461FF957764FF70574AFF5E483DFF3F3A31FF155C40E11D1D197A453A
        35FA020202090000000000000000000000000000000000000000000000000000
        0000000000000000000000000001010101050101000612110D4E4D352CFF654E
        41FF6B5345FF8B7161FF9C7E6BFF997A67FF9A7B68FF9A7B68FF9A7B68FF997A
        67FF9B7C69FF8B7161FF6A5345FF654E40FF4D352CFF12110D560101010E0202
        020B010101030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000006251915855138
        2FFF6A5345FF6F5849FF947968FFA48675FFA28370FF9F806CFFA18470FFA486
        74FF9A7E6DFF70594BFF6A5344FF51382FFF2519158A0000000C000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000010000000200000006281B
        168D4F372EFF685143FF735C4DFF8D7463FF9F8674FFAB907FFFA08674FF8D74
        63FF735B4DFF685144FF4F372EFF271A168E0000000C00000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0006160F0C53452E27EB573F35FF695245FF725A4BFF7A6353FF715A4CFF6952
        45FF583F35FF442E27EC160F0C570000000A0000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000040D0B0A373D2F29E637251FBE402A24DB4B322AFF402A24DB3725
        1FBF372925E60B08083A00000006000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000B09092B221C1A80221C1A82000000060000000700000008000000080000
        00071D1716821C1615810907072C000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000443935FF221D1B800706051B000000010000000200000002000000020000
        00020605051B1D181680382D2AFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
    object MainBtn_Generator: TdxBarLargeButton
      Tag = 3
      Caption = 'Generator'
      Category = 0
      Hint = 'Generator'
      Visible = ivAlways
      OnClick = MainButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000B000000160000001A000000140000000D0000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        0015462D24FF25150FDA11090788020101340000001B00000010000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000060000
        00184F372DD7A27A6CFF544548FF282B48F7122252B3060B1B57000000180000
        000B000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000002000000050000
        0013291D1880836F6BFFAACAE9FF7091C3FF3D5B9DFF29448FFF0E1C419A0000
        001D0000000B0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000020000000300000004000000070000
        001005040330535775F6DAE3F0FF9EC1E5FF7495C6FF4F6CA6FF2C4F99FF0419
        469B0000001B0000000B00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000200000004000000070000000A0000000E00000011000000140000
        001B0000002A263A65B2889ECAFFCCD8EAFF1684E5FF49AAE9FF0D50B2FF0E4A
        A5FF041A47990000001A0000000B000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003000000070000000E0102041B0B172B5A142B50921A3768B51F427CD51E41
        7BD55571A6F7718AB2FF466AB0FFFFFFFFFF45A3EDFF1989E9FF4EAEEAFF0E57
        B4FF104DA7FF051C4898000000190000000A0000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000703050A2019345CA12B5798F35D84B8FF8BAACDFFA7C3DBFFAFD4E7FF88CB
        E4FF69D0E9FF68BBDDFF608BBDFF648FC6FFBFE6FBFF48A8EEFF1D92EAFF56B3
        ECFF125CB7FF1151ABFF051E4A97000000180000000A00000003000000010000
        0000000000000000000000000000000000000000000000000000000000030000
        000D23487CCA679ECFFFB4DEF4FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA0E8
        F6FF6DD8F0FF3FB2E2FF5FABD7FF538CC3FF3D90D7FFC4E8FAFF4EAFEEFF2298
        EAFF5BB6EDFF1361BAFF1355ADFF061F4C950000001600000009000000030000
        0001000000000000000000000000000000000000000000000000000000040000
        00113060A5FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6ED9F1FF40B6E6FF349FDCFF589ED1FF528CC4FF4095D9FFC8EBFCFF52B5
        F2FF279EEDFF60BBEDFF1664BEFF155CB0FF08224D9400000015000000090000
        0002000000010000000000000000000000000000000000000000000000040000
        00123263A6FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B6E7FF35A2E0FF298BD2FF5294CBFF5692C6FF459BDBFFCCEE
        FDFF58BAF4FF2CA6F2FF67BFEEFF186BC1FF1860B4FF08245093000000130000
        0008000000020000000100000000000000000000000000000000000000040000
        00113567A8FF91CEF0FFBCE6F9FFE5F8FAFFECFAFAFFEAFBFAFFD7F5FAFFACEC
        F8FF7FE0F4FF56C2ECFF49B0E7FF3D9DDCFF2F8ACFFF64A8D4FF629ECDFF48A0
        DEFFD1F1FEFF5CBFF6FF31ACF4FF6BC3F0FF1B71C4FF1A65B6FF0A2751920000
        0012000000080000000200000001000000000000000000000000000000040000
        00103669ABFF9AD2F1FFC4E9F9FFCDE5F0FFB2CEE5FF94B8DBFF6C9ECFFF4F92
        CBFF2975BDFF1863B5FF155CB1FF145AB0FF165EB4FF1963B3FF5D95C7FF609A
        CBFF4BA4DFFFD4F3FEFF63C7F7FF39B4F4FF71C8F2FF1E77C8FF1D6ABBFF0B29
        5390000000110000000700000002000000010000000000000000000000040000
        000F386DACFF7FBAE4FF81B2DDFF9EC1E0FFB2CEE5FFBDD9EAFFB7DEEEFF8CD3
        ECFF6BD5EFFF41B7E8FF35A3E2FF298CD6FF1E77C8FF2682CAFF3C91D0FF6CA3
        D3FF5C97CBFF4FA9E1FFD7F5FFFF83D6FBFF3EBEF8FF75CDF2FF227DC9FF2070
        BEFF181B278F0000000F00000006000000020000000000000000000000040000
        000E2D5485C980BEE7FFB8E2F7FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FADE3FF64B7
        E9FF80BAE6FF63A1D3FF53AFE3FFDAF6FEFF6DD2FDFF43C2F8FF7AD2F4FF7877
        7BFF7C4836FF2B10098E0000000E000000060000000200000000000000030000
        000D3D72B1FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66B9
        ECFF5DACE8FF70AFE1FF68A7D6FF56B2E5FFDDF8FFFF73D8FDFF8DBAC8FFDAC0
        B1FF9C6955FF844F3DFF190C238C0000000C0000000500000001000000030000
        000D3F75B3FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
        EDFF5EAEEBFF479EE2FF7BB5E1FF629ACAFF59B5E6FFE6F8FAFFDDC3AFFFD1B2
        9CFFDDC4B6FF55478EFF1B1A9BFF0807408B0000000B00000004000000030000
        000D4078B5FF91CEF0FFBCE6F9FFE5F8FAFFECFAFAFFEAFBFAFFD7F5FAFFACEC
        F8FF7FE0F4FF56C2ECFF49B0E7FF3D9EDEFF308DD4FF3B9AD8FF5CB6E7FF6FBF
        EEFF63B2EDFF489FE4FF54A4DFFF6589B9FF6D7580C7B88E7BFFFBF0E0FFE1C8
        B4FF9794C7FF828DE8FF2427B0FF1E1EA2FF0B0B478900000006000000030000
        000C437BB6FF9AD2F1FFC4E9F9FFCDE5F0FFB2CEE5FF94B8DBFF6C9ECFFF4F92
        CBFF2975BDFF1863B5FF155CB1FF145AB0FF165FB5FF1A65B7FF307EC5FF4993
        D3FF59A2E0FF5AABE8FF60ACE4FF376AABFF3D3D3D4F4B2F2687BE9585FFF7EE
        E6FF869CF2FF5B70E7FF949FEBFF7681D4FF21249CFF00000007000000030000
        000A467EB9FF7FBAE4FF81B2DDFF9EC1E0FFB2CEE5FFBDD9EAFFB7DEEEFF8CD3
        ECFF6BD5EFFF41B7E8FF35A3E2FF298CD6FF1E77C8FF2683CCFF3D94D4FF4491
        D3FF337BC8FF246DBFFF4088CEFF3A6FADFF000000100000000A362A45846573
        D9FFD9E6FDFF869DF3FFA8BEF6FF4852C9FF1E205D8400000004000000030000
        000936628EC780BEE7FFB8E2F7FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
        EDFF5EAFECFF469DE2FF428ED2FF2E5786C90000000D00000005000000042327
        63826B7BDFFFDAE7FDFF6071DDFF232863830000000500000002000000020000
        00094984BCFF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
        EDFF5EAFECFF48A0E5FF55A6E2FF3E75B2FF0000000C00000003000000010000
        0003282E6981505BD4FF282E6981000000040000000200000001000000020000
        00094B87BEFF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
        EDFF5EAFECFF48A0E5FF55A6E2FF4178B4FF0000000C00000003000000000000
        0001000000020000000200000002000000010000000000000000000000020000
        00084D8AC0FF91CEF0FFBCE6F9FFE4F8FAFFEAFAFAFFE8FBFAFFD1F4F9FFA1E9
        F7FF6EDAF2FF41B7E8FF35A3E2FF2A8FD8FF217FCEFF2B8DD3FF4FAEE4FF66BA
        EDFF5EAFECFF48A0E5FF55A6E2FF427AB7FF0000000B00000003000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00074F8CC2FF91CEF0FFBEE6F9FFE5F9FCFFE8FAFDFFE8FAFEFFE5F9FEFFDCF6
        FDFFDEF7FDFFDDF6FEFFD7F4FEFFCCEFFCFFB1DFF6FFACDEF7FF9DDAF6FF92D4
        F5FF76C0F1FF4BA1E6FF55A6E2FF447EB8FF0000000B00000003000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0007518FC4FFDAF2FBFFF4FDFEFFF3FDFEFFE8FAFFFFDCF8FEFFD4F5FDFFCBF2
        FDFFC7F1FCFFBEEDFCFFB8ECFDFFB3E9FDFFB0E8FCFFB0E7FCFFABE5FCFFA9E4
        FBFFA5E3FBFF9EDDFAFF82C9F1FF4680BAFF0000000A00000003000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00065391C6FFFAFEFFFFE8FBFEFFD4F5FEFFCEF5FEFFCAF3FDFFC7F1FEFFC3F0
        FDFFBFEEFDFFBBEDFDFFB7EBFCFFB2E9FCFFAEE6FCFFAAE5FCFFA5E3FBFFA1E1
        FBFF9CE0FBFF99DEFBFF96DDFBFF4983BCFF0000000800000002000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00044D83A8CBAFD6ECFFDEF4FBFFE3FAFEFFDCF7FEFFD3F4FDFFCDF3FDFFC5F0
        FDFFC2EFFCFFBBECFDFFB5EAFDFFB0E8FDFFAEE7FCFFABE5FCFFA6E4FBFFA3E2
        FBFF9FE0FBFF97DAF8FF7ABEE6FF43769ECC0000000600000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002060A0D14365C76915E9CC8EE85BCE1FFA0CEE9FFB1DAF0FFC1E5F6FFBEE5
        F6FFC5EBF9FFCCF1FDFFC6EFFDFFB8E6F9FFA8DCF3FFA3DAF3FF91CCECFF81C0
        E5FF6DADD9FF5390BEEE3154709205090C160000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000001000000030204050B1B2D3A49305269823F6B8AA84E84AACE4D84
        AACE5793C0E85FA2D3FF5FA2D2FF5692BEE84A80A7CE4A80A6CE3C6687A92D4E
        6683182A384C0204050D00000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000020000000300000003000000040000
        0004000000040000000500000005000000050000000500000005000000040000
        0003000000030000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 60
    end
  end
  object tm_Sender: TTimer
    Enabled = False
    Left = 592
  end
end
