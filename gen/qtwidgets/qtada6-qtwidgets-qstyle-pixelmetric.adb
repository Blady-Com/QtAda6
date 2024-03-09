-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-pixelmetric.adb
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
package body QtAda6.QtWidgets.QStyle.PixelMetric is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PM_ButtonMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ButtonMargin"));
   end PM_ButtonMargin;
   function PM_ButtonDefaultIndicator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ButtonDefaultIndicator"));
   end PM_ButtonDefaultIndicator;
   function PM_MenuButtonIndicator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuButtonIndicator"));
   end PM_MenuButtonIndicator;
   function PM_ButtonShiftHorizontal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ButtonShiftHorizontal"));
   end PM_ButtonShiftHorizontal;
   function PM_ButtonShiftVertical return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ButtonShiftVertical"));
   end PM_ButtonShiftVertical;
   function PM_DefaultFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DefaultFrameWidth"));
   end PM_DefaultFrameWidth;
   function PM_SpinBoxFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SpinBoxFrameWidth"));
   end PM_SpinBoxFrameWidth;
   function PM_ComboBoxFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ComboBoxFrameWidth"));
   end PM_ComboBoxFrameWidth;
   function PM_MaximumDragDistance return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MaximumDragDistance"));
   end PM_MaximumDragDistance;
   function PM_ScrollBarExtent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ScrollBarExtent"));
   end PM_ScrollBarExtent;
   function PM_ScrollBarSliderMin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ScrollBarSliderMin"));
   end PM_ScrollBarSliderMin;
   function PM_SliderThickness return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SliderThickness"));
   end PM_SliderThickness;
   function PM_SliderControlThickness return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SliderControlThickness"));
   end PM_SliderControlThickness;
   function PM_SliderLength return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SliderLength"));
   end PM_SliderLength;
   function PM_SliderTickmarkOffset return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SliderTickmarkOffset"));
   end PM_SliderTickmarkOffset;
   function PM_SliderSpaceAvailable return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SliderSpaceAvailable"));
   end PM_SliderSpaceAvailable;
   function PM_DockWidgetSeparatorExtent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DockWidgetSeparatorExtent"));
   end PM_DockWidgetSeparatorExtent;
   function PM_DockWidgetHandleExtent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DockWidgetHandleExtent"));
   end PM_DockWidgetHandleExtent;
   function PM_DockWidgetFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DockWidgetFrameWidth"));
   end PM_DockWidgetFrameWidth;
   function PM_TabBarTabOverlap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarTabOverlap"));
   end PM_TabBarTabOverlap;
   function PM_TabBarTabHSpace return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarTabHSpace"));
   end PM_TabBarTabHSpace;
   function PM_TabBarTabVSpace return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarTabVSpace"));
   end PM_TabBarTabVSpace;
   function PM_TabBarBaseHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarBaseHeight"));
   end PM_TabBarBaseHeight;
   function PM_TabBarBaseOverlap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarBaseOverlap"));
   end PM_TabBarBaseOverlap;
   function PM_ProgressBarChunkWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ProgressBarChunkWidth"));
   end PM_ProgressBarChunkWidth;
   function PM_SplitterWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SplitterWidth"));
   end PM_SplitterWidth;
   function PM_TitleBarHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TitleBarHeight"));
   end PM_TitleBarHeight;
   function PM_MenuScrollerHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuScrollerHeight"));
   end PM_MenuScrollerHeight;
   function PM_MenuHMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuHMargin"));
   end PM_MenuHMargin;
   function PM_MenuVMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuVMargin"));
   end PM_MenuVMargin;
   function PM_MenuPanelWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuPanelWidth"));
   end PM_MenuPanelWidth;
   function PM_MenuTearoffHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuTearoffHeight"));
   end PM_MenuTearoffHeight;
   function PM_MenuDesktopFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuDesktopFrameWidth"));
   end PM_MenuDesktopFrameWidth;
   function PM_MenuBarPanelWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuBarPanelWidth"));
   end PM_MenuBarPanelWidth;
   function PM_MenuBarItemSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuBarItemSpacing"));
   end PM_MenuBarItemSpacing;
   function PM_MenuBarVMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuBarVMargin"));
   end PM_MenuBarVMargin;
   function PM_MenuBarHMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MenuBarHMargin"));
   end PM_MenuBarHMargin;
   function PM_IndicatorWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_IndicatorWidth"));
   end PM_IndicatorWidth;
   function PM_IndicatorHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_IndicatorHeight"));
   end PM_IndicatorHeight;
   function PM_ExclusiveIndicatorWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ExclusiveIndicatorWidth"));
   end PM_ExclusiveIndicatorWidth;
   function PM_ExclusiveIndicatorHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ExclusiveIndicatorHeight"));
   end PM_ExclusiveIndicatorHeight;
   function PM_DialogButtonsSeparator return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DialogButtonsSeparator"));
   end PM_DialogButtonsSeparator;
   function PM_DialogButtonsButtonWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DialogButtonsButtonWidth"));
   end PM_DialogButtonsButtonWidth;
   function PM_DialogButtonsButtonHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DialogButtonsButtonHeight"));
   end PM_DialogButtonsButtonHeight;
   function PM_MdiSubWindowFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MdiSubWindowFrameWidth"));
   end PM_MdiSubWindowFrameWidth;
   function PM_MdiSubWindowMinimizedWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MdiSubWindowMinimizedWidth"));
   end PM_MdiSubWindowMinimizedWidth;
   function PM_HeaderMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_HeaderMargin"));
   end PM_HeaderMargin;
   function PM_HeaderMarkSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_HeaderMarkSize"));
   end PM_HeaderMarkSize;
   function PM_HeaderGripMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_HeaderGripMargin"));
   end PM_HeaderGripMargin;
   function PM_TabBarTabShiftHorizontal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarTabShiftHorizontal"));
   end PM_TabBarTabShiftHorizontal;
   function PM_TabBarTabShiftVertical return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarTabShiftVertical"));
   end PM_TabBarTabShiftVertical;
   function PM_TabBarScrollButtonWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarScrollButtonWidth"));
   end PM_TabBarScrollButtonWidth;
   function PM_ToolBarFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarFrameWidth"));
   end PM_ToolBarFrameWidth;
   function PM_ToolBarHandleExtent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarHandleExtent"));
   end PM_ToolBarHandleExtent;
   function PM_ToolBarItemSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarItemSpacing"));
   end PM_ToolBarItemSpacing;
   function PM_ToolBarItemMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarItemMargin"));
   end PM_ToolBarItemMargin;
   function PM_ToolBarSeparatorExtent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarSeparatorExtent"));
   end PM_ToolBarSeparatorExtent;
   function PM_ToolBarExtensionExtent return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarExtensionExtent"));
   end PM_ToolBarExtensionExtent;
   function PM_SpinBoxSliderHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SpinBoxSliderHeight"));
   end PM_SpinBoxSliderHeight;
   function PM_ToolBarIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolBarIconSize"));
   end PM_ToolBarIconSize;
   function PM_ListViewIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ListViewIconSize"));
   end PM_ListViewIconSize;
   function PM_IconViewIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_IconViewIconSize"));
   end PM_IconViewIconSize;
   function PM_SmallIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SmallIconSize"));
   end PM_SmallIconSize;
   function PM_LargeIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LargeIconSize"));
   end PM_LargeIconSize;
   function PM_FocusFrameVMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_FocusFrameVMargin"));
   end PM_FocusFrameVMargin;
   function PM_FocusFrameHMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_FocusFrameHMargin"));
   end PM_FocusFrameHMargin;
   function PM_ToolTipLabelFrameWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ToolTipLabelFrameWidth"));
   end PM_ToolTipLabelFrameWidth;
   function PM_CheckBoxLabelSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_CheckBoxLabelSpacing"));
   end PM_CheckBoxLabelSpacing;
   function PM_TabBarIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBarIconSize"));
   end PM_TabBarIconSize;
   function PM_SizeGripSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SizeGripSize"));
   end PM_SizeGripSize;
   function PM_DockWidgetTitleMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DockWidgetTitleMargin"));
   end PM_DockWidgetTitleMargin;
   function PM_MessageBoxIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_MessageBoxIconSize"));
   end PM_MessageBoxIconSize;
   function PM_ButtonIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ButtonIconSize"));
   end PM_ButtonIconSize;
   function PM_DockWidgetTitleBarButtonMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_DockWidgetTitleBarButtonMargin"));
   end PM_DockWidgetTitleBarButtonMargin;
   function PM_RadioButtonLabelSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_RadioButtonLabelSpacing"));
   end PM_RadioButtonLabelSpacing;
   function PM_LayoutLeftMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LayoutLeftMargin"));
   end PM_LayoutLeftMargin;
   function PM_LayoutTopMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LayoutTopMargin"));
   end PM_LayoutTopMargin;
   function PM_LayoutRightMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LayoutRightMargin"));
   end PM_LayoutRightMargin;
   function PM_LayoutBottomMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LayoutBottomMargin"));
   end PM_LayoutBottomMargin;
   function PM_LayoutHorizontalSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LayoutHorizontalSpacing"));
   end PM_LayoutHorizontalSpacing;
   function PM_LayoutVerticalSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LayoutVerticalSpacing"));
   end PM_LayoutVerticalSpacing;
   function PM_TabBar_ScrollButtonOverlap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabBar_ScrollButtonOverlap"));
   end PM_TabBar_ScrollButtonOverlap;
   function PM_TextCursorWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TextCursorWidth"));
   end PM_TextCursorWidth;
   function PM_TabCloseIndicatorWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabCloseIndicatorWidth"));
   end PM_TabCloseIndicatorWidth;
   function PM_TabCloseIndicatorHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TabCloseIndicatorHeight"));
   end PM_TabCloseIndicatorHeight;
   function PM_ScrollView_ScrollBarSpacing return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ScrollView_ScrollBarSpacing"));
   end PM_ScrollView_ScrollBarSpacing;
   function PM_ScrollView_ScrollBarOverlap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_ScrollView_ScrollBarOverlap"));
   end PM_ScrollView_ScrollBarOverlap;
   function PM_SubMenuOverlap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_SubMenuOverlap"));
   end PM_SubMenuOverlap;
   function PM_TreeViewIndentation return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TreeViewIndentation"));
   end PM_TreeViewIndentation;
   function PM_HeaderDefaultSectionSizeHorizontal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_HeaderDefaultSectionSizeHorizontal"));
   end PM_HeaderDefaultSectionSizeHorizontal;
   function PM_HeaderDefaultSectionSizeVertical return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_HeaderDefaultSectionSizeVertical"));
   end PM_HeaderDefaultSectionSizeVertical;
   function PM_TitleBarButtonIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TitleBarButtonIconSize"));
   end PM_TitleBarButtonIconSize;
   function PM_TitleBarButtonSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_TitleBarButtonSize"));
   end PM_TitleBarButtonSize;
   function PM_LineEditIconSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LineEditIconSize"));
   end PM_LineEditIconSize;
   function PM_LineEditIconMargin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_LineEditIconMargin"));
   end PM_LineEditIconMargin;
   function PM_CustomBase return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PM_CustomBase"));
   end PM_CustomBase;
end QtAda6.QtWidgets.QStyle.PixelMetric;
