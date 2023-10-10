-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtouchevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtGui.QPointingDevice;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QEventPoint;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QPointerEvent;
package QtAda6.QtGui.QTouchEvent is
   type Optional_QtAda6_QtGui_QPointingDevice is access Any;
   type Sequence_QtAda6_QtGui_QEventPoint is access Any;
   type List_QtAda6_QtGui_QEventPoint is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QPointerEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QTouchEvent.Inst'Class) return Class;
   function Create
     (eventType_P   : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; device_P : Optional_QtAda6_QtGui_QPointingDevice;
      modifiers_P   : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
      touchPoints_P : Sequence_QtAda6_QtGui_QEventPoint) return Class;
   function U_repr_U (self : access Inst) return Object;
   function clone (self : access Inst) return access QtAda6.QtGui.QTouchEvent.Inst'Class;
   function isBeginEvent (self : access Inst) return bool;
   function isEndEvent (self : access Inst) return bool;
   function isUpdateEvent (self : access Inst) return bool;
   function target (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function touchPoints (self : access Inst) return List_QtAda6_QtGui_QEventPoint;
end QtAda6.QtGui.QTouchEvent;
