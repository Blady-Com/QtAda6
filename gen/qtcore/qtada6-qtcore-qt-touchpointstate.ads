-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-touchpointstate.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.TouchPointState is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   TouchPointUnknownState : Qt.TouchPointState.Class;-- 0x0
   TouchPointPressed      : Qt.TouchPointState.Class;-- 0x1
   TouchPointMoved        : Qt.TouchPointState.Class;-- 0x2
   TouchPointStationary   : Qt.TouchPointState.Class;-- 0x4
   TouchPointReleased     : Qt.TouchPointState.Class;-- 0x8
end QtAda6.QtCore.Qt.TouchPointState;
