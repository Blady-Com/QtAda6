-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextlistformat-style.adb
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
package body QtAda6.QtGui.QTextListFormat.Style is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ListUpperRoman return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListUpperRoman"));
   end ListUpperRoman;
   function ListLowerRoman return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListLowerRoman"));
   end ListLowerRoman;
   function ListUpperAlpha return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListUpperAlpha"));
   end ListUpperAlpha;
   function ListLowerAlpha return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListLowerAlpha"));
   end ListLowerAlpha;
   function ListDecimal return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListDecimal"));
   end ListDecimal;
   function ListSquare return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListSquare"));
   end ListSquare;
   function ListCircle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListCircle"));
   end ListCircle;
   function ListDisc return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListDisc"));
   end ListDisc;
   function ListStyleUndefined return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextListFormat");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Style");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ListStyleUndefined"));
   end ListStyleUndefined;
end QtAda6.QtGui.QTextListFormat.Style;
