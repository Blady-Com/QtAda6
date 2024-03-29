-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtGui.QInputDevice;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QInputDevice.DeviceType;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QInputEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QInputEvent.Inst'Class) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class; m_dev_P : access QtAda6.QtGui.QInputDevice.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class := null) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QInputEvent.Inst'Class;
   function device (self : access Inst) return access QtAda6.QtGui.QInputDevice.Inst'Class;
   function deviceType (self : access Inst) return access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class;
   function modifiers (self : access Inst) return access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class;
   procedure setModifiers (self : access Inst; modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class);
   procedure setTimestamp (self : access Inst; timestamp_P : int);
   function timestamp (self : access Inst) return int;
end QtAda6.QtGui.QInputEvent;
