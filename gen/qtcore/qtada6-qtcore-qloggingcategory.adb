-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qloggingcategory.adb
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
with QtAda6.QtCore.QtMsgType;
package body QtAda6.QtCore.QLoggingCategory is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (category_P : bytes; severityLevel_P : access QtAda6.QtCore.QtMsgType.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLoggingCategory");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (category_P)));
      Tuple_SetItem (Args, 1, (if severityLevel_P /= null then severityLevel_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_call_U (self : access Inst) return access QtAda6.QtCore.QLoggingCategory.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLoggingCategory.Class := new QtAda6.QtCore.QLoggingCategory.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_call_U;
   function categoryName (self : access Inst) return bytes is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "categoryName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end categoryName;
   function defaultCategory return access QtAda6.QtCore.QLoggingCategory.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QLoggingCategory.Class := new QtAda6.QtCore.QLoggingCategory.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLoggingCategory");
      Method           := Object_GetAttrString (Class, "defaultCategory");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultCategory;
   function isCriticalEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isCriticalEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isCriticalEnabled;
   function isDebugEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDebugEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDebugEnabled;
   function isEnabled (self : access Inst; type_K_P : access QtAda6.QtCore.QtMsgType.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEnabled;
   function isInfoEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isInfoEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isInfoEnabled;
   function isWarningEnabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWarningEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWarningEnabled;
   procedure setEnabled (self : access Inst; type_K_P : access QtAda6.QtCore.QtMsgType.Inst'Class; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnabled");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setEnabled;
   procedure setFilterRules (rules_P : str) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLoggingCategory");
      Method := Object_GetAttrString (Class, "setFilterRules");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (rules_P));
      Result := Object_CallObject (Method, Args, True);
   end setFilterRules;
end QtAda6.QtCore.QLoggingCategory;
