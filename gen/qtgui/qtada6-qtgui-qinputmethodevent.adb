-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputmethodevent.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QInputMethodEvent;
with QtAda6.QtGui.QInputMethodEvent.Attribute;
package body QtAda6.QtGui.QInputMethodEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtGui.QInputMethodEvent.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (preeditText_P : str; attributes_P : SEQUENCE_QtAda6_QtGui_QInputMethodEvent_Attribute) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      List  := List_New (attributes_P'Length);
      for ind in attributes_P'Range loop
         List_SetItem
           (List, ssize_t (ind - attributes_P'First),
            (if attributes_P (ind) /= null then attributes_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (preeditText_P));
      Tuple_SetItem (Args, 1, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_repr_U (self : access Inst) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end U_repr_U;
   function attributes (self : access Inst) return LIST_QtAda6_QtGui_QInputMethodEvent_Attribute is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "attributes");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end attributes;
   function clone (self : access Inst) return access QtAda6.QtGui.QInputMethodEvent.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QInputMethodEvent.Class := new QtAda6.QtGui.QInputMethodEvent.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function commitString (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "commitString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end commitString;
   function preeditString (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "preeditString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end preeditString;
   function replacementLength (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replacementLength");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end replacementLength;
   function replacementStart (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "replacementStart");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end replacementStart;
   procedure setCommitString
     (self : access Inst; commitString_P : str; replaceFrom_P : int := 0; replaceLength_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCommitString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (commitString_P));
      Dict := Dict_New;
      if replaceFrom_P /= 0 then
         Dict_SetItemString (Dict, "replaceFrom", Long_FromLong (replaceFrom_P));
      end if;
      if replaceLength_P /= 0 then
         Dict_SetItemString (Dict, "replaceLength", Long_FromLong (replaceLength_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setCommitString;
end QtAda6.QtGui.QInputMethodEvent;
