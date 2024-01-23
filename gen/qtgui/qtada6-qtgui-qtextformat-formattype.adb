-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextformat-formattype.adb
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
package body QtAda6.QtGui.QTextFormat.FormatType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function InvalidFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InvalidFormat"));
   end InvalidFormat;
   function BlockFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BlockFormat"));
   end BlockFormat;
   function CharFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CharFormat"));
   end CharFormat;
   function ListFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListFormat"));
   end ListFormat;
   function FrameFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FrameFormat"));
   end FrameFormat;
   function UserFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "FormatType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UserFormat"));
   end UserFormat;
end QtAda6.QtGui.QTextFormat.FormatType;
