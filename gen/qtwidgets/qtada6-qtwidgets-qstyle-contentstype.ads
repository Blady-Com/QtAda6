-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-contentstype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.ContentsType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   CT_PushButton    : QStyle.ContentsType.Class;-- 0x0
   CT_CheckBox      : QStyle.ContentsType.Class;-- 0x1
   CT_RadioButton   : QStyle.ContentsType.Class;-- 0x2
   CT_ToolButton    : QStyle.ContentsType.Class;-- 0x3
   CT_ComboBox      : QStyle.ContentsType.Class;-- 0x4
   CT_Splitter      : QStyle.ContentsType.Class;-- 0x5
   CT_ProgressBar   : QStyle.ContentsType.Class;-- 0x6
   CT_MenuItem      : QStyle.ContentsType.Class;-- 0x7
   CT_MenuBarItem   : QStyle.ContentsType.Class;-- 0x8
   CT_MenuBar       : QStyle.ContentsType.Class;-- 0x9
   CT_Menu          : QStyle.ContentsType.Class;-- 0xa
   CT_TabBarTab     : QStyle.ContentsType.Class;-- 0xb
   CT_Slider        : QStyle.ContentsType.Class;-- 0xc
   CT_ScrollBar     : QStyle.ContentsType.Class;-- 0xd
   CT_LineEdit      : QStyle.ContentsType.Class;-- 0xe
   CT_SpinBox       : QStyle.ContentsType.Class;-- 0xf
   CT_SizeGrip      : QStyle.ContentsType.Class;-- 0x10
   CT_TabWidget     : QStyle.ContentsType.Class;-- 0x11
   CT_DialogButtons : QStyle.ContentsType.Class;-- 0x12
   CT_HeaderSection : QStyle.ContentsType.Class;-- 0x13
   CT_GroupBox      : QStyle.ContentsType.Class;-- 0x14
   CT_MdiControls   : QStyle.ContentsType.Class;-- 0x15
   CT_ItemViewItem  : QStyle.ContentsType.Class;-- 0x16
   CT_CustomBase    : QStyle.ContentsType.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.ContentsType;
