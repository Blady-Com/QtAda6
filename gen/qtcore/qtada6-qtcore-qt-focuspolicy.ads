-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-focuspolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.FocusPolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function NoFocus return Class;-- 0x0
   function TabFocus return Class;-- 0x1
   function ClickFocus return Class;-- 0x2
   function StrongFocus return Class;-- 0xb
   function WheelFocus return Class;-- 0xf
end QtAda6.QtCore.Qt.FocusPolicy;
