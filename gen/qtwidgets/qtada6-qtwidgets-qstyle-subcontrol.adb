-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-subcontrol.adb
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
package body QtAda6.QtWidgets.QStyle.SubControl is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SC_None return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_None"));
   end SC_None;
   function SC_ComboBoxFrame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ComboBoxFrame"));
   end SC_ComboBoxFrame;
   function SC_DialGroove return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_DialGroove"));
   end SC_DialGroove;
   function SC_GroupBoxCheckBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_GroupBoxCheckBox"));
   end SC_GroupBoxCheckBox;
   function SC_MdiMinButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_MdiMinButton"));
   end SC_MdiMinButton;
   function SC_ScrollBarAddLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarAddLine"));
   end SC_ScrollBarAddLine;
   function SC_SliderGroove return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SliderGroove"));
   end SC_SliderGroove;
   function SC_SpinBoxUp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SpinBoxUp"));
   end SC_SpinBoxUp;
   function SC_TitleBarSysMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarSysMenu"));
   end SC_TitleBarSysMenu;
   function SC_ToolButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ToolButton"));
   end SC_ToolButton;
   function SC_ComboBoxEditField return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ComboBoxEditField"));
   end SC_ComboBoxEditField;
   function SC_DialHandle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_DialHandle"));
   end SC_DialHandle;
   function SC_GroupBoxLabel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_GroupBoxLabel"));
   end SC_GroupBoxLabel;
   function SC_MdiNormalButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_MdiNormalButton"));
   end SC_MdiNormalButton;
   function SC_ScrollBarSubLine return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarSubLine"));
   end SC_ScrollBarSubLine;
   function SC_SliderHandle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SliderHandle"));
   end SC_SliderHandle;
   function SC_SpinBoxDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SpinBoxDown"));
   end SC_SpinBoxDown;
   function SC_TitleBarMinButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarMinButton"));
   end SC_TitleBarMinButton;
   function SC_ToolButtonMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ToolButtonMenu"));
   end SC_ToolButtonMenu;
   function SC_ComboBoxArrow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ComboBoxArrow"));
   end SC_ComboBoxArrow;
   function SC_DialTickmarks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_DialTickmarks"));
   end SC_DialTickmarks;
   function SC_GroupBoxContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_GroupBoxContents"));
   end SC_GroupBoxContents;
   function SC_MdiCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_MdiCloseButton"));
   end SC_MdiCloseButton;
   function SC_ScrollBarAddPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarAddPage"));
   end SC_ScrollBarAddPage;
   function SC_SliderTickmarks return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SliderTickmarks"));
   end SC_SliderTickmarks;
   function SC_SpinBoxFrame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SpinBoxFrame"));
   end SC_SpinBoxFrame;
   function SC_TitleBarMaxButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarMaxButton"));
   end SC_TitleBarMaxButton;
   function SC_ComboBoxListBoxPopup return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ComboBoxListBoxPopup"));
   end SC_ComboBoxListBoxPopup;
   function SC_GroupBoxFrame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_GroupBoxFrame"));
   end SC_GroupBoxFrame;
   function SC_ScrollBarSubPage return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarSubPage"));
   end SC_ScrollBarSubPage;
   function SC_SpinBoxEditField return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_SpinBoxEditField"));
   end SC_SpinBoxEditField;
   function SC_TitleBarCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarCloseButton"));
   end SC_TitleBarCloseButton;
   function SC_ScrollBarFirst return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarFirst"));
   end SC_ScrollBarFirst;
   function SC_TitleBarNormalButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarNormalButton"));
   end SC_TitleBarNormalButton;
   function SC_ScrollBarLast return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarLast"));
   end SC_ScrollBarLast;
   function SC_TitleBarShadeButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarShadeButton"));
   end SC_TitleBarShadeButton;
   function SC_ScrollBarSlider return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarSlider"));
   end SC_ScrollBarSlider;
   function SC_TitleBarUnshadeButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarUnshadeButton"));
   end SC_TitleBarUnshadeButton;
   function SC_ScrollBarGroove return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_ScrollBarGroove"));
   end SC_ScrollBarGroove;
   function SC_TitleBarContextHelpButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarContextHelpButton"));
   end SC_TitleBarContextHelpButton;
   function SC_TitleBarLabel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_TitleBarLabel"));
   end SC_TitleBarLabel;
   function SC_CustomBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_CustomBase"));
   end SC_CustomBase;
   function SC_All return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubControl");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SC_All"));
   end SC_All;
end QtAda6.QtWidgets.QStyle.SubControl;
