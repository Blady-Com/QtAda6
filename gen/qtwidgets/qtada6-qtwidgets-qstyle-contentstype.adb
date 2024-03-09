-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-contentstype.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QStyle.ContentsType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function CT_PushButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_PushButton"));
   end CT_PushButton;
   function CT_CheckBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_CheckBox"));
   end CT_CheckBox;
   function CT_RadioButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_RadioButton"));
   end CT_RadioButton;
   function CT_ToolButton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_ToolButton"));
   end CT_ToolButton;
   function CT_ComboBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_ComboBox"));
   end CT_ComboBox;
   function CT_Splitter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_Splitter"));
   end CT_Splitter;
   function CT_ProgressBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_ProgressBar"));
   end CT_ProgressBar;
   function CT_MenuItem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_MenuItem"));
   end CT_MenuItem;
   function CT_MenuBarItem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_MenuBarItem"));
   end CT_MenuBarItem;
   function CT_MenuBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_MenuBar"));
   end CT_MenuBar;
   function CT_Menu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_Menu"));
   end CT_Menu;
   function CT_TabBarTab return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_TabBarTab"));
   end CT_TabBarTab;
   function CT_Slider return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_Slider"));
   end CT_Slider;
   function CT_ScrollBar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_ScrollBar"));
   end CT_ScrollBar;
   function CT_LineEdit return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_LineEdit"));
   end CT_LineEdit;
   function CT_SpinBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_SpinBox"));
   end CT_SpinBox;
   function CT_SizeGrip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_SizeGrip"));
   end CT_SizeGrip;
   function CT_TabWidget return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_TabWidget"));
   end CT_TabWidget;
   function CT_DialogButtons return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_DialogButtons"));
   end CT_DialogButtons;
   function CT_HeaderSection return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_HeaderSection"));
   end CT_HeaderSection;
   function CT_GroupBox return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_GroupBox"));
   end CT_GroupBox;
   function CT_MdiControls return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_MdiControls"));
   end CT_MdiControls;
   function CT_ItemViewItem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_ItemViewItem"));
   end CT_ItemViewItem;
   function CT_CustomBase return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CT_CustomBase"));
   end CT_CustomBase;
end QtAda6.QtWidgets.QStyle.ContentsType;
