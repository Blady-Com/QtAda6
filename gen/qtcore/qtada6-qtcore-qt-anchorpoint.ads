-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-anchorpoint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.AnchorPoint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnchorLeft             : Qt.AnchorPoint.Class;-- 0x0
   AnchorHorizontalCenter : Qt.AnchorPoint.Class;-- 0x1
   AnchorRight            : Qt.AnchorPoint.Class;-- 0x2
   AnchorTop              : Qt.AnchorPoint.Class;-- 0x3
   AnchorVerticalCenter   : Qt.AnchorPoint.Class;-- 0x4
   AnchorBottom           : Qt.AnchorPoint.Class;-- 0x5
end QtAda6.QtCore.Qt.AnchorPoint;
