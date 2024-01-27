-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyleoption-optiontype.adb
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
package body QtAda6.QtWidgets.QStyleOption.OptionType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SO_Default return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Default"));
   end SO_Default;
   function SO_FocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_FocusRect"));
   end SO_FocusRect;
   function SO_Button return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Button"));
   end SO_Button;
   function SO_Tab return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Tab"));
   end SO_Tab;
   function SO_MenuItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_MenuItem"));
   end SO_MenuItem;
   function SO_Frame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Frame"));
   end SO_Frame;
   function SO_ProgressBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ProgressBar"));
   end SO_ProgressBar;
   function SO_ToolBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ToolBox"));
   end SO_ToolBox;
   function SO_Header return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Header"));
   end SO_Header;
   function SO_DockWidget return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_DockWidget"));
   end SO_DockWidget;
   function SO_ViewItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ViewItem"));
   end SO_ViewItem;
   function SO_TabWidgetFrame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_TabWidgetFrame"));
   end SO_TabWidgetFrame;
   function SO_TabBarBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_TabBarBase"));
   end SO_TabBarBase;
   function SO_RubberBand return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_RubberBand"));
   end SO_RubberBand;
   function SO_ToolBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ToolBar"));
   end SO_ToolBar;
   function SO_GraphicsItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_GraphicsItem"));
   end SO_GraphicsItem;
   function SO_CustomBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_CustomBase"));
   end SO_CustomBase;
   function SO_Complex return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Complex"));
   end SO_Complex;
   function SO_Slider return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_Slider"));
   end SO_Slider;
   function SO_SpinBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_SpinBox"));
   end SO_SpinBox;
   function SO_ToolButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ToolButton"));
   end SO_ToolButton;
   function SO_ComboBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ComboBox"));
   end SO_ComboBox;
   function SO_TitleBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_TitleBar"));
   end SO_TitleBar;
   function SO_GroupBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_GroupBox"));
   end SO_GroupBox;
   function SO_SizeGrip return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_SizeGrip"));
   end SO_SizeGrip;
   function SO_ComplexCustomBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyleOption");
      Enum_Class   := Object_GetAttrString (Parent_Class, "OptionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SO_ComplexCustomBase"));
   end SO_ComplexCustomBase;
end QtAda6.QtWidgets.QStyleOption.OptionType;
