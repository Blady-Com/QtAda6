-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qxmlstreamattribute.adb
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
package body QtAda6.QtCore.QXmlStreamAttribute is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttribute");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QXmlStreamAttribute_P : access QtAda6.QtCore.QXmlStreamAttribute.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttribute");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QXmlStreamAttribute_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (namespaceUri_P : str; name_P : str; value_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttribute");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (namespaceUri_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (name_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (value_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (qualifiedName_P : str; value_P : str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttribute");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (qualifiedName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamAttribute");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function isDefault (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDefault");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDefault;
   function name (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end name;
   function namespaceUri (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "namespaceUri");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end namespaceUri;
   function prefix (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prefix");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end prefix;
   function qualifiedName (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "qualifiedName");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end qualifiedName;
   function value (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end value;
end QtAda6.QtCore.QXmlStreamAttribute;
