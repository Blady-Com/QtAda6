-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-windowframesection.adb
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
package body QtAda6.QtCore.Qt.WindowFrameSection is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoSection"));
   end NoSection;
   function LeftSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LeftSection"));
   end LeftSection;
   function TopLeftSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TopLeftSection"));
   end TopLeftSection;
   function TopSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TopSection"));
   end TopSection;
   function TopRightSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TopRightSection"));
   end TopRightSection;
   function RightSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RightSection"));
   end RightSection;
   function BottomRightSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BottomRightSection"));
   end BottomRightSection;
   function BottomSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BottomSection"));
   end BottomSection;
   function BottomLeftSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BottomLeftSection"));
   end BottomLeftSection;
   function TitleBarArea return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowFrameSection");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TitleBarArea"));
   end TitleBarArea;
end QtAda6.QtCore.Qt.WindowFrameSection;
