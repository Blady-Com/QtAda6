-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qpropertyanimation.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QVariantAnimation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAbstractAnimation.State;
package body QtAda6.QtCore.QPropertyAnimation is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QPropertyAnimation");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (target_P : access QtAda6.QtCore.QObject.Inst'Class; propertyName_P : Union_QtAda6_QtCore_QByteArray_bytes;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QPropertyAnimation");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function propertyName (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "propertyName");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end propertyName;
   procedure setPropertyName (self : access Inst; propertyName_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPropertyName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPropertyName;
   procedure setTargetObject (self : access Inst; target_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTargetObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, target_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTargetObject;
   function targetObject (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "targetObject");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end targetObject;
   procedure updateCurrentValue (self : access Inst; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCurrentValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end updateCurrentValue;
   procedure updateState
     (self       : access Inst; newState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class;
      oldState_P : access QtAda6.QtCore.QAbstractAnimation.State.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateState");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, newState_P.Python_Proxy);
      Tuple_SetItem (Args, 1, oldState_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateState;
end QtAda6.QtCore.QPropertyAnimation;
