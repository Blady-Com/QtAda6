-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qjsonvalue-type_k.adb
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
package body QtAda6.QtCore.QJsonValue.Type_K is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Null_K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Null"));
   end Null_K;
   function Bool return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bool"));
   end Bool;
   function Double return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Double"));
   end Double;
   function String return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "String"));
   end String;
   function Array_K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Array"));
   end Array_K;
   function Object return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Object"));
   end Object;
   function Undefined return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QJsonValue");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Undefined"));
   end Undefined;
end QtAda6.QtCore.QJsonValue.Type_K;
