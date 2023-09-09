-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsettings.adb
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
with QtAda6.QtCore.QSettings.Format;
with QtAda6.QtCore.QSettings.Scope;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QSettings.Status;
package body QtAda6.QtCore.QSettings is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (fileName_P : str; format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      parent_P   : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; organization_P : str; application_P : str;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Tuple_SetItem (Args, 1, scope_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Unicode_FromString (organization_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (application_P));
      Tuple_SetItem (Args, 4, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (organization_P : str; application_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (organization_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (application_P));
      Tuple_SetItem (Args, 2, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; organization_P : str; application_P : str;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, scope_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (organization_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (application_P));
      Tuple_SetItem (Args, 3, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (scope_P : access QtAda6.QtCore.QSettings.Scope.Inst'Class; parent_P : Optional_QtAda6_QtCore_QObject) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, scope_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function allKeys (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allKeys");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allKeys;
   function applicationName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "applicationName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end applicationName;
   procedure beginGroup (self : access Inst; prefix_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginGroup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Result := Object_CallObject (Method, Args, True);
   end beginGroup;
   function beginReadArray (self : access Inst; prefix_P : str) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginReadArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end beginReadArray;
   procedure beginWriteArray (self : access Inst; prefix_P : str; size_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginWriteArray");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (prefix_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Result := Object_CallObject (Method, Args, True);
   end beginWriteArray;
   function childGroups (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childGroups");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end childGroups;
   function childKeys (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childKeys");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end childKeys;
   procedure clear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   function contains (self : access Inst; key_P : str) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function defaultFormat return access QtAda6.QtCore.QSettings.Format.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QSettings.Format.Class := new QtAda6.QtCore.QSettings.Format.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Method           := Object_GetAttrString (Class, "defaultFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultFormat;
   procedure endArray (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endArray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endArray;
   procedure endGroup (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endGroup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endGroup;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function fallbacksEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fallbacksEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end fallbacksEnabled;
   function fileName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fileName;
   function format_F (self : access Inst) return access QtAda6.QtCore.QSettings.Format.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSettings.Format.Class := new QtAda6.QtCore.QSettings.Format.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format_F;
   function group (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "group");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end group;
   function isAtomicSyncRequired (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAtomicSyncRequired");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAtomicSyncRequired;
   function isWritable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWritable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWritable;
   function organizationName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "organizationName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end organizationName;
   procedure remove (self : access Inst; key_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
   end remove;
   function scope_F (self : access Inst) return access QtAda6.QtCore.QSettings.Scope.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSettings.Scope.Class := new QtAda6.QtCore.QSettings.Scope.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scope");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scope_F;
   procedure setArrayIndex (self : access Inst; i_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setArrayIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
   end setArrayIndex;
   procedure setAtomicSyncRequired (self : access Inst; enable_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAtomicSyncRequired");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setAtomicSyncRequired;
   procedure setDefaultFormat (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class) is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Method := Object_GetAttrString (Class, "setDefaultFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDefaultFormat;
   procedure setFallbacksEnabled (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFallbacksEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setFallbacksEnabled;
   procedure setPath
     (format_P : access QtAda6.QtCore.QSettings.Format.Inst'Class;
      scope_P  : access QtAda6.QtCore.QSettings.Scope.Inst'Class; path_P : str)
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSettings");
      Method := Object_GetAttrString (Class, "setPath");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Tuple_SetItem (Args, 1, scope_P.Python_Proxy);
      Tuple_SetItem (Args, 2, Unicode_FromString (path_P));
      Result := Object_CallObject (Method, Args, True);
   end setPath;
   procedure setValue (self : access Inst; key_P : str; value_P : Any) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setValue");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
   end setValue;
   function status_F (self : access Inst) return access QtAda6.QtCore.QSettings.Status.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSettings.Status.Class := new QtAda6.QtCore.QSettings.Status.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "status");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end status_F;
   procedure sync (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sync");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end sync;
   function value
     (self : access Inst; arg_1_P : str; defaultValue_P : Optional_Any; type_K_P : Optional_object) return Object
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end value;
   function value (self : access Inst; key_P : str) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end value;
end QtAda6.QtCore.QSettings;
