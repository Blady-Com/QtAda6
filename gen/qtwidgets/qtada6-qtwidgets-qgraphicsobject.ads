-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.GestureType;
limited with QtAda6.QtCore.Qt.GestureFlag;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QGraphicsObject is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsItem.Inst
--  and QtAda6.QtCore.QObject.Inst
   with null record;
   procedure Finalize (Self : in out Class);
   function childrenChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- childrenChanged()
   function enabledChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- enabledChanged()
   function heightChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- heightChanged()
   function opacityChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- opacityChanged()
   function parentChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- parentChanged()
   function rotationChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- rotationChanged()
   function scaleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- scaleChanged()
   function visibleChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- visibleChanged()
   function widthChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- widthChanged()
   function xChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- xChanged()
   function yChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- yChanged()
   function zChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- zChanged()
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsItem.Inst'Class := null) return Class;
   function event (self : access Inst; ev_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure grabGesture
     (self    : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.GestureFlag.Inst'Class := null);
   procedure ungrabGesture (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class);
   procedure updateMicroFocus (self : access Inst);
end QtAda6.QtWidgets.QGraphicsObject;
