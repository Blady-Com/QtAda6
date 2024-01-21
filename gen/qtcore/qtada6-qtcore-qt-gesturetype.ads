-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-gesturetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.GestureType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function TapGesture return Class;-- 0x1
   function TapAndHoldGesture return Class;-- 0x2
   function PanGesture return Class;-- 0x3
   function PinchGesture return Class;-- 0x4
   function SwipeGesture return Class;-- 0x5
   function CustomGesture return Class;-- 0x100
   function LastGestureType return Class;-- 0xffffffff
end QtAda6.QtCore.Qt.GestureType;
