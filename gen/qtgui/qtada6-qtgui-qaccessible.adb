-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessible.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (QAccessible_P : access QtAda6.QtGui.QAccessible.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QAccessible_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function accessibleInterface (uniqueId_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "accessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (uniqueId_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end accessibleInterface;
   procedure cleanup is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "cleanup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end cleanup;
   procedure deleteAccessibleInterface (uniqueId_P : int) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "deleteAccessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (uniqueId_P));
      Result := Object_CallObject (Method, Args, True);
   end deleteAccessibleInterface;
   procedure installFactory (arg_1_P : Callable) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "installFactory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Callable_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end installFactory;
   function isActive return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "isActive");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isActive;
   function qAccessibleTextBoundaryHelper
     (cursor_P       : access QtAda6.QtGui.QTextCursor.Inst'Class;
      boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class) return Tuple_int_int
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "qAccessibleTextBoundaryHelper");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, cursor_P.Python_Proxy);
      Tuple_SetItem (Args, 1, boundaryType_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end qAccessibleTextBoundaryHelper;
   function queryAccessibleInterface
     (arg_1_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "queryAccessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end queryAccessibleInterface;
   function registerAccessibleInterface (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "registerAccessibleInterface");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, iface_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end registerAccessibleInterface;
   procedure setActive (active_P : bool) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "setActive");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (active_P));
      Result := Object_CallObject (Method, Args, True);
   end setActive;
   procedure setRootObject (object_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "setRootObject");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, object_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setRootObject;
   function uniqueId (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "uniqueId");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, iface_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end uniqueId;
   procedure updateAccessibility (event_P : access QtAda6.QtGui.QAccessibleEvent.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessible");
      Method := Object_GetAttrString (Class, "updateAccessibility");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateAccessibility;
end QtAda6.QtGui.QAccessible;
