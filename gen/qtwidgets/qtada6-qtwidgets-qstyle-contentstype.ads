-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-contentstype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.ContentsType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function CT_PushButton return Class;-- 0x0
   function CT_CheckBox return Class;-- 0x1
   function CT_RadioButton return Class;-- 0x2
   function CT_ToolButton return Class;-- 0x3
   function CT_ComboBox return Class;-- 0x4
   function CT_Splitter return Class;-- 0x5
   function CT_ProgressBar return Class;-- 0x6
   function CT_MenuItem return Class;-- 0x7
   function CT_MenuBarItem return Class;-- 0x8
   function CT_MenuBar return Class;-- 0x9
   function CT_Menu return Class;-- 0xa
   function CT_TabBarTab return Class;-- 0xb
   function CT_Slider return Class;-- 0xc
   function CT_ScrollBar return Class;-- 0xd
   function CT_LineEdit return Class;-- 0xe
   function CT_SpinBox return Class;-- 0xf
   function CT_SizeGrip return Class;-- 0x10
   function CT_TabWidget return Class;-- 0x11
   function CT_DialogButtons return Class;-- 0x12
   function CT_HeaderSection return Class;-- 0x13
   function CT_GroupBox return Class;-- 0x14
   function CT_MdiControls return Class;-- 0x15
   function CT_ItemViewItem return Class;-- 0x16
   function CT_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.ContentsType;
