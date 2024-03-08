-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborstreamreader-type_k.adb
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
package body QtAda6.QtCore.QCborStreamReader.Type_K is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function UnsignedInteger return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UnsignedInteger"));
   end UnsignedInteger;
   function NegativeInteger return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NegativeInteger"));
   end NegativeInteger;
   function ByteArray return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ByteArray"));
   end ByteArray;
   function ByteString return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ByteString"));
   end ByteString;
   function String return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "String"));
   end String;
   function TextString return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TextString"));
   end TextString;
   function Array_K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Array"));
   end Array_K;
   function Map return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Map"));
   end Map;
   function Tag return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tag"));
   end Tag;
   function SimpleType return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SimpleType"));
   end SimpleType;
   function Float16 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Float16"));
   end Float16;
   function HalfFloat return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HalfFloat"));
   end HalfFloat;
   function Float return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Float"));
   end Float;
   function Double return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Double"));
   end Double;
   function Invalid return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborStreamReader");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Invalid"));
   end Invalid;
end QtAda6.QtCore.QCborStreamReader.Type_K;
