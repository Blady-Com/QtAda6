-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborvalue-type_k.adb
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
package body QtAda6.QtCore.QCborValue.Type_K is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Invalid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Invalid"));
   end Invalid;
   function Integer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Integer"));
   end Integer;
   function ByteArray return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ByteArray"));
   end ByteArray;
   function String return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "String"));
   end String;
   function Array_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Array"));
   end Array_K;
   function Map return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Map"));
   end Map;
   function Tag return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Tag"));
   end Tag;
   function SimpleType return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SimpleType"));
   end SimpleType;
   function False_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "False_"));
   end False_U;
   function True_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "True_"));
   end True_U;
   function Null_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Null"));
   end Null_K;
   function Undefined return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Undefined"));
   end Undefined;
   function Double return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Double"));
   end Double;
   function DateTime return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DateTime"));
   end DateTime;
   function Url return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Url"));
   end Url;
   function RegularExpression return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RegularExpression"));
   end RegularExpression;
   function Uuid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Uuid"));
   end Uuid;
end QtAda6.QtCore.QCborValue.Type_K;
