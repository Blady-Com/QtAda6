-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsocketnotifier.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QSocketNotifier.Type_K;
with QtAda6.QtCore.QEvent;
package body QtAda6.QtCore.QSocketNotifier is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (arg_1_P  : Object; arg_2_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSocketNotifier");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (arg_1_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class; parent_P : Optional_QtAda6_QtCore_QObject)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSocketNotifier");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (socket_P : int; arg_2_P : access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSocketNotifier");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (socket_P));
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function isEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEnabled;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   procedure setEnabled (self : access Inst; arg_1_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setEnabled;
   procedure setSocket (self : access Inst; socket_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSocket");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (socket_P));
      Result := Object_CallObject (Method, Args, True);
   end setSocket;
   function socket (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "socket");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end socket;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QSocketNotifier.Type_K.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QSocketNotifier.Type_K.Class := new QtAda6.QtCore.QSocketNotifier.Type_K.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K_F;
end QtAda6.QtCore.QSocketNotifier;
