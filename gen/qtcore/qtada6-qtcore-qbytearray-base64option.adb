-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qbytearray-base64option.adb
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
package body QtAda6.QtCore.QByteArray.Base64Option is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Base64Encoding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Base64Encoding"));
   end Base64Encoding;
   function IgnoreBase64DecodingErrors return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IgnoreBase64DecodingErrors"));
   end IgnoreBase64DecodingErrors;
   function KeepTrailingEquals return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KeepTrailingEquals"));
   end KeepTrailingEquals;
   function Base64UrlEncoding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Base64UrlEncoding"));
   end Base64UrlEncoding;
   function OmitTrailingEquals return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OmitTrailingEquals"));
   end OmitTrailingEquals;
   function AbortOnBase64DecodingErrors return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64Option");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AbortOnBase64DecodingErrors"));
   end AbortOnBase64DecodingErrors;
end QtAda6.QtCore.QByteArray.Base64Option;
