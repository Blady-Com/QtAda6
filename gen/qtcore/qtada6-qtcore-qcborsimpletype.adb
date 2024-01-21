-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborsimpletype.adb
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
package body QtAda6.QtCore.QCborSimpleType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function False_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborSimpleType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborSimpleType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "False_"));
   end False_U;
   function True_U return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborSimpleType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborSimpleType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "True_"));
   end True_U;
   function Null_K return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborSimpleType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborSimpleType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Null"));
   end Null_K;
   function Undefined return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborSimpleType");
      Enum_Class   := Object_GetAttrString (Parent_Class, "QCborSimpleType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Undefined"));
   end Undefined;
end QtAda6.QtCore.QCborSimpleType;
