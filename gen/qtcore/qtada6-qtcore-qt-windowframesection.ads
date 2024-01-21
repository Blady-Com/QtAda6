-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-windowframesection.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.WindowFrameSection is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoSection return Class;-- 0x0
   function LeftSection return Class;-- 0x1
   function TopLeftSection return Class;-- 0x2
   function TopSection return Class;-- 0x3
   function TopRightSection return Class;-- 0x4
   function RightSection return Class;-- 0x5
   function BottomRightSection return Class;-- 0x6
   function BottomSection return Class;-- 0x7
   function BottomLeftSection return Class;-- 0x8
   function TitleBarArea return Class;-- 0x9
end QtAda6.QtCore.Qt.WindowFrameSection;
