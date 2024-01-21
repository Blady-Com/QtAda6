-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcborvalue-encodingoption.adb
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
package body QtAda6.QtCore.QCborValue.EncodingOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoTransformation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "EncodingOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoTransformation"));
   end NoTransformation;
   function SortKeysInMaps return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "EncodingOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SortKeysInMaps"));
   end SortKeysInMaps;
   function UseFloat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "EncodingOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UseFloat"));
   end UseFloat;
   function UseFloat16 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "EncodingOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UseFloat16"));
   end UseFloat16;
   function UseIntegers return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCborValue");
      Enum_Class   := Object_GetAttrString (Parent_Class, "EncodingOption");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UseIntegers"));
   end UseIntegers;
end QtAda6.QtCore.QCborValue.EncodingOption;
