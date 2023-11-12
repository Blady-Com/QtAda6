-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-signalinstance.adb
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
package body QtAda6.QtCore.SignalInstance is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   procedure connect (self : access Inst; slot_P : Object; type_K_P : Optional_type_K := null) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connect");
      if type_K_P /= null then
         Args := Tuple_New (2);
         Tuple_SetItem (Args, 0, slot_P.Python_Proxy);
         Tuple_SetItem (Args, 1, No_Value);
      else
         Args := Tuple_New (1);
         Tuple_SetItem (Args, 0, slot_P.Python_Proxy);
      end if;
      Result := Object_CallObject (Method, Args, True);
   end connect;
   procedure disconnect (self : access Inst; slot_P : Optional_object) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "disconnect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end disconnect;
   procedure emit (self : access Inst; args_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "emit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end emit;
end QtAda6.QtCore.SignalInstance;
