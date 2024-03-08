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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (types_P : Type_K_T; name_P : str := ""; result_P : str := "") return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Slot");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if types_P /= null then types_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if name_P /= "" then
         Dict_SetItemString (Dict, "name", Unicode_FromString (name_P));
      end if;
      if result_P /= "" then
         Dict_SetItemString (Dict, "result", Unicode_FromString (result_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_call_U (self : access Inst; function_K_P : CALLABLE) return Any is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if function_K_P /= null then function_K_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_call_U;
end QtAda6.QtCore.Slot;
