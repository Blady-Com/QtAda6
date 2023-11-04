-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsanchor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QSizePolicy.Policy;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QGraphicsAnchor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   procedure setSizePolicy (self : access Inst; policy_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class);
   procedure setSpacing (self : access Inst; spacing_P : float);
   function sizePolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class;
   function spacing (self : access Inst) return float;
   procedure unsetSpacing (self : access Inst);
end QtAda6.QtWidgets.QGraphicsAnchor;
