-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qstringconverter.adb
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
with QtAda6.QtCore.QStringConverterBase;
with QtAda6.QtCore.QStringConverter.Encoding;
with QtAda6.QtCore.QStringConverterBase.Flag;
package body QtAda6.QtCore.QStringConverter is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (encoding_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class;
      f_P        : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, encoding_P.Python_Proxy);
      Tuple_SetItem (Args, 1, f_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (name_P : bytes; f_P : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (name_P)));
      Tuple_SetItem (Args, 1, f_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function hasError (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasError");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasError;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function name (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end name;
   function nameForEncoding (e_P : access QtAda6.QtCore.QStringConverter.Encoding.Inst'Class) return bytes is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      Method := Object_GetAttrString (Class, "nameForEncoding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, e_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end nameForEncoding;
   procedure resetState (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetState");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetState;
end QtAda6.QtCore.QStringConverter;
