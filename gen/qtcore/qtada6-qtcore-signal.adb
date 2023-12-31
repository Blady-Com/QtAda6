-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-signal.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.SignalInstance;
package body QtAda6.QtCore.Signal is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (types_P : type_K_T; name_P : Optional_str; arguments_P : Optional_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Signal");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_get_U
     (self : access Inst; instance_P : None; owner_P : Optional_Any) return access QtAda6.QtCore.Signal.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Signal.Class := new QtAda6.QtCore.Signal.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__get__");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, None_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_get_U;
   function U_get_U
     (self : access Inst; instance_P : access QtAda6.QtCore.QObject.Inst'Class; owner_P : Optional_Any)
      return access QtAda6.QtCore.SignalInstance.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.SignalInstance.Class := new QtAda6.QtCore.SignalInstance.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__get__");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, instance_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_get_U;
   function U_get_U (self : access Inst) return access QtAda6.QtCore.SignalInstance.Inst'Class is
   begin
      return new QtAda6.QtCore.SignalInstance.Inst'(Python_Proxy => self.Python_Proxy);
   end U_get_U;
end QtAda6.QtCore.Signal;
