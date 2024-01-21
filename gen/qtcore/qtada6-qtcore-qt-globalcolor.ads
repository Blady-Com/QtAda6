-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-globalcolor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.GlobalColor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function color0 return Class;-- 0x0
   function color1 return Class;-- 0x1
   function black return Class;-- 0x2
   function white return Class;-- 0x3
   function darkGray return Class;-- 0x4
   function gray return Class;-- 0x5
   function lightGray return Class;-- 0x6
   function red return Class;-- 0x7
   function green return Class;-- 0x8
   function blue return Class;-- 0x9
   function cyan return Class;-- 0xa
   function magenta return Class;-- 0xb
   function yellow return Class;-- 0xc
   function darkRed return Class;-- 0xd
   function darkGreen return Class;-- 0xe
   function darkBlue return Class;-- 0xf
   function darkCyan return Class;-- 0x10
   function darkMagenta return Class;-- 0x11
   function darkYellow return Class;-- 0x12
   function transparent return Class;-- 0x13
end QtAda6.QtCore.Qt.GlobalColor;
