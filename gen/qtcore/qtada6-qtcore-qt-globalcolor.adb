-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-globalcolor.adb
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
package body QtAda6.QtCore.Qt.GlobalColor is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function color0 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "color0"));
   end color0;
   function color1 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "color1"));
   end color1;
   function black return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "black"));
   end black;
   function white return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "white"));
   end white;
   function darkGray return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkGray"));
   end darkGray;
   function gray return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "gray"));
   end gray;
   function lightGray return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "lightGray"));
   end lightGray;
   function red return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "red"));
   end red;
   function green return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "green"));
   end green;
   function blue return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "blue"));
   end blue;
   function cyan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "cyan"));
   end cyan;
   function magenta return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "magenta"));
   end magenta;
   function yellow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "yellow"));
   end yellow;
   function darkRed return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkRed"));
   end darkRed;
   function darkGreen return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkGreen"));
   end darkGreen;
   function darkBlue return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkBlue"));
   end darkBlue;
   function darkCyan return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkCyan"));
   end darkCyan;
   function darkMagenta return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkMagenta"));
   end darkMagenta;
   function darkYellow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "darkYellow"));
   end darkYellow;
   function transparent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "GlobalColor");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "transparent"));
   end transparent;
end QtAda6.QtCore.Qt.GlobalColor;
