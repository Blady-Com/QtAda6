-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-primitiveelement.adb
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
package body QtAda6.QtWidgets.QStyle.PrimitiveElement is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PE_Frame return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_Frame"));
   end PE_Frame;
   function PE_FrameDefaultButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameDefaultButton"));
   end PE_FrameDefaultButton;
   function PE_FrameDockWidget return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameDockWidget"));
   end PE_FrameDockWidget;
   function PE_FrameFocusRect return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameFocusRect"));
   end PE_FrameFocusRect;
   function PE_FrameGroupBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameGroupBox"));
   end PE_FrameGroupBox;
   function PE_FrameLineEdit return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameLineEdit"));
   end PE_FrameLineEdit;
   function PE_FrameMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameMenu"));
   end PE_FrameMenu;
   function PE_FrameStatusBarItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameStatusBarItem"));
   end PE_FrameStatusBarItem;
   function PE_FrameTabWidget return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameTabWidget"));
   end PE_FrameTabWidget;
   function PE_FrameWindow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameWindow"));
   end PE_FrameWindow;
   function PE_FrameButtonBevel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameButtonBevel"));
   end PE_FrameButtonBevel;
   function PE_FrameButtonTool return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameButtonTool"));
   end PE_FrameButtonTool;
   function PE_FrameTabBarBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_FrameTabBarBase"));
   end PE_FrameTabBarBase;
   function PE_PanelButtonCommand return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelButtonCommand"));
   end PE_PanelButtonCommand;
   function PE_PanelButtonBevel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelButtonBevel"));
   end PE_PanelButtonBevel;
   function PE_PanelButtonTool return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelButtonTool"));
   end PE_PanelButtonTool;
   function PE_PanelMenuBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelMenuBar"));
   end PE_PanelMenuBar;
   function PE_PanelToolBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelToolBar"));
   end PE_PanelToolBar;
   function PE_PanelLineEdit return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelLineEdit"));
   end PE_PanelLineEdit;
   function PE_IndicatorArrowDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorArrowDown"));
   end PE_IndicatorArrowDown;
   function PE_IndicatorArrowLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorArrowLeft"));
   end PE_IndicatorArrowLeft;
   function PE_IndicatorArrowRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorArrowRight"));
   end PE_IndicatorArrowRight;
   function PE_IndicatorArrowUp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorArrowUp"));
   end PE_IndicatorArrowUp;
   function PE_IndicatorBranch return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorBranch"));
   end PE_IndicatorBranch;
   function PE_IndicatorButtonDropDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorButtonDropDown"));
   end PE_IndicatorButtonDropDown;
   function PE_IndicatorItemViewItemCheck return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorItemViewItemCheck"));
   end PE_IndicatorItemViewItemCheck;
   function PE_IndicatorCheckBox return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorCheckBox"));
   end PE_IndicatorCheckBox;
   function PE_IndicatorDockWidgetResizeHandle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorDockWidgetResizeHandle"));
   end PE_IndicatorDockWidgetResizeHandle;
   function PE_IndicatorHeaderArrow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorHeaderArrow"));
   end PE_IndicatorHeaderArrow;
   function PE_IndicatorMenuCheckMark return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorMenuCheckMark"));
   end PE_IndicatorMenuCheckMark;
   function PE_IndicatorProgressChunk return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorProgressChunk"));
   end PE_IndicatorProgressChunk;
   function PE_IndicatorRadioButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorRadioButton"));
   end PE_IndicatorRadioButton;
   function PE_IndicatorSpinDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorSpinDown"));
   end PE_IndicatorSpinDown;
   function PE_IndicatorSpinMinus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorSpinMinus"));
   end PE_IndicatorSpinMinus;
   function PE_IndicatorSpinPlus return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorSpinPlus"));
   end PE_IndicatorSpinPlus;
   function PE_IndicatorSpinUp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorSpinUp"));
   end PE_IndicatorSpinUp;
   function PE_IndicatorToolBarHandle return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorToolBarHandle"));
   end PE_IndicatorToolBarHandle;
   function PE_IndicatorToolBarSeparator return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorToolBarSeparator"));
   end PE_IndicatorToolBarSeparator;
   function PE_PanelTipLabel return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelTipLabel"));
   end PE_PanelTipLabel;
   function PE_IndicatorTabTear return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorTabTear"));
   end PE_IndicatorTabTear;
   function PE_IndicatorTabTearLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorTabTearLeft"));
   end PE_IndicatorTabTearLeft;
   function PE_PanelScrollAreaCorner return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelScrollAreaCorner"));
   end PE_PanelScrollAreaCorner;
   function PE_Widget return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_Widget"));
   end PE_Widget;
   function PE_IndicatorColumnViewArrow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorColumnViewArrow"));
   end PE_IndicatorColumnViewArrow;
   function PE_IndicatorItemViewItemDrop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorItemViewItemDrop"));
   end PE_IndicatorItemViewItemDrop;
   function PE_PanelItemViewItem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelItemViewItem"));
   end PE_PanelItemViewItem;
   function PE_PanelItemViewRow return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelItemViewRow"));
   end PE_PanelItemViewRow;
   function PE_PanelStatusBar return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelStatusBar"));
   end PE_PanelStatusBar;
   function PE_IndicatorTabClose return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorTabClose"));
   end PE_IndicatorTabClose;
   function PE_PanelMenu return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_PanelMenu"));
   end PE_PanelMenu;
   function PE_IndicatorTabTearRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_IndicatorTabTearRight"));
   end PE_IndicatorTabTearRight;
   function PE_CustomBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PrimitiveElement");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PE_CustomBase"));
   end PE_CustomBase;
end QtAda6.QtWidgets.QStyle.PrimitiveElement;
