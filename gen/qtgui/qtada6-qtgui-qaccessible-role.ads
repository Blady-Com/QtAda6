-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-role.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QAccessible.Role is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoRole               : QAccessible.Role.Class;-- 0x0
   TitleBar             : QAccessible.Role.Class;-- 0x1
   MenuBar              : QAccessible.Role.Class;-- 0x2
   ScrollBar            : QAccessible.Role.Class;-- 0x3
   Grip                 : QAccessible.Role.Class;-- 0x4
   Sound                : QAccessible.Role.Class;-- 0x5
   Cursor               : QAccessible.Role.Class;-- 0x6
   Caret                : QAccessible.Role.Class;-- 0x7
   AlertMessage         : QAccessible.Role.Class;-- 0x8
   Window               : QAccessible.Role.Class;-- 0x9
   Client               : QAccessible.Role.Class;-- 0xa
   PopupMenu            : QAccessible.Role.Class;-- 0xb
   MenuItem             : QAccessible.Role.Class;-- 0xc
   ToolTip              : QAccessible.Role.Class;-- 0xd
   Application          : QAccessible.Role.Class;-- 0xe
   Document             : QAccessible.Role.Class;-- 0xf
   Pane                 : QAccessible.Role.Class;-- 0x10
   Chart                : QAccessible.Role.Class;-- 0x11
   Dialog               : QAccessible.Role.Class;-- 0x12
   Border               : QAccessible.Role.Class;-- 0x13
   Grouping             : QAccessible.Role.Class;-- 0x14
   Separator            : QAccessible.Role.Class;-- 0x15
   ToolBar              : QAccessible.Role.Class;-- 0x16
   StatusBar            : QAccessible.Role.Class;-- 0x17
   Table                : QAccessible.Role.Class;-- 0x18
   ColumnHeader         : QAccessible.Role.Class;-- 0x19
   RowHeader            : QAccessible.Role.Class;-- 0x1a
   Column               : QAccessible.Role.Class;-- 0x1b
   Row                  : QAccessible.Role.Class;-- 0x1c
   Cell                 : QAccessible.Role.Class;-- 0x1d
   Link                 : QAccessible.Role.Class;-- 0x1e
   HelpBalloon          : QAccessible.Role.Class;-- 0x1f
   Assistant            : QAccessible.Role.Class;-- 0x20
   List                 : QAccessible.Role.Class;-- 0x21
   ListItem             : QAccessible.Role.Class;-- 0x22
   Tree                 : QAccessible.Role.Class;-- 0x23
   TreeItem             : QAccessible.Role.Class;-- 0x24
   PageTab              : QAccessible.Role.Class;-- 0x25
   PropertyPage         : QAccessible.Role.Class;-- 0x26
   Indicator            : QAccessible.Role.Class;-- 0x27
   Graphic              : QAccessible.Role.Class;-- 0x28
   StaticText           : QAccessible.Role.Class;-- 0x29
   EditableText         : QAccessible.Role.Class;-- 0x2a
   Button               : QAccessible.Role.Class;-- 0x2b
   PushButton           : QAccessible.Role.Class;-- 0x2b
   CheckBox             : QAccessible.Role.Class;-- 0x2c
   RadioButton          : QAccessible.Role.Class;-- 0x2d
   ComboBox             : QAccessible.Role.Class;-- 0x2e
   ProgressBar          : QAccessible.Role.Class;-- 0x30
   Dial                 : QAccessible.Role.Class;-- 0x31
   HotkeyField          : QAccessible.Role.Class;-- 0x32
   Slider               : QAccessible.Role.Class;-- 0x33
   SpinBox              : QAccessible.Role.Class;-- 0x34
   Canvas               : QAccessible.Role.Class;-- 0x35
   Animation            : QAccessible.Role.Class;-- 0x36
   Equation             : QAccessible.Role.Class;-- 0x37
   ButtonDropDown       : QAccessible.Role.Class;-- 0x38
   ButtonMenu           : QAccessible.Role.Class;-- 0x39
   ButtonDropGrid       : QAccessible.Role.Class;-- 0x3a
   Whitespace           : QAccessible.Role.Class;-- 0x3b
   PageTabList          : QAccessible.Role.Class;-- 0x3c
   Clock                : QAccessible.Role.Class;-- 0x3d
   Splitter             : QAccessible.Role.Class;-- 0x3e
   LayeredPane          : QAccessible.Role.Class;-- 0x80
   Terminal             : QAccessible.Role.Class;-- 0x81
   Desktop              : QAccessible.Role.Class;-- 0x82
   Paragraph            : QAccessible.Role.Class;-- 0x83
   WebDocument          : QAccessible.Role.Class;-- 0x84
   Section              : QAccessible.Role.Class;-- 0x85
   Notification         : QAccessible.Role.Class;-- 0x86
   ColorChooser         : QAccessible.Role.Class;-- 0x404
   Footer               : QAccessible.Role.Class;-- 0x40e
   Form                 : QAccessible.Role.Class;-- 0x410
   Heading              : QAccessible.Role.Class;-- 0x414
   Note                 : QAccessible.Role.Class;-- 0x41b
   ComplementaryContent : QAccessible.Role.Class;-- 0x42c
   UserRole             : QAccessible.Role.Class;-- 0xffff
end QtAda6.QtGui.QAccessible.Role;
