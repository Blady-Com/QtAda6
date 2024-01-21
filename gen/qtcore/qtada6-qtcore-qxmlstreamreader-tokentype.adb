-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qxmlstreamreader-tokentype.adb
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
package body QtAda6.QtCore.QXmlStreamReader.TokenType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoToken return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoToken"));
   end NoToken;
   function Invalid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Invalid"));
   end Invalid;
   function StartDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StartDocument"));
   end StartDocument;
   function EndDocument return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EndDocument"));
   end EndDocument;
   function StartElement return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StartElement"));
   end StartElement;
   function EndElement return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EndElement"));
   end EndElement;
   function Characters return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Characters"));
   end Characters;
   function Comment return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Comment"));
   end Comment;
   function DTD return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DTD"));
   end DTD;
   function EntityReference return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EntityReference"));
   end EntityReference;
   function ProcessingInstruction return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamReader");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TokenType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ProcessingInstruction"));
   end ProcessingInstruction;
end QtAda6.QtCore.QXmlStreamReader.TokenType;
