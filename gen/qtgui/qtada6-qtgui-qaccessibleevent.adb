-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibleevent.adb
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
with QtAda6.QtGui.QAccessible.Event;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QAccessibleEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
      typ_P   : access QtAda6.QtGui.QAccessible.Event.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleEvent");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, iface_P.Python_Proxy);
      Tuple_SetItem (Args, 1, typ_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (obj_P : access QtAda6.QtCore.QObject.Inst'Class; typ_P : access QtAda6.QtGui.QAccessible.Event.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleEvent");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, obj_P.Python_Proxy);
      Tuple_SetItem (Args, 1, typ_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function accessibleInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QAccessibleInterface.Class := new QtAda6.QtGui.QAccessibleInterface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "accessibleInterface");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end accessibleInterface;
   function child (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "child");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end child;
   function object (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "object");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end object;
   procedure setChild (self : access Inst; chld_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (chld_P));
      Result := Object_CallObject (Method, Args, True);
   end setChild;
   function type_K (self : access Inst) return access QtAda6.QtGui.QAccessible.Event.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QAccessible.Event.Class := new QtAda6.QtGui.QAccessible.Event.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K;
   function uniqueId (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "uniqueId");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end uniqueId;
end QtAda6.QtGui.QAccessibleEvent;
