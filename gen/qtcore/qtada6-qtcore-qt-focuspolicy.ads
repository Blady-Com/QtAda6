-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-focuspolicy.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.Qt.FocusPolicy is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoFocus     : Qt.FocusPolicy.Class;-- 0x0
   TabFocus    : Qt.FocusPolicy.Class;-- 0x1
   ClickFocus  : Qt.FocusPolicy.Class;-- 0x2
   StrongFocus : Qt.FocusPolicy.Class;-- 0xb
   WheelFocus  : Qt.FocusPolicy.Class;-- 0xf
end QtAda6.QtCore.Qt.FocusPolicy;
