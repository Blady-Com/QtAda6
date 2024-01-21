-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-slot.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
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
   function Create (types_P : Type_K_T; name_P : str := ""; result_P : str := "") return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Slot");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if types_P /= null then types_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (result_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_call_U (self : access Inst; function_K_P : CALLABLE) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if function_K_P /= null then function_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end U_call_U;
end QtAda6.QtCore.Slot;
