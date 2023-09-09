-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-slot.adb
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
package body QtAda6.QtCore.Slot is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (types_P : type_K_T; name_P : Optional_str; result_P : Optional_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Slot");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, type_K_T_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_call_U (self : access Inst; function_K_P : Callable) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end U_call_U;
end QtAda6.QtCore.Slot;
