-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-primitiveelement.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.PrimitiveElement is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   PE_Frame                           : QStyle.PrimitiveElement.Class;-- 0x0
   PE_FrameDefaultButton              : QStyle.PrimitiveElement.Class;-- 0x1
   PE_FrameDockWidget                 : QStyle.PrimitiveElement.Class;-- 0x2
   PE_FrameFocusRect                  : QStyle.PrimitiveElement.Class;-- 0x3
   PE_FrameGroupBox                   : QStyle.PrimitiveElement.Class;-- 0x4
   PE_FrameLineEdit                   : QStyle.PrimitiveElement.Class;-- 0x5
   PE_FrameMenu                       : QStyle.PrimitiveElement.Class;-- 0x6
   PE_FrameStatusBarItem              : QStyle.PrimitiveElement.Class;-- 0x7
   PE_FrameTabWidget                  : QStyle.PrimitiveElement.Class;-- 0x8
   PE_FrameWindow                     : QStyle.PrimitiveElement.Class;-- 0x9
   PE_FrameButtonBevel                : QStyle.PrimitiveElement.Class;-- 0xa
   PE_FrameButtonTool                 : QStyle.PrimitiveElement.Class;-- 0xb
   PE_FrameTabBarBase                 : QStyle.PrimitiveElement.Class;-- 0xc
   PE_PanelButtonCommand              : QStyle.PrimitiveElement.Class;-- 0xd
   PE_PanelButtonBevel                : QStyle.PrimitiveElement.Class;-- 0xe
   PE_PanelButtonTool                 : QStyle.PrimitiveElement.Class;-- 0xf
   PE_PanelMenuBar                    : QStyle.PrimitiveElement.Class;-- 0x10
   PE_PanelToolBar                    : QStyle.PrimitiveElement.Class;-- 0x11
   PE_PanelLineEdit                   : QStyle.PrimitiveElement.Class;-- 0x12
   PE_IndicatorArrowDown              : QStyle.PrimitiveElement.Class;-- 0x13
   PE_IndicatorArrowLeft              : QStyle.PrimitiveElement.Class;-- 0x14
   PE_IndicatorArrowRight             : QStyle.PrimitiveElement.Class;-- 0x15
   PE_IndicatorArrowUp                : QStyle.PrimitiveElement.Class;-- 0x16
   PE_IndicatorBranch                 : QStyle.PrimitiveElement.Class;-- 0x17
   PE_IndicatorButtonDropDown         : QStyle.PrimitiveElement.Class;-- 0x18
   PE_IndicatorItemViewItemCheck      : QStyle.PrimitiveElement.Class;-- 0x19
   PE_IndicatorCheckBox               : QStyle.PrimitiveElement.Class;-- 0x1a
   PE_IndicatorDockWidgetResizeHandle : QStyle.PrimitiveElement.Class;-- 0x1b
   PE_IndicatorHeaderArrow            : QStyle.PrimitiveElement.Class;-- 0x1c
   PE_IndicatorMenuCheckMark          : QStyle.PrimitiveElement.Class;-- 0x1d
   PE_IndicatorProgressChunk          : QStyle.PrimitiveElement.Class;-- 0x1e
   PE_IndicatorRadioButton            : QStyle.PrimitiveElement.Class;-- 0x1f
   PE_IndicatorSpinDown               : QStyle.PrimitiveElement.Class;-- 0x20
   PE_IndicatorSpinMinus              : QStyle.PrimitiveElement.Class;-- 0x21
   PE_IndicatorSpinPlus               : QStyle.PrimitiveElement.Class;-- 0x22
   PE_IndicatorSpinUp                 : QStyle.PrimitiveElement.Class;-- 0x23
   PE_IndicatorToolBarHandle          : QStyle.PrimitiveElement.Class;-- 0x24
   PE_IndicatorToolBarSeparator       : QStyle.PrimitiveElement.Class;-- 0x25
   PE_PanelTipLabel                   : QStyle.PrimitiveElement.Class;-- 0x26
   PE_IndicatorTabTear                : QStyle.PrimitiveElement.Class;-- 0x27
   PE_IndicatorTabTearLeft            : QStyle.PrimitiveElement.Class;-- 0x27
   PE_PanelScrollAreaCorner           : QStyle.PrimitiveElement.Class;-- 0x28
   PE_Widget                          : QStyle.PrimitiveElement.Class;-- 0x29
   PE_IndicatorColumnViewArrow        : QStyle.PrimitiveElement.Class;-- 0x2a
   PE_IndicatorItemViewItemDrop       : QStyle.PrimitiveElement.Class;-- 0x2b
   PE_PanelItemViewItem               : QStyle.PrimitiveElement.Class;-- 0x2c
   PE_PanelItemViewRow                : QStyle.PrimitiveElement.Class;-- 0x2d
   PE_PanelStatusBar                  : QStyle.PrimitiveElement.Class;-- 0x2e
   PE_IndicatorTabClose               : QStyle.PrimitiveElement.Class;-- 0x2f
   PE_PanelMenu                       : QStyle.PrimitiveElement.Class;-- 0x30
   PE_IndicatorTabTearRight           : QStyle.PrimitiveElement.Class;-- 0x31
   PE_CustomBase                      : QStyle.PrimitiveElement.Class;-- 0xf000000
end QtAda6.QtWidgets.QStyle.PrimitiveElement;
