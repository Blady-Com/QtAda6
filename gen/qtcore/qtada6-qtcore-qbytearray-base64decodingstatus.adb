-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qbytearray-base64decodingstatus.adb
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
package body QtAda6.QtCore.QByteArray.Base64DecodingStatus is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Ok return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64DecodingStatus");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ok"));
   end Ok;
   function IllegalInputLength return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64DecodingStatus");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IllegalInputLength"));
   end IllegalInputLength;
   function IllegalCharacter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64DecodingStatus");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IllegalCharacter"));
   end IllegalCharacter;
   function IllegalPadding return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QByteArray");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Base64DecodingStatus");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IllegalPadding"));
   end IllegalPadding;
end QtAda6.QtCore.QByteArray.Base64DecodingStatus;
