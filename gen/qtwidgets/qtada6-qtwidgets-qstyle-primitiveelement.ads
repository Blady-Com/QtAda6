-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-primitiveelement.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.PrimitiveElement is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function PE_Frame return Class;-- 0x0
   function PE_FrameDefaultButton return Class;-- 0x1
   function PE_FrameDockWidget return Class;-- 0x2
   function PE_FrameFocusRect return Class;-- 0x3
   function PE_FrameGroupBox return Class;-- 0x4
   function PE_FrameLineEdit return Class;-- 0x5
   function PE_FrameMenu return Class;-- 0x6
   function PE_FrameStatusBarItem return Class;-- 0x7
   function PE_FrameTabWidget return Class;-- 0x8
   function PE_FrameWindow return Class;-- 0x9
   function PE_FrameButtonBevel return Class;-- 0xa
   function PE_FrameButtonTool return Class;-- 0xb
   function PE_FrameTabBarBase return Class;-- 0xc
   function PE_PanelButtonCommand return Class;-- 0xd
   function PE_PanelButtonBevel return Class;-- 0xe
   function PE_PanelButtonTool return Class;-- 0xf
   function PE_PanelMenuBar return Class;-- 0x10
   function PE_PanelToolBar return Class;-- 0x11
   function PE_PanelLineEdit return Class;-- 0x12
   function PE_IndicatorArrowDown return Class;-- 0x13
   function PE_IndicatorArrowLeft return Class;-- 0x14
   function PE_IndicatorArrowRight return Class;-- 0x15
   function PE_IndicatorArrowUp return Class;-- 0x16
   function PE_IndicatorBranch return Class;-- 0x17
   function PE_IndicatorButtonDropDown return Class;-- 0x18
   function PE_IndicatorItemViewItemCheck return Class;-- 0x19
   function PE_IndicatorCheckBox return Class;-- 0x1a
   function PE_IndicatorDockWidgetResizeHandle return Class;-- 0x1b
   function PE_IndicatorHeaderArrow return Class;-- 0x1c
   function PE_IndicatorMenuCheckMark return Class;-- 0x1d
   function PE_IndicatorProgressChunk return Class;-- 0x1e
   function PE_IndicatorRadioButton return Class;-- 0x1f
   function PE_IndicatorSpinDown return Class;-- 0x20
   function PE_IndicatorSpinMinus return Class;-- 0x21
   function PE_IndicatorSpinPlus return Class;-- 0x22
   function PE_IndicatorSpinUp return Class;-- 0x23
   function PE_IndicatorToolBarHandle return Class;-- 0x24
   function PE_IndicatorToolBarSeparator return Class;-- 0x25
   function PE_PanelTipLabel return Class;-- 0x26
   function PE_IndicatorTabTear return Class;-- 0x27
   function PE_IndicatorTabTearLeft return Class;-- 0x27
   function PE_PanelScrollAreaCorner return Class;-- 0x28
   function PE_Widget return Class;-- 0x29
   function PE_IndicatorColumnViewArrow return Class;-- 0x2a
   function PE_IndicatorItemViewItemDrop return Class;-- 0x2b
   function PE_PanelItemViewItem return Class;-- 0x2c
   function PE_PanelItemViewRow return Class;-- 0x2d
   function PE_PanelStatusBar return Class;-- 0x2e
   function PE_IndicatorTabClose return Class;-- 0x2f
   function PE_PanelMenu return Class;-- 0x30
   function PE_IndicatorTabTearRight return Class;-- 0x31
   function PE_CustomBase return Class;-- 0xf000000
end QtAda6.QtWidgets.QStyle.PrimitiveElement;
