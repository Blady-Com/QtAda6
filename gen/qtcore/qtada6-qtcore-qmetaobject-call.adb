-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmetaobject-call.adb
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
package body QtAda6.QtCore.QMetaObject.Call is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function InvokeMetaMethod return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InvokeMetaMethod"));
   end InvokeMetaMethod;
   function ReadProperty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ReadProperty"));
   end ReadProperty;
   function WriteProperty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WriteProperty"));
   end WriteProperty;
   function ResetProperty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ResetProperty"));
   end ResetProperty;
   function CreateInstance return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CreateInstance"));
   end CreateInstance;
   function IndexOfMethod return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IndexOfMethod"));
   end IndexOfMethod;
   function RegisterPropertyMetaType return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RegisterPropertyMetaType"));
   end RegisterPropertyMetaType;
   function RegisterMethodArgumentMetaType return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RegisterMethodArgumentMetaType"));
   end RegisterMethodArgumentMetaType;
   function BindableProperty return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BindableProperty"));
   end BindableProperty;
   function CustomCall return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMetaObject");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Call");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomCall"));
   end CustomCall;
end QtAda6.QtCore.QMetaObject.Call;
