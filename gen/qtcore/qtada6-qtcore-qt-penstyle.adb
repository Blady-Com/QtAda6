-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-penstyle.adb
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
package body QtAda6.QtCore.Qt.PenStyle is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoPen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoPen"));
   end NoPen;
   function SolidLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SolidLine"));
   end SolidLine;
   function DashLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DashLine"));
   end DashLine;
   function DotLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DotLine"));
   end DotLine;
   function DashDotLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DashDotLine"));
   end DashDotLine;
   function DashDotDotLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DashDotDotLine"));
   end DashDotDotLine;
   function CustomDashLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomDashLine"));
   end CustomDashLine;
   function MPenStyle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PenStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MPenStyle"));
   end MPenStyle;
end QtAda6.QtCore.Qt.PenStyle;
