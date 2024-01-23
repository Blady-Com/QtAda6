-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputmethodevent-attributetype.adb
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
package body QtAda6.QtGui.QInputMethodEvent.AttributeType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function TextFormat return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AttributeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TextFormat"));
   end TextFormat;
   function Cursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AttributeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Cursor"));
   end Cursor;
   function Language return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AttributeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Language"));
   end Language;
   function Ruby return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AttributeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Ruby"));
   end Ruby;
   function Selection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QInputMethodEvent");
      Enum_Class   := Object_GetAttrString (Parent_Class, "AttributeType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Selection"));
   end Selection;
end QtAda6.QtGui.QInputMethodEvent.AttributeType;
