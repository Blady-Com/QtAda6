-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-gesturetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtCore.Qt.GestureType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   TapGesture        : Qt.GestureType.Class;-- 0x1
   TapAndHoldGesture : Qt.GestureType.Class;-- 0x2
   PanGesture        : Qt.GestureType.Class;-- 0x3
   PinchGesture      : Qt.GestureType.Class;-- 0x4
   SwipeGesture      : Qt.GestureType.Class;-- 0x5
   CustomGesture     : Qt.GestureType.Class;-- 0x100
   LastGestureType   : Qt.GestureType.Class;-- 0xffffffff
end QtAda6.QtCore.Qt.GestureType;
