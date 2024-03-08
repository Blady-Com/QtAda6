-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-signalinstance.adb
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
package body QtAda6.QtCore.SignalInstance is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   procedure connect (self : access Inst; slot_P : access Object'Class; type_K_P : Type_K_T := null) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "connect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if slot_P /= null then slot_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if type_K_P /= null then
         Dict_SetItemString (Dict, "type", type_K_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end connect;
   procedure disconnect (self : access Inst; slot_P : access Object'Class := null) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "disconnect");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if slot_P /= null then
         Dict_SetItemString (Dict, "slot", slot_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end disconnect;
   procedure emit (self : access Inst; args_P : Any) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "emit");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if args_P /= null then args_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end emit;
end QtAda6.QtCore.SignalInstance;
