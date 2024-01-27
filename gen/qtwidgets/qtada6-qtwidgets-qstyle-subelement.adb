-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-subelement.adb
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
package body QtAda6.QtWidgets.QStyle.SubElement is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SE_PushButtonContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_PushButtonContents"));
   end SE_PushButtonContents;
   function SE_PushButtonFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_PushButtonFocusRect"));
   end SE_PushButtonFocusRect;
   function SE_CheckBoxIndicator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_CheckBoxIndicator"));
   end SE_CheckBoxIndicator;
   function SE_CheckBoxContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_CheckBoxContents"));
   end SE_CheckBoxContents;
   function SE_CheckBoxFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_CheckBoxFocusRect"));
   end SE_CheckBoxFocusRect;
   function SE_CheckBoxClickRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_CheckBoxClickRect"));
   end SE_CheckBoxClickRect;
   function SE_RadioButtonIndicator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_RadioButtonIndicator"));
   end SE_RadioButtonIndicator;
   function SE_RadioButtonContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_RadioButtonContents"));
   end SE_RadioButtonContents;
   function SE_RadioButtonFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_RadioButtonFocusRect"));
   end SE_RadioButtonFocusRect;
   function SE_RadioButtonClickRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_RadioButtonClickRect"));
   end SE_RadioButtonClickRect;
   function SE_ComboBoxFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ComboBoxFocusRect"));
   end SE_ComboBoxFocusRect;
   function SE_SliderFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_SliderFocusRect"));
   end SE_SliderFocusRect;
   function SE_ProgressBarGroove return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ProgressBarGroove"));
   end SE_ProgressBarGroove;
   function SE_ProgressBarContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ProgressBarContents"));
   end SE_ProgressBarContents;
   function SE_ProgressBarLabel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ProgressBarLabel"));
   end SE_ProgressBarLabel;
   function SE_ToolBoxTabContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ToolBoxTabContents"));
   end SE_ToolBoxTabContents;
   function SE_HeaderLabel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_HeaderLabel"));
   end SE_HeaderLabel;
   function SE_HeaderArrow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_HeaderArrow"));
   end SE_HeaderArrow;
   function SE_TabWidgetTabBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabWidgetTabBar"));
   end SE_TabWidgetTabBar;
   function SE_TabWidgetTabPane return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabWidgetTabPane"));
   end SE_TabWidgetTabPane;
   function SE_TabWidgetTabContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabWidgetTabContents"));
   end SE_TabWidgetTabContents;
   function SE_TabWidgetLeftCorner return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabWidgetLeftCorner"));
   end SE_TabWidgetLeftCorner;
   function SE_TabWidgetRightCorner return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabWidgetRightCorner"));
   end SE_TabWidgetRightCorner;
   function SE_ItemViewItemCheckIndicator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ItemViewItemCheckIndicator"));
   end SE_ItemViewItemCheckIndicator;
   function SE_TabBarTearIndicator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarTearIndicator"));
   end SE_TabBarTearIndicator;
   function SE_TabBarTearIndicatorLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarTearIndicatorLeft"));
   end SE_TabBarTearIndicatorLeft;
   function SE_TreeViewDisclosureItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TreeViewDisclosureItem"));
   end SE_TreeViewDisclosureItem;
   function SE_LineEditContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_LineEditContents"));
   end SE_LineEditContents;
   function SE_FrameContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_FrameContents"));
   end SE_FrameContents;
   function SE_DockWidgetCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_DockWidgetCloseButton"));
   end SE_DockWidgetCloseButton;
   function SE_DockWidgetFloatButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_DockWidgetFloatButton"));
   end SE_DockWidgetFloatButton;
   function SE_DockWidgetTitleBarText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_DockWidgetTitleBarText"));
   end SE_DockWidgetTitleBarText;
   function SE_DockWidgetIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_DockWidgetIcon"));
   end SE_DockWidgetIcon;
   function SE_CheckBoxLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_CheckBoxLayoutItem"));
   end SE_CheckBoxLayoutItem;
   function SE_ComboBoxLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ComboBoxLayoutItem"));
   end SE_ComboBoxLayoutItem;
   function SE_DateTimeEditLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_DateTimeEditLayoutItem"));
   end SE_DateTimeEditLayoutItem;
   function SE_LabelLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_LabelLayoutItem"));
   end SE_LabelLayoutItem;
   function SE_ProgressBarLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ProgressBarLayoutItem"));
   end SE_ProgressBarLayoutItem;
   function SE_PushButtonLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_PushButtonLayoutItem"));
   end SE_PushButtonLayoutItem;
   function SE_RadioButtonLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_RadioButtonLayoutItem"));
   end SE_RadioButtonLayoutItem;
   function SE_SliderLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_SliderLayoutItem"));
   end SE_SliderLayoutItem;
   function SE_SpinBoxLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_SpinBoxLayoutItem"));
   end SE_SpinBoxLayoutItem;
   function SE_ToolButtonLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ToolButtonLayoutItem"));
   end SE_ToolButtonLayoutItem;
   function SE_FrameLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_FrameLayoutItem"));
   end SE_FrameLayoutItem;
   function SE_GroupBoxLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_GroupBoxLayoutItem"));
   end SE_GroupBoxLayoutItem;
   function SE_TabWidgetLayoutItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabWidgetLayoutItem"));
   end SE_TabWidgetLayoutItem;
   function SE_ItemViewItemDecoration return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ItemViewItemDecoration"));
   end SE_ItemViewItemDecoration;
   function SE_ItemViewItemText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ItemViewItemText"));
   end SE_ItemViewItemText;
   function SE_ItemViewItemFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ItemViewItemFocusRect"));
   end SE_ItemViewItemFocusRect;
   function SE_TabBarTabLeftButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarTabLeftButton"));
   end SE_TabBarTabLeftButton;
   function SE_TabBarTabRightButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarTabRightButton"));
   end SE_TabBarTabRightButton;
   function SE_TabBarTabText return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarTabText"));
   end SE_TabBarTabText;
   function SE_ShapedFrameContents return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ShapedFrameContents"));
   end SE_ShapedFrameContents;
   function SE_ToolBarHandle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_ToolBarHandle"));
   end SE_ToolBarHandle;
   function SE_TabBarScrollLeftButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarScrollLeftButton"));
   end SE_TabBarScrollLeftButton;
   function SE_TabBarScrollRightButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarScrollRightButton"));
   end SE_TabBarScrollRightButton;
   function SE_TabBarTearIndicatorRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_TabBarTearIndicatorRight"));
   end SE_TabBarTearIndicatorRight;
   function SE_PushButtonBevel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_PushButtonBevel"));
   end SE_PushButtonBevel;
   function SE_CustomBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SubElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SE_CustomBase"));
   end SE_CustomBase;
end QtAda6.QtWidgets.QStyle.SubElement;
