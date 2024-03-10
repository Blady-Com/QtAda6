-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-signal.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.SignalInstance;
package body QtAda6.QtCore.Signal is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (types_P : Type_K_T; name_P : str := ""; arguments_P : str := "") return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Signal");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if types_P /= null then types_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if name_P /= "" then
         Dict_SetItemString (Dict, "name", Unicode_FromString (name_P));
      end if;
      if arguments_P /= "" then
         Dict_SetItemString (Dict, "arguments", Unicode_FromString (arguments_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_get_U
     (self : access Inst; instance_P : None; owner_P : Any := null) return access QtAda6.QtCore.Signal.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.Signal.Class := new QtAda6.QtCore.Signal.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__get__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, None_conv_A2P_is_not_supported);
      Dict := Dict_New;
      if owner_P /= null then
         Dict_SetItemString (Dict, "owner", owner_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_get_U;
   function U_get_U
     (self : access Inst; instance_P : access QtAda6.QtCore.QObject.Inst'Class; owner_P : Any := null)
      return access QtAda6.QtCore.SignalInstance.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.SignalInstance.Class := new QtAda6.QtCore.SignalInstance.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__get__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if instance_P /= null then instance_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if owner_P /= null then
         Dict_SetItemString (Dict, "owner", owner_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_get_U;
   function U_get_U (self : access Inst) return access QtAda6.QtCore.SignalInstance.Inst'Class is
      Ret : constant QtAda6.QtCore.SignalInstance.Class := new QtAda6.QtCore.SignalInstance.Inst;
   begin
      Ret.Python_Proxy := self.Python_Proxy;
      return Ret;
   end U_get_U;
end QtAda6.QtCore.Signal;
