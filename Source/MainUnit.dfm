object TheMainForm: TTheMainForm
  Left = 561
  Top = 204
  AutoScroll = False
  Caption = 'The Map Tool'
  ClientHeight = 581
  ClientWidth = 834
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object DescSplitter: TSplitter
    Left = 0
    Top = 455
    Width = 834
    Height = 8
    Cursor = crVSplit
    Align = alTop
    AutoSnap = False
    OnCanResize = DescSplitterCanResize
    OnMoved = DescSplitterMoved
  end
  object BasePanel: TPanel
    Left = 0
    Top = 54
    Width = 834
    Height = 401
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    Color = clScrollBar
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object MapSplitter: TSplitter
      Left = 202
      Top = 1
      Width = 8
      Height = 399
      AutoSnap = False
      Color = clScrollBar
      ParentColor = False
      ResizeStyle = rsLine
      OnCanResize = MapSplitterCanResize
      OnMoved = MapSplitterMoved
    end
    object ListPanel: TPanel
      Left = 1
      Top = 1
      Width = 201
      Height = 399
      Align = alLeft
      BevelOuter = bvNone
      Color = clScrollBar
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object ListSplitter: TSplitter
        Left = 0
        Top = 129
        Width = 201
        Height = 8
        Cursor = crVSplit
        Align = alTop
        OnCanResize = ListSplitterCanResize
        OnMoved = ListSplitterMoved
      end
      object MapListBox: TListView
        Left = 0
        Top = 0
        Width = 201
        Height = 129
        Hint = 'Click on map to load it'
        Align = alTop
        Columns = <
          item
            Caption = 'Maps'
          end
          item
            Caption = 'Desc'
            Width = 95
          end>
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        ParentShowHint = False
        ShowHint = True
        SmallImages = ToolBarImages
        SortType = stText
        TabOrder = 0
        ViewStyle = vsReport
        OnClick = MapListBoxClick
        OnColumnClick = MapListBoxColumnClick
        OnCompare = MapListBoxCompare
        OnInfoTip = MapListBoxInfoTip
      end
      object MapItemListBox: TListView
        Left = 0
        Top = 152
        Width = 201
        Height = 233
        Hint = 'Click to see details and map location'
        Columns = <
          item
            Caption = 'Place'
            Width = 99
          end
          item
            Caption = 'Type'
            Width = 98
          end>
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        ParentShowHint = False
        PopupMenu = ListItemPopup
        ShowHint = True
        SortType = stText
        TabOrder = 1
        ViewStyle = vsReport
        OnColumnClick = MapItemListBoxColumnClick
        OnCompare = MapItemListBoxCompare
        OnDblClick = ActionOpenMapExecute
        OnEdited = MapItemListBoxEdited
        OnEditing = MapItemListBoxEditing
        OnInfoTip = MapItemListBoxInfoTip
        OnSelectItem = MapItemListBoxSelectItem
      end
    end
    object MapPanel: TPanel
      Left = 211
      Top = 0
      Width = 494
      Height = 385
      Hint = 'Click & scroll the map'
      BorderWidth = 2
      Color = clScrollBar
      Ctl3D = True
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object Map: TImage
        Left = 16
        Top = 16
        Width = 457
        Height = 345
        Cursor = crArrow
        Hint = 'Clickon items, zoom and scroll map'
        ParentShowHint = False
        ShowHint = False
        OnDblClick = ActionOpenMapExecute
        OnMouseDown = MapMouseDown
        OnMouseMove = MapMouseMove
        OnMouseUp = MapMouseUp
      end
      object ScrlRightDown: TBitBtn
        Left = 472
        Top = 360
        Width = 17
        Height = 17
        Hint = 'Scroll right and down'
        TabOrder = 4
        OnClick = ScrlRightDownClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFF000
          000FFF00000FFFF0000FFFFF000FFFFFF00FFFFFFF0FFFFFFFFF}
      end
      object ScrlDown: TBitBtn
        Left = 240
        Top = 360
        Width = 17
        Height = 17
        Hint = 'Scroll down'
        TabOrder = 3
        OnClick = ScrlDownClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFF00FFFFF0000FFF000000F00000000FFFFFFFFFFFFFFFF}
      end
      object ScrlLeftDown: TBitBtn
        Left = 0
        Top = 360
        Width = 17
        Height = 17
        Hint = 'Scroll left and down'
        TabOrder = 2
        OnClick = ScrlLeftDownClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFF000
          000FF00000FFF0000FFFF000FFFFF00FFFFFF0FFFFFFFFFFFFFF}
      end
      object ScrlLeft: TBitBtn
        Left = 0
        Top = 208
        Width = 17
        Height = 17
        Hint = 'Scroll to the left'
        TabOrder = 1
        OnClick = ScrlLeftClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFF0FFFFFF
          00FFFFF000FFFF0000FFFF0000FFFFF000FFFFFF00FFFFFFF0FF}
      end
      object ScrlLeftUp: TBitBtn
        Left = 0
        Top = 0
        Width = 17
        Height = 17
        Hint = 'Scroll up to the left'
        TabOrder = 0
        OnClick = ScrlLeftUpClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFF0FF
          FFFFF00FFFFFF000FFFFF0000FFFF00000FFF000000FFFFFFFFF}
      end
      object ScrlUp: TBitBtn
        Left = 240
        Top = 0
        Width = 17
        Height = 17
        Hint = 'Scroll up'
        TabOrder = 7
        OnClick = ScrlUpClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFF00000000F000000FFF0000FFFFF00FFFFFFFFFFFFFFFFFFF}
      end
      object ScrlRightUp: TBitBtn
        Left = 472
        Top = 0
        Width = 17
        Height = 17
        Hint = 'Scroll right and up'
        TabOrder = 6
        OnClick = ScrlRightUpClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FF0FFFFFF00FFFFF000FFFF0000FFF00000FF000000FFFFFFFFF}
      end
      object ScrlRight: TBitBtn
        Left = 472
        Top = 200
        Width = 17
        Height = 17
        Hint = 'Scroll right'
        TabOrder = 5
        OnClick = ScrlRightClick
        Glyph.Data = {
          96000000424D9600000000000000760000002800000008000000080000000100
          0400000000002000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0FFFFFFF00
          FFFFFF000FFFFF0000FFFF0000FFFF000FFFFF00FFFFFF0FFFFF}
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 561
    Width = 834
    Height = 20
    Hint = 'Shows current status, map, item, scale and position'
    Panels = <
      item
        Text = 'Status'
        Width = 150
      end
      item
        Text = 'Map'
        Width = 150
      end
      item
        Text = 'Item'
        Width = 150
      end
      item
        Text = 'Scale'
        Width = 50
      end
      item
        Text = 'Pos'
        Width = 150
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object MapItemDesc: TMemo
    Left = 10
    Top = 472
    Width = 703
    Height = 25
    Hint = 'Information about selected item'
    Color = 15066597
    Lines.Strings = (
      'MapDesc')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object CoolBar: TCoolBar
    Left = 0
    Top = 0
    Width = 834
    Height = 54
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = ToolBarFile
        ImageIndex = -1
        MinHeight = 24
        Width = 95
      end
      item
        Break = False
        Control = ToolBarEdit
        ImageIndex = -1
        MinHeight = 24
        Width = 280
      end
      item
        Break = False
        Control = ToolBarView
        ImageIndex = -1
        MinHeight = 24
        Width = 90
      end
      item
        Break = False
        Control = ToolBarScale
        ImageIndex = -1
        MinHeight = 24
        Width = 359
      end
      item
        Control = ToolBarFont
        ImageIndex = -1
        MinHeight = 24
        Width = 830
      end>
    DockSite = True
    OnDockOver = CoolBarDockOver
    OnResize = CoolBarResize
    object ToolBarFile: TToolBar
      Left = 9
      Top = 0
      Width = 82
      Height = 24
      ButtonWidth = 34
      Caption = 'ToolBarFile'
      Ctl3D = False
      DragKind = dkDock
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ToolBarImages
      TabOrder = 0
      OnEndDock = ToolBarFileEndDock
      object ToolButton1: TToolButton
        Left = 0
        Top = 2
        Action = ActionExit
      end
      object ToolButton2: TToolButton
        Left = 34
        Top = 2
        Action = ActionSaveMap
      end
    end
    object ToolBarEdit: TToolBar
      Left = 106
      Top = 0
      Width = 267
      Height = 24
      ButtonWidth = 34
      Caption = 'ToolBarEdit'
      Ctl3D = False
      DragKind = dkDock
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ToolBarImages
      TabOrder = 1
      OnEndDock = ToolBarEditEndDock
      object ToolButton3: TToolButton
        Left = 0
        Top = 2
        Action = ActionSetEditMode
        ImageIndex = 2
      end
      object ToolButtonUndo: TToolButton
        Left = 34
        Top = 2
        Action = ActionUndo
      end
      object ToolButton5: TToolButton
        Left = 68
        Top = 2
        Action = ActionItemNew
      end
      object ToolButton6: TToolButton
        Left = 102
        Top = 2
        Action = ActionItemCopy
      end
      object ToolButton7: TToolButton
        Left = 136
        Top = 2
        Action = ActionItemPaste
      end
      object ToolButton8: TToolButton
        Left = 170
        Top = 2
        Action = ActionItemDel
      end
      object ToolButton9: TToolButton
        Left = 204
        Top = 2
        Action = ActionItemSetInMid
      end
    end
    object ToolBarView: TToolBar
      Left = 388
      Top = 0
      Width = 77
      Height = 24
      ButtonWidth = 34
      Caption = 'ToolBarView'
      Ctl3D = False
      DragKind = dkDock
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ToolBarImages
      TabOrder = 2
      OnEndDock = ToolBarViewEndDock
      object ToolButton10: TToolButton
        Left = 0
        Top = 2
        Action = ActionShowNifty
        ImageIndex = 25
      end
      object ToolButton11: TToolButton
        Left = 34
        Top = 2
        Action = ActionShowAllItems
        ImageIndex = 14
      end
    end
    object ToolBarScale: TToolBar
      Left = 480
      Top = 0
      Width = 346
      Height = 24
      ButtonWidth = 34
      Caption = 'ToolBarScale'
      Ctl3D = False
      DragKind = dkDock
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ToolBarImages
      TabOrder = 3
      OnClick = ToolBarScaleClick
      OnEndDock = ToolBarScaleEndDock
      object ToolButton12: TToolButton
        Left = 0
        Top = 2
        Action = ActionScaleFull
      end
      object ToolButton13: TToolButton
        Left = 34
        Top = 2
        Action = ActionScaleDown
      end
      object ToolButton14: TToolButton
        Left = 68
        Top = 2
        Action = ActionScale20
      end
      object ToolButton15: TToolButton
        Left = 102
        Top = 2
        Action = ActionScale40
      end
      object ToolButton16: TToolButton
        Left = 136
        Top = 2
        Action = ActionScale60
      end
      object ToolButton17: TToolButton
        Left = 170
        Top = 2
        Action = ActionScale80
      end
      object ToolButton18: TToolButton
        Left = 204
        Top = 2
        Action = ActionScale100
      end
      object ToolButton19: TToolButton
        Left = 238
        Top = 2
        Action = ActionScale120
      end
      object ToolButton20: TToolButton
        Left = 272
        Top = 2
        Action = ActionScaleUp
      end
    end
    object ToolBarFont: TToolBar
      Left = 9
      Top = 26
      Width = 817
      Height = 24
      Caption = 'ToolBarFont'
      Ctl3D = False
      DragKind = dkDock
      DragMode = dmAutomatic
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = ToolBarImages
      TabOrder = 4
      OnEndDock = ToolBarFontEndDock
      object FontCombo: TComboBox
        Left = 0
        Top = 2
        Width = 145
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        Text = 'FontCombo'
        OnClick = ActionSetFontNameExecute
        OnMeasureItem = FontComboMeasureItem
      end
      object FontComboHeight: TComboBox
        Left = 145
        Top = 2
        Width = 80
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
        Text = 'FontComboHeight'
        OnClick = ActionSetFontHeightExecute
      end
    end
  end
  object ActionList1: TActionList
    Images = ToolBarImages
    Left = 40
    Top = 528
    object ActionScaleFull: TAction
      Tag = 15
      Category = 'Scale'
      Caption = 'Scale Full'
      GroupIndex = 3
      Hint = 'Fill all map window with the map'
      ImageIndex = 7
      ShortCut = 113
      OnExecute = ActionScaleFullExecute
    end
    object ActionSetMapDir: TAction
      Category = 'File'
      Caption = 'Open...'
      Hint = 'Set Map directory and open a map'
      ImageIndex = 4
      ShortCut = 16463
      OnExecute = ActionSetMapDirExecute
    end
    object ActionShowAllItems: TAction
      Tag = 9
      Category = 'View'
      Caption = 'Highligh All'
      Checked = True
      GroupIndex = 2
      Hint = 'Show all items as thin lines'
      OnExecute = ActionShowAllItemsExecute
    end
    object ActionShowNifty: TAction
      Tag = 30
      Category = 'View'
      Caption = 'Highlight Item'
      GroupIndex = 9
      Hint = 'Turn on/off item nice highlighting'
      ShortCut = 16457
      OnExecute = ActionShowNiftyExecute
    end
    object ActionShowNoTypes: TAction
      Tag = 28
      Category = 'View'
      Caption = 'None'
      GroupIndex = 10
      Hint = 'Show no item types'
      OnExecute = ActionShowNoTypesExecute
    end
    object ActionSaveMap: TAction
      Tag = 1
      Category = 'File'
      Caption = 'Save'
      Hint = 'Save current map'
      ImageIndex = 1
      ShortCut = 16467
      OnExecute = ActionSaveMapExecute
    end
    object ActionSetEditMode: TAction
      Tag = 2
      Category = 'Edit'
      Caption = 'Edit Mode'
      GroupIndex = 1
      Hint = 'Turn on/of item editing'
      ShortCut = 16453
      OnExecute = ActionSetEditModeExecute
    end
    object ActionUndo: TAction
      Tag = 3
      Category = 'Edit'
      Caption = 'Undo'
      GroupIndex = 1
      Hint = 'Undo last thing you changed'
      ImageIndex = 24
      ShortCut = 16474
      OnExecute = ActionUndoExecute
    end
    object ActionItemNew: TAction
      Tag = 4
      Category = 'Edit'
      Caption = 'New Item'
      GroupIndex = 1
      Hint = 'Create new Item in middle of map'
      ImageIndex = 15
      ShortCut = 16462
      OnExecute = ActionItemNewExecute
    end
    object ActionItemCopy: TAction
      Tag = 5
      Category = 'Edit'
      Caption = 'Copy Item'
      GroupIndex = 1
      Hint = 'Copy selected item to paste buffer'
      ImageIndex = 21
      ShortCut = 16451
      OnExecute = ActionItemCopyExecute
    end
    object ActionItemPaste: TAction
      Tag = 6
      Category = 'Edit'
      Caption = 'Paste Item'
      GroupIndex = 1
      Hint = 'Paste item from paste buffer'
      ImageIndex = 22
      ShortCut = 16470
      OnExecute = ActionItemPasteExecute
    end
    object ActionItemDel: TAction
      Tag = 7
      Category = 'Edit'
      Caption = 'Delete Item'
      GroupIndex = 1
      Hint = 'Delete selected item'
      ImageIndex = 20
      ShortCut = 16430
      OnExecute = ActionItemDelExecute
    end
    object ActionItemSetInMid: TAction
      Tag = 8
      Category = 'Edit'
      Caption = 'Move to middle'
      GroupIndex = 1
      Hint = 'Place selected item in middle of map'
      ImageIndex = 16
      ShortCut = 16461
      OnExecute = ActionItemSetInMidExecute
    end
    object ActionExit: TAction
      Tag = 10
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Exit application'
      ImageIndex = 0
      OnExecute = ActionExitExecute
    end
    object ActionScaleDown: TAction
      Tag = 11
      Category = 'Scale'
      Caption = 'Scale Down'
      GroupIndex = 3
      Hint = 'Scale down the size of the map'
      ImageIndex = 17
      ShortCut = 114
      OnExecute = ActionScaleDownExecute
    end
    object ActionSetFont: TAction
      Tag = 12
      Category = 'Tools'
      Caption = 'Font...'
      GroupIndex = 4
      Hint = 'Change the font of the dialogs'
      ImageIndex = 3
      ShortCut = 16454
      OnExecute = ActionSetFontExecute
    end
    object ActionSetHintOnOff: TAction
      Tag = 13
      Category = 'Tools'
      Caption = 'SetHintOnOff'
      GroupIndex = 4
      Hint = 'Turn Hint on/off'
      ImageIndex = 5
      ShortCut = 16456
      OnExecute = ActionSetHintOnOffExecute
    end
    object ActionShowAbout: TAction
      Tag = 14
      Category = 'Help'
      Caption = 'About...'
      GroupIndex = 5
      Hint = 'Open help information'
      ImageIndex = 6
      ShortCut = 112
      OnExecute = ActionShowAboutExecute
    end
    object ActionScale20: TAction
      Tag = 16
      Category = 'Scale'
      Caption = 'Scale 20%'
      GroupIndex = 3
      Hint = 'Set map scale to 20%'
      ImageIndex = 8
      ShortCut = 115
      OnExecute = ActionScale20Execute
    end
    object ActionScale40: TAction
      Tag = 17
      Category = 'Scale'
      Caption = 'Scale 40%'
      GroupIndex = 3
      Hint = 'Set map scale to 40%'
      ImageIndex = 9
      ShortCut = 116
      OnExecute = ActionScale40Execute
    end
    object ActionScale60: TAction
      Tag = 18
      Category = 'Scale'
      Caption = 'Scale 60%'
      GroupIndex = 3
      Hint = 'Set map scale to 60%'
      ImageIndex = 10
      ShortCut = 117
      OnExecute = ActionScale60Execute
    end
    object ActionScale80: TAction
      Tag = 19
      Category = 'Scale'
      Caption = 'Scale 80%'
      GroupIndex = 3
      Hint = 'Set map scale to 80%'
      ImageIndex = 11
      ShortCut = 118
      OnExecute = ActionScale80Execute
    end
    object ActionScale100: TAction
      Tag = 20
      Category = 'Scale'
      Caption = 'Scale 100%'
      GroupIndex = 3
      Hint = 'Set map scale to 100%'
      ImageIndex = 12
      ShortCut = 119
      OnExecute = ActionScale100Execute
    end
    object ActionScale120: TAction
      Tag = 21
      Category = 'Scale'
      Caption = 'Scale 120%'
      GroupIndex = 3
      Hint = 'Set map scale to 120%'
      ImageIndex = 13
      ShortCut = 120
      OnExecute = ActionScale120Execute
    end
    object ActionScaleUp: TAction
      Tag = 22
      Category = 'Scale'
      Caption = 'Scale Up'
      GroupIndex = 3
      Hint = 'Increase the size of the map'
      ImageIndex = 18
      ShortCut = 121
      OnExecute = ActionScaleUpExecute
    end
    object ActionScaleInc10: TAction
      Tag = 23
      Category = 'Scale'
      Caption = 'ActionScaleInc10'
      GroupIndex = 3
      Hint = 'Set scale increment to 10%'
      OnExecute = ActionScaleInc10Execute
    end
    object ActionScaleInc20: TAction
      Tag = 24
      Category = 'Scale'
      Caption = 'ActionScaleInc20'
      GroupIndex = 3
      Hint = 'Set scale increment to 20%'
      OnExecute = ActionScaleInc20Execute
    end
    object ActionScaleInc40: TAction
      Tag = 25
      Category = 'Scale'
      Caption = 'ActionScaleInc40'
      GroupIndex = 3
      Hint = 'Set scale increment to 40%'
      OnExecute = ActionScaleInc40Execute
    end
    object ActionSetNewItemType: TAction
      Tag = 26
      Category = 'Edit'
      Caption = 'New Type...'
      GroupIndex = 1
      Hint = 'Create a new type of item'
      ImageIndex = 23
      ShortCut = 16468
      OnExecute = ActionSetNewItemTypeExecute
    end
    object ActionShowAllTypes: TAction
      Tag = 27
      Category = 'View'
      Caption = 'All'
      GroupIndex = 11
      Hint = 'Show all item types'
      OnExecute = ActionShowAllTypesExecute
    end
    object ActionToolbarToggle: TAction
      Tag = 29
      Category = 'Tools'
      Caption = 'ActionToolbarToggle'
      Checked = True
      GroupIndex = 4
      Hint = 'Turn on/off tollbar'
      OnExecute = ActionToolbarToggleExecute
    end
    object ActionSetItemColor: TAction
      Category = 'Edit'
      Caption = 'Set Item Color...'
      Hint = 'Set the color for highlighting the items'
      ImageIndex = 25
      OnExecute = ActionSetItemColorExecute
    end
    object ActionSetFontName: TAction
      Category = 'Tools'
      Caption = 'Set Font Name'
      OnExecute = ActionSetFontNameExecute
    end
    object ActionSetFontHeight: TAction
      Category = 'Tools'
      Caption = 'Set Font Height'
      OnExecute = ActionSetFontHeightExecute
    end
    object ActionPref: TAction
      Category = 'Tools'
      Caption = 'ActionPref'
      ShortCut = 16464
      OnExecute = ActionPrefExecute
    end
    object ActionOpenMap: TAction
      Category = 'View'
      Caption = 'ActionOpenMap'
      OnExecute = ActionOpenMapExecute
    end
  end
  object MainMenu: TMainMenu
    Images = ToolBarImages
    Left = 72
    Top = 528
    object File1: TMenuItem
      Caption = 'File'
      object SetMapDir: TMenuItem
        Action = ActionSetMapDir
        Caption = 'Open Map...'
      end
      object SaveMap: TMenuItem
        Action = ActionSaveMap
      end
      object Exit1: TMenuItem
        Action = ActionExit
      end
    end
    object MenuEdit: TMenuItem
      Caption = 'Edit'
      object EditMode1: TMenuItem
        Action = ActionSetEditMode
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Undo1: TMenuItem
        Action = ActionUndo
      end
      object MenuItemNew: TMenuItem
        Action = ActionItemNew
      end
      object CopyItem1: TMenuItem
        Action = ActionItemCopy
      end
      object PasteItem1: TMenuItem
        Action = ActionItemPaste
      end
      object MenuSetInMiddle: TMenuItem
        Action = ActionItemSetInMid
      end
      object MenuDeleteItem1: TMenuItem
        Action = ActionItemDel
      end
    end
    object MenuItemType: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Type'
      object ActionSetNewItemType1: TMenuItem
        Action = ActionSetNewItemType
        AutoHotkeys = maManual
      end
      object SetItemColor1: TMenuItem
        Action = ActionSetItemColor
      end
      object NewTypeSpace: TMenuItem
        AutoHotkeys = maManual
        Caption = '-'
      end
    end
    object View1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'View'
      object DrawNone: TMenuItem
        Action = ActionShowNoTypes
        AutoHotkeys = maManual
      end
      object DrawAll: TMenuItem
        Action = ActionShowAllTypes
        AutoHotkeys = maManual
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object HighlightItem1: TMenuItem
        Action = ActionShowNifty
      end
      object HighlighAll1: TMenuItem
        Action = ActionShowAllItems
      end
    end
    object Scale1: TMenuItem
      Caption = 'Scale'
      object ScaleFull1: TMenuItem
        Action = ActionScaleFull
      end
      object ScaleDown1: TMenuItem
        Action = ActionScaleDown
      end
      object Scale201: TMenuItem
        Action = ActionScale20
      end
      object Scale401: TMenuItem
        Action = ActionScale40
      end
      object Scale601: TMenuItem
        Action = ActionScale60
      end
      object Scale801: TMenuItem
        Action = ActionScale80
      end
      object Scale1001: TMenuItem
        Action = ActionScale100
      end
      object Scale1201: TMenuItem
        Action = ActionScale120
      end
      object ScaleUp1: TMenuItem
        Action = ActionScaleUp
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ScaleIncrement10: TMenuItem
        Action = ActionScaleInc10
        Caption = 'Scale Inc 10%'
      end
      object ScaleIncrement20: TMenuItem
        Action = ActionScaleInc20
        Caption = 'Scale Inc 20%'
      end
      object ScaleIncrement40: TMenuItem
        Action = ActionScaleInc40
        Caption = 'Scale Inc 40%'
      end
    end
    object Preferenses1: TMenuItem
      Caption = 'Tools'
      object Font1: TMenuItem
        Action = ActionSetFont
        Caption = 'Set &Font...'
      end
      object SetHintsOnOff: TMenuItem
        Action = ActionSetHintOnOff
        Caption = 'Show &Hint'
      end
      object Preferenses2: TMenuItem
        Action = ActionPref
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object ToolbarToggle: TMenuItem
        Action = ActionToolbarToggle
        Caption = 'Toolbar'
      end
      object ToolbarButtons: TMenuItem
        AutoHotkeys = maManual
        Caption = 'Tollbar Bands'
        OnClick = ToolbarButtonsClick
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object ShowAboutBox: TMenuItem
        Action = ActionShowAbout
      end
    end
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 8
    Top = 528
  end
  object CursorTimer: TTimer
    Interval = 700
    OnTimer = CursorTimerTimer
    Left = 112
    Top = 528
  end
  object ListItemPopup: TPopupMenu
    Images = ToolBarImages
    Left = 152
    Top = 528
    object MenuEditMode1: TMenuItem
      Action = ActionSetEditMode
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Undo2: TMenuItem
      Action = ActionUndo
    end
    object MenueNewItem: TMenuItem
      Action = ActionItemNew
    end
    object opyItem1: TMenuItem
      Action = ActionItemCopy
    end
    object Paste1: TMenuItem
      Action = ActionItemPaste
    end
    object MenuSetItemInMiddle: TMenuItem
      Action = ActionItemSetInMid
    end
    object MenuDeleteItem: TMenuItem
      Action = ActionItemDel
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SetItemTypeSub: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Set Item Type'
      object SetNewItemType: TMenuItem
        Action = ActionSetNewItemType
        Caption = 'New...'
      end
    end
    object SetItemColor2: TMenuItem
      Action = ActionSetItemColor
    end
  end
  object MapTimer: TTimer
    Enabled = False
    Interval = 700
    OnTimer = MapTimerTimer
    Left = 192
    Top = 528
  end
  object SetMapDirDialog: TOpenDialog
    Left = 232
    Top = 528
  end
  object ToolBarImages: TImageList
    Left = 272
    Top = 528
    Bitmap = {
      494C01011B001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF00000080000080808000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000800000808080000080000080808000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000080808000008000008080800000800000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF00000080000080808000008000008080800000800000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF00008080800000800000808080000080000080808000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000FFFF0000FFFF00008080
      8000008000008080800000800000808080000080000080808000008000008080
      8000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      00000000000000000000C0C0C000000000000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000FFFF0000FFFF00000080
      0000808080000080000080808000008000008080800000800000808080000080
      0000FFFF00000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008080800000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000C0C0C000C0C0C0000000000000000000FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000FFFF0000FFFF00008080
      8000008000008080800000800000808080000080000080808000008000008080
      8000008000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      80000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF00000080
      0000808080000080000080808000FFFF00008080800000800000FFFF00000080
      0000808080000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000080000080808000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008080
      8000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFF00000080
      0000808080000080000080808000008000008080800000800000808080000080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF00008080800000800000808080000080000080808000008000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000080808000008000008080800000800000000000000000
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
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008080800000000000000000008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000C0C0C00000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C00000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000808080000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF0000000000C0C0C000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000C0C0C000C0C0C000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000080808000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF0000000000C0C0C000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
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
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      000000000000FFFFFF00808080008080800080808000FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF000000000000000000FFFF
      FF00000000008080800080808000808080008080800080808000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF0080808000FFFF
      FF00FFFFFF000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000C0C0C000C0C0C000FFFFFF0080808000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000080808000C0C0C000808080008080800080808000FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C0008080800080808000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000808080008080800080808000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0C000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00808080008080
      8000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00C0C0C000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
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
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000C0C0
      C0000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00000000000000000000000000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000000000000808080008080800000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00808080008080
      8000FFFFFF00000000000000000000000000808080008080800000000000FFFF
      FF00000000000000000000000000FFFFFF0000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
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
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000808080008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000808080008080
      8000FFFFFF000000000000000000000000008080800080808000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000808080008080
      8000FFFFFF00000000000000000000000000808080008080800000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000808080008080
      8000FFFFFF00000000000000000000000000808080008080800000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000008080800080808000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00808080008080
      8000000000000000000000000000000000008080800080808000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00808080008080
      8000000000000000000000000000000000008080800080808000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00808080008080
      8000000000000000000000000000000000008080800080808000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C00080808000C0C0C000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C00080808000C0C0C000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF008080800080808000FFFFFF00FFFFFF0080808000FFFFFF008080
      8000FFFFFF008080800000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000080808000FFFFFF00000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFFFF000000
      0000808080008080800080808000808080008080800080808000808080008080
      80008080800000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF0080808000FFFFFF008080
      8000FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000FFFF
      FF00000000008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000000000000000000000000000FFFFFF000000
      0000C0C0C00080808000C0C0C000FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000000000C0C0C000FFFFFF00C0C0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF008080800080808000FFFFFF0080808000FFFFFF008080
      8000FFFFFF00FFFFFF0000000000FFFFFF008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000808080008080800080808000FFFFFF008080800080808000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      0000808080008080800080808000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF0000000000FFFFFF0000000000000000000000
      0000808080008080800080808000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000808080008080800080808000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C00000000000FFFFFF000000
      0000808080008080800080808000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000008080800000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF0000000000C0C0C00000000000C0C0
      C00000000000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0
      C00000000000C0C0C00000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000FFFFFF000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      00000000000080808000FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000FFFFFF000000000000000000C0C0C0000000
      0000000000000000000000000000C0C0C000C0C0C00000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      00008080800080808000FFFFFF00FFFFFF000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000FFFFFF000000000000000000C0C0C0000000
      0000FFFFFF0000000000C0C0C000C0C0C0000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF00FFFFFF0000000000FFFFFF00000000008080
      8000808080008080800080808000808080000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF000000000000000000C0C0C0000000
      000000000000C0C0C000C0C0C00000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF00FFFFFF0000000000FFFFFF00808080008080
      8000808080008080800080808000808080000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF000000000000000000C0C0C0000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF00FFFFFF0000000000FFFFFF00000000008080
      8000808080008080800080808000808080000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000808080008080
      800000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      00008080800080808000FFFFFF00FFFFFF000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000008080800000000000FFFFFF000000000000000000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000008080800000000000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000FFFFFF000000000000000000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C00000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C00000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C00000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFC1FFFFF0000FFFFF80FF83F0000
      FFFFE7C3E00F0000FFFFCFF3C0070000E0339FF980030000C0639C3880030000
      C0F1381C00010000C1F1381C00010000C0F9381C00010000C803381C00010000
      DC073C3D00010000FF0F9FFB80030000FFFF9FF380030000FFFFC7C7C0070000
      FFFFE00FE00F0000FFFFF83FF83F0000FFFFFFFFFFFFFFFFF1FFFFFFFFFFF0FF
      E1FFFF8FE00FE0FFF1FBFF07C007F1FFF873FE03C003F1FFF827FE01C001F1FF
      F00FE201C001F1BFF01FC003C003B13FE00F8007C007803FC01F800FC0078032
      C01F807FC0078041FC1F80FFC00FFFE0FF9FC1FFF03FFFC0FF9FE3FFFFFFFFE1
      FFFFFFFFFFFFFFD5FFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC1FFFF9FFF9C001
      F83FFFF1FFF18001FC7FF063F063BC19FEFFE007E007B839BC7DC00FC00FBC79
      9839800F800FBE79081000070007BE79080000070007BA49981100070007B009
      BC3B00070007B009FEFF00070007B019FE7F000F000FBFF9FC3F801F801F8003
      F81FC03FC03FFFFFFEFFE07FE07FFFFFFFFFFFFFFFFFFFFFFFF9FFF9FFFFF1FF
      FFF1FFF1F800E0FFF063F063F000C07FE007E007F3FCC03FC00FC00FF3FCC03F
      800F800FC0FCC07700070007807CE0E700070007933CF12500070007333CFF83
      000700073000FF00000700073001FE00000F000F9F7FFFC3801F801F8E7FFFA1
      C03FC03FC0FFFF65E07FE07FF3FFFFEFFFFFFFFFFFFFFFFFFFF9FFF9FFF9FFF9
      FFF1FFF1FFF1FFF1F063F063F063F063E007E007E007E007C00FC00FC00FC00F
      800F800F800F800F000700070007000700070007000700070007000700070007
      00070007000700070007000700070007000F000F000F000F801F801F801F801F
      C03FC03FC03FC03FE07FE07FE07FE07FFFFFFFFFFFFFFFFF801FF000FFF0FFF9
      000FE000FFF0FFF10007E000FFF0F0630003E000807FE0070001E0000039C00F
      0000E0000010800F0000800000300007000F000080700007000F800180700007
      00188C7F803000078FF0807FC0100007FFF08C7FE01B000FFF05843FC00F801F
      FF8F087FC007C03FFFFFFFFFE00FE07FF9FFC0008000FFFFF1FF80000000FFFF
      E1FF80000000FFFFC00380000000F03F000780000001E03F803D8000801FE07F
      80398000801FF8FF80308000801FF83F80208000808FF83F800080008187F83F
      802080008383F84F803080008783F00F803B80008FC1E00F803F80009FC1E01F
      807F8001BFE1FFFFFFFFFFFFFFE3FFFF00000000000000000000000000000000
      000000000000}
  end
  object MapItemTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = MapItemTimerTimer
    Left = 312
    Top = 528
  end
  object DrawTimer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = DrawTimerTimer
    Left = 352
    Top = 528
  end
  object ItemColorDlg: TColorDialog
    Left = 392
    Top = 528
  end
  object SelectMapTimer: TTimer
    Enabled = False
    Interval = 200
    OnTimer = SelectMapTimerTimer
    Left = 432
    Top = 528
  end
end
