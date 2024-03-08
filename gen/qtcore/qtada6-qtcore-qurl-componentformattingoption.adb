-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qurl-componentformattingoption.adb
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
package body QtAda6.QtCore.QUrl.ComponentFormattingOption is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PrettyDecoded return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PrettyDecoded"));
   end PrettyDecoded;
   function EncodeSpaces return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EncodeSpaces"));
   end EncodeSpaces;
   function EncodeUnicode return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EncodeUnicode"));
   end EncodeUnicode;
   function EncodeDelimiters return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EncodeDelimiters"));
   end EncodeDelimiters;
   function EncodeReserved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EncodeReserved"));
   end EncodeReserved;
   function FullyEncoded return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FullyEncoded"));
   end FullyEncoded;
   function DecodeReserved return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DecodeReserved"));
   end DecodeReserved;
   function FullyDecoded return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QUrl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FullyDecoded"));
   end FullyDecoded;
end QtAda6.QtCore.QUrl.ComponentFormattingOption;
