-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qeventpoint-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QEventPoint.State is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Unknown    : QEventPoint.State.Class;-- 0x0
   Pressed    : QEventPoint.State.Class;-- 0x1
   Updated    : QEventPoint.State.Class;-- 0x2
   Stationary : QEventPoint.State.Class;-- 0x4
   Released   : QEventPoint.State.Class;-- 0x8
end QtAda6.QtGui.QEventPoint.State;
