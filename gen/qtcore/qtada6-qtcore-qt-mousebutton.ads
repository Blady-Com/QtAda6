-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-mousebutton.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.MouseButton is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoButton        : Qt.MouseButton.Class;-- 0x0
   LeftButton      : Qt.MouseButton.Class;-- 0x1
   RightButton     : Qt.MouseButton.Class;-- 0x2
   MiddleButton    : Qt.MouseButton.Class;-- 0x4
   BackButton      : Qt.MouseButton.Class;-- 0x8
   ExtraButton1    : Qt.MouseButton.Class;-- 0x8
   XButton1        : Qt.MouseButton.Class;-- 0x8
   ExtraButton2    : Qt.MouseButton.Class;-- 0x10
   ForwardButton   : Qt.MouseButton.Class;-- 0x10
   XButton2        : Qt.MouseButton.Class;-- 0x10
   ExtraButton3    : Qt.MouseButton.Class;-- 0x20
   TaskButton      : Qt.MouseButton.Class;-- 0x20
   ExtraButton4    : Qt.MouseButton.Class;-- 0x40
   ExtraButton5    : Qt.MouseButton.Class;-- 0x80
   ExtraButton6    : Qt.MouseButton.Class;-- 0x100
   ExtraButton7    : Qt.MouseButton.Class;-- 0x200
   ExtraButton8    : Qt.MouseButton.Class;-- 0x400
   ExtraButton9    : Qt.MouseButton.Class;-- 0x800
   ExtraButton10   : Qt.MouseButton.Class;-- 0x1000
   ExtraButton11   : Qt.MouseButton.Class;-- 0x2000
   ExtraButton12   : Qt.MouseButton.Class;-- 0x4000
   ExtraButton13   : Qt.MouseButton.Class;-- 0x8000
   ExtraButton14   : Qt.MouseButton.Class;-- 0x10000
   ExtraButton15   : Qt.MouseButton.Class;-- 0x20000
   ExtraButton16   : Qt.MouseButton.Class;-- 0x40000
   ExtraButton17   : Qt.MouseButton.Class;-- 0x80000
   ExtraButton18   : Qt.MouseButton.Class;-- 0x100000
   ExtraButton19   : Qt.MouseButton.Class;-- 0x200000
   ExtraButton20   : Qt.MouseButton.Class;-- 0x400000
   ExtraButton21   : Qt.MouseButton.Class;-- 0x800000
   ExtraButton22   : Qt.MouseButton.Class;-- 0x1000000
   ExtraButton23   : Qt.MouseButton.Class;-- 0x2000000
   ExtraButton24   : Qt.MouseButton.Class;-- 0x4000000
   MaxMouseButton  : Qt.MouseButton.Class;-- 0x4000000
   AllButtons      : Qt.MouseButton.Class;-- 0x7ffffff
   MouseButtonMask : Qt.MouseButton.Class;-- 0xffffffff
end QtAda6.QtCore.Qt.MouseButton;
