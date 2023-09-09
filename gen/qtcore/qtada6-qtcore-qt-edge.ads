-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-edge.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.Qt.Edge is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   TopEdge    : Qt.Edge.Class;-- 0x1
   LeftEdge   : Qt.Edge.Class;-- 0x2
   RightEdge  : Qt.Edge.Class;-- 0x4
   BottomEdge : Qt.Edge.Class;-- 0x8
end QtAda6.QtCore.Qt.Edge;
