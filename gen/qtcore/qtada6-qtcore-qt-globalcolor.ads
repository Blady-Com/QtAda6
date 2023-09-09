-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-globalcolor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.GlobalColor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   color0      : Qt.GlobalColor.Class;-- 0x0
   color1      : Qt.GlobalColor.Class;-- 0x1
   black       : Qt.GlobalColor.Class;-- 0x2
   white       : Qt.GlobalColor.Class;-- 0x3
   darkGray    : Qt.GlobalColor.Class;-- 0x4
   gray        : Qt.GlobalColor.Class;-- 0x5
   lightGray   : Qt.GlobalColor.Class;-- 0x6
   red         : Qt.GlobalColor.Class;-- 0x7
   green       : Qt.GlobalColor.Class;-- 0x8
   blue        : Qt.GlobalColor.Class;-- 0x9
   cyan        : Qt.GlobalColor.Class;-- 0xa
   magenta     : Qt.GlobalColor.Class;-- 0xb
   yellow      : Qt.GlobalColor.Class;-- 0xc
   darkRed     : Qt.GlobalColor.Class;-- 0xd
   darkGreen   : Qt.GlobalColor.Class;-- 0xe
   darkBlue    : Qt.GlobalColor.Class;-- 0xf
   darkCyan    : Qt.GlobalColor.Class;-- 0x10
   darkMagenta : Qt.GlobalColor.Class;-- 0x11
   darkYellow  : Qt.GlobalColor.Class;-- 0x12
   transparent : Qt.GlobalColor.Class;-- 0x13
end QtAda6.QtCore.Qt.GlobalColor;
