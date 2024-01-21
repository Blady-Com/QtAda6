-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-mousebutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.MouseButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoButton return Class;-- 0x0
   function LeftButton return Class;-- 0x1
   function RightButton return Class;-- 0x2
   function MiddleButton return Class;-- 0x4
   function BackButton return Class;-- 0x8
   function ExtraButton1 return Class;-- 0x8
   function XButton1 return Class;-- 0x8
   function ExtraButton2 return Class;-- 0x10
   function ForwardButton return Class;-- 0x10
   function XButton2 return Class;-- 0x10
   function ExtraButton3 return Class;-- 0x20
   function TaskButton return Class;-- 0x20
   function ExtraButton4 return Class;-- 0x40
   function ExtraButton5 return Class;-- 0x80
   function ExtraButton6 return Class;-- 0x100
   function ExtraButton7 return Class;-- 0x200
   function ExtraButton8 return Class;-- 0x400
   function ExtraButton9 return Class;-- 0x800
   function ExtraButton10 return Class;-- 0x1000
   function ExtraButton11 return Class;-- 0x2000
   function ExtraButton12 return Class;-- 0x4000
   function ExtraButton13 return Class;-- 0x8000
   function ExtraButton14 return Class;-- 0x10000
   function ExtraButton15 return Class;-- 0x20000
   function ExtraButton16 return Class;-- 0x40000
   function ExtraButton17 return Class;-- 0x80000
   function ExtraButton18 return Class;-- 0x100000
   function ExtraButton19 return Class;-- 0x200000
   function ExtraButton20 return Class;-- 0x400000
   function ExtraButton21 return Class;-- 0x800000
   function ExtraButton22 return Class;-- 0x1000000
   function ExtraButton23 return Class;-- 0x2000000
   function ExtraButton24 return Class;-- 0x4000000
   function MaxMouseButton return Class;-- 0x4000000
   function AllButtons return Class;-- 0x7ffffff
   function MouseButtonMask return Class;-- 0xffffffff
end QtAda6.QtCore.Qt.MouseButton;
