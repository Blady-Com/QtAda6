-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qgraphicsobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.Qt.GestureType;
limited with QtAda6.QtCore.Qt.GestureFlag;
with QtAda6.QtWidgets.QGraphicsItem;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QGraphicsObject is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QGraphicsItem is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QGraphicsItem.Inst
--  and QtAda6.QtCore.QObject.Inst
   with null record;
   procedure Finalize (Self : in out Class);
   childrenChanged : ClassVar_Signal;-- childrenChanged()
   enabledChanged  : ClassVar_Signal;-- enabledChanged()
   heightChanged   : ClassVar_Signal;-- heightChanged()
   opacityChanged  : ClassVar_Signal;-- opacityChanged()
   parentChanged   : ClassVar_Signal;-- parentChanged()
   rotationChanged : ClassVar_Signal;-- rotationChanged()
   scaleChanged    : ClassVar_Signal;-- scaleChanged()
   visibleChanged  : ClassVar_Signal;-- visibleChanged()
   widthChanged    : ClassVar_Signal;-- widthChanged()
   xChanged        : ClassVar_Signal;-- xChanged()
   yChanged        : ClassVar_Signal;-- yChanged()
   zChanged        : ClassVar_Signal;-- zChanged()
   function Create (parent_P : Optional_QtAda6_QtWidgets_QGraphicsItem) return Class;
   function event (self : access Inst; ev_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure grabGesture
     (self    : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.GestureFlag.Inst'Class);
   procedure ungrabGesture (self : access Inst; type_K_P : access QtAda6.QtCore.Qt.GestureType.Inst'Class);
   procedure updateMicroFocus (self : access Inst);
end QtAda6.QtWidgets.QGraphicsObject;
