-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibleactioninterface.adb
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
package body QtAda6.QtGui.QAccessibleActionInterface is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function actionNames (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "actionNames");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end actionNames;
   function decreaseAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "decreaseAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end decreaseAction;
   procedure doAction (self : access Inst; actionName_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (actionName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doAction;
   function increaseAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "increaseAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end increaseAction;
   function keyBindingsForAction (self : access Inst; actionName_P : str) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyBindingsForAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (actionName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end keyBindingsForAction;
   function localizedActionDescription (self : access Inst; name_P : str) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "localizedActionDescription");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end localizedActionDescription;
   function localizedActionName (self : access Inst; name_P : str) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "localizedActionName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end localizedActionName;
   function nextPageAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "nextPageAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end nextPageAction;
   function pressAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "pressAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end pressAction;
   function previousPageAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "previousPageAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end previousPageAction;
   function scrollDownAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "scrollDownAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end scrollDownAction;
   function scrollLeftAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "scrollLeftAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end scrollLeftAction;
   function scrollRightAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "scrollRightAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end scrollRightAction;
   function scrollUpAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "scrollUpAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end scrollUpAction;
   function setFocusAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "setFocusAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end setFocusAction;
   function showMenuAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "showMenuAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end showMenuAction;
   function toggleAction return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleActionInterface");
      Method := Object_GetAttrString (Class, "toggleAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end toggleAction;
end QtAda6.QtGui.QAccessibleActionInterface;
