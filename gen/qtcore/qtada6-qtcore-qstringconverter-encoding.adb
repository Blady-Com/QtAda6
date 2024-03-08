-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qstringconverter-encoding.adb
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
package body QtAda6.QtCore.QStringConverter.Encoding is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Utf8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf8"));
   end Utf8;
   function Utf16 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf16"));
   end Utf16;
   function Utf16LE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf16LE"));
   end Utf16LE;
   function Utf16BE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf16BE"));
   end Utf16BE;
   function Utf32 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf32"));
   end Utf32;
   function Utf32LE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf32LE"));
   end Utf32LE;
   function Utf32BE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Utf32BE"));
   end Utf32BE;
   function Latin1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Latin1"));
   end Latin1;
   function LastEncoding return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastEncoding"));
   end LastEncoding;
   function System return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStringConverter");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "System"));
   end System;
end QtAda6.QtCore.QStringConverter.Encoding;
