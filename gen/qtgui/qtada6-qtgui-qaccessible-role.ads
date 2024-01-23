-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-role.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessible.Role is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoRole return Class;-- 0x0
   function TitleBar return Class;-- 0x1
   function MenuBar return Class;-- 0x2
   function ScrollBar return Class;-- 0x3
   function Grip return Class;-- 0x4
   function Sound return Class;-- 0x5
   function Cursor return Class;-- 0x6
   function Caret return Class;-- 0x7
   function AlertMessage return Class;-- 0x8
   function Window return Class;-- 0x9
   function Client return Class;-- 0xa
   function PopupMenu return Class;-- 0xb
   function MenuItem return Class;-- 0xc
   function ToolTip return Class;-- 0xd
   function Application return Class;-- 0xe
   function Document return Class;-- 0xf
   function Pane return Class;-- 0x10
   function Chart return Class;-- 0x11
   function Dialog return Class;-- 0x12
   function Border return Class;-- 0x13
   function Grouping return Class;-- 0x14
   function Separator return Class;-- 0x15
   function ToolBar return Class;-- 0x16
   function StatusBar return Class;-- 0x17
   function Table return Class;-- 0x18
   function ColumnHeader return Class;-- 0x19
   function RowHeader return Class;-- 0x1a
   function Column return Class;-- 0x1b
   function Row return Class;-- 0x1c
   function Cell return Class;-- 0x1d
   function Link return Class;-- 0x1e
   function HelpBalloon return Class;-- 0x1f
   function Assistant return Class;-- 0x20
   function List return Class;-- 0x21
   function ListItem return Class;-- 0x22
   function Tree return Class;-- 0x23
   function TreeItem return Class;-- 0x24
   function PageTab return Class;-- 0x25
   function PropertyPage return Class;-- 0x26
   function Indicator return Class;-- 0x27
   function Graphic return Class;-- 0x28
   function StaticText return Class;-- 0x29
   function EditableText return Class;-- 0x2a
   function Button return Class;-- 0x2b
   function PushButton return Class;-- 0x2b
   function CheckBox return Class;-- 0x2c
   function RadioButton return Class;-- 0x2d
   function ComboBox return Class;-- 0x2e
   function ProgressBar return Class;-- 0x30
   function Dial return Class;-- 0x31
   function HotkeyField return Class;-- 0x32
   function Slider return Class;-- 0x33
   function SpinBox return Class;-- 0x34
   function Canvas return Class;-- 0x35
   function Animation return Class;-- 0x36
   function Equation return Class;-- 0x37
   function ButtonDropDown return Class;-- 0x38
   function ButtonMenu return Class;-- 0x39
   function ButtonDropGrid return Class;-- 0x3a
   function Whitespace return Class;-- 0x3b
   function PageTabList return Class;-- 0x3c
   function Clock return Class;-- 0x3d
   function Splitter return Class;-- 0x3e
   function LayeredPane return Class;-- 0x80
   function Terminal return Class;-- 0x81
   function Desktop return Class;-- 0x82
   function Paragraph return Class;-- 0x83
   function WebDocument return Class;-- 0x84
   function Section return Class;-- 0x85
   function Notification return Class;-- 0x86
   function ColorChooser return Class;-- 0x404
   function Footer return Class;-- 0x40e
   function Form return Class;-- 0x410
   function Heading return Class;-- 0x414
   function Note return Class;-- 0x41b
   function ComplementaryContent return Class;-- 0x42c
   function UserRole return Class;-- 0xffff
end QtAda6.QtGui.QAccessible.Role;
