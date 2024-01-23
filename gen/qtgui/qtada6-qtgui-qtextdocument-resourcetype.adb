-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextdocument-resourcetype.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QTextDocument.ResourceType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function UnknownResource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResourceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UnknownResource"));
   end UnknownResource;
   function HtmlResource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResourceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HtmlResource"));
   end HtmlResource;
   function ImageResource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResourceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImageResource"));
   end ImageResource;
   function StyleSheetResource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResourceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StyleSheetResource"));
   end StyleSheetResource;
   function MarkdownResource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResourceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MarkdownResource"));
   end MarkdownResource;
   function UserResource return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextDocument");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ResourceType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UserResource"));
   end UserResource;
end QtAda6.QtGui.QTextDocument.ResourceType;
