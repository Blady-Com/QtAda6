-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicssceneevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QEvent;
package QtAda6.QtWidgets.QGraphicsSceneEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class) return Class;
   procedure setTimestamp (self : access Inst; ts_P : int);
   function timestamp (self : access Inst) return int;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QGraphicsSceneEvent;
