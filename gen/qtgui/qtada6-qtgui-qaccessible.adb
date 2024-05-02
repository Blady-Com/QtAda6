-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessible.adb
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
with QtAda6.QtGui.QAccessibleInterface;
with QtAda6.QtGui.QTextCursor;
with QtAda6.QtGui.QAccessible.TextBoundaryType;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QAccessibleEvent;
package body QtAda6.QtGui.QAccessible is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (QAccessible_P : access QtAda6.QtGui.QAccessible.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QAccessible_P /= null then QAccessible_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function accessibleInterface (uniqueId_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "accessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (uniqueId_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end accessibleInterface;
   procedure cleanup is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "cleanup");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end cleanup;
   procedure deleteAccessibleInterface (uniqueId_P : int) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "deleteAccessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (uniqueId_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end deleteAccessibleInterface;
   procedure installFactory (arg_1_P : CALLABLE) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "installFactory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end installFactory;
   function isActive return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "isActive");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isActive;
   function qAccessibleTextBoundaryHelper
     (cursor_P       : access QtAda6.QtGui.QTextCursor.Inst'Class;
      boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class) return TUPLE_int_int
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "qAccessibleTextBoundaryHelper");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if boundaryType_P /= null then boundaryType_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_int_int do
         Ret.C0 := Long_AsLong (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
      end return;
   end qAccessibleTextBoundaryHelper;
   function queryAccessibleInterface
     (arg_1_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "queryAccessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end queryAccessibleInterface;
   function registerAccessibleInterface (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "registerAccessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if iface_P /= null then iface_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end registerAccessibleInterface;
   procedure setActive (active_P : bool) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "setActive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (active_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setActive;
   procedure setRootObject (object_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "setRootObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRootObject;
   function uniqueId (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "uniqueId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if iface_P /= null then iface_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end uniqueId;
   procedure updateAccessibility (event_P : access QtAda6.QtGui.QAccessibleEvent.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "updateAccessibility");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateAccessibility;
end QtAda6.QtGui.QAccessible;
