-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfocusevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent.Type_K;
limited with QtAda6.QtCore.Qt.FocusReason;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QFocusEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QEvent.Type_K.Inst'Class;
      reason_P : access QtAda6.QtCore.Qt.FocusReason.Inst'Class := null) return Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QFocusEvent.Inst'Class;
   function gotFocus (self : access Inst) return bool;
   function lostFocus (self : access Inst) return bool;
   function reason (self : access Inst) return access QtAda6.QtCore.Qt.FocusReason.Inst'Class;
end QtAda6.QtGui.QFocusEvent;
