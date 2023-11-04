-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-standardpixmap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntEnum;
package QtAda6.QtWidgets.QStyle.StandardPixmap is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntEnum.Inst with null record;
   procedure Finalize (Self : in out Class);
   SP_TitleBarMenuButton               : QStyle.StandardPixmap.Class;-- 0x0
   SP_TitleBarMinButton                : QStyle.StandardPixmap.Class;-- 0x1
   SP_TitleBarMaxButton                : QStyle.StandardPixmap.Class;-- 0x2
   SP_TitleBarCloseButton              : QStyle.StandardPixmap.Class;-- 0x3
   SP_TitleBarNormalButton             : QStyle.StandardPixmap.Class;-- 0x4
   SP_TitleBarShadeButton              : QStyle.StandardPixmap.Class;-- 0x5
   SP_TitleBarUnshadeButton            : QStyle.StandardPixmap.Class;-- 0x6
   SP_TitleBarContextHelpButton        : QStyle.StandardPixmap.Class;-- 0x7
   SP_DockWidgetCloseButton            : QStyle.StandardPixmap.Class;-- 0x8
   SP_MessageBoxInformation            : QStyle.StandardPixmap.Class;-- 0x9
   SP_MessageBoxWarning                : QStyle.StandardPixmap.Class;-- 0xa
   SP_MessageBoxCritical               : QStyle.StandardPixmap.Class;-- 0xb
   SP_MessageBoxQuestion               : QStyle.StandardPixmap.Class;-- 0xc
   SP_DesktopIcon                      : QStyle.StandardPixmap.Class;-- 0xd
   SP_TrashIcon                        : QStyle.StandardPixmap.Class;-- 0xe
   SP_ComputerIcon                     : QStyle.StandardPixmap.Class;-- 0xf
   SP_DriveFDIcon                      : QStyle.StandardPixmap.Class;-- 0x10
   SP_DriveHDIcon                      : QStyle.StandardPixmap.Class;-- 0x11
   SP_DriveCDIcon                      : QStyle.StandardPixmap.Class;-- 0x12
   SP_DriveDVDIcon                     : QStyle.StandardPixmap.Class;-- 0x13
   SP_DriveNetIcon                     : QStyle.StandardPixmap.Class;-- 0x14
   SP_DirOpenIcon                      : QStyle.StandardPixmap.Class;-- 0x15
   SP_DirClosedIcon                    : QStyle.StandardPixmap.Class;-- 0x16
   SP_DirLinkIcon                      : QStyle.StandardPixmap.Class;-- 0x17
   SP_DirLinkOpenIcon                  : QStyle.StandardPixmap.Class;-- 0x18
   SP_FileIcon                         : QStyle.StandardPixmap.Class;-- 0x19
   SP_FileLinkIcon                     : QStyle.StandardPixmap.Class;-- 0x1a
   SP_ToolBarHorizontalExtensionButton : QStyle.StandardPixmap.Class;-- 0x1b
   SP_ToolBarVerticalExtensionButton   : QStyle.StandardPixmap.Class;-- 0x1c
   SP_FileDialogStart                  : QStyle.StandardPixmap.Class;-- 0x1d
   SP_FileDialogEnd                    : QStyle.StandardPixmap.Class;-- 0x1e
   SP_FileDialogToParent               : QStyle.StandardPixmap.Class;-- 0x1f
   SP_FileDialogNewFolder              : QStyle.StandardPixmap.Class;-- 0x20
   SP_FileDialogDetailedView           : QStyle.StandardPixmap.Class;-- 0x21
   SP_FileDialogInfoView               : QStyle.StandardPixmap.Class;-- 0x22
   SP_FileDialogContentsView           : QStyle.StandardPixmap.Class;-- 0x23
   SP_FileDialogListView               : QStyle.StandardPixmap.Class;-- 0x24
   SP_FileDialogBack                   : QStyle.StandardPixmap.Class;-- 0x25
   SP_DirIcon                          : QStyle.StandardPixmap.Class;-- 0x26
   SP_DialogOkButton                   : QStyle.StandardPixmap.Class;-- 0x27
   SP_DialogCancelButton               : QStyle.StandardPixmap.Class;-- 0x28
   SP_DialogHelpButton                 : QStyle.StandardPixmap.Class;-- 0x29
   SP_DialogOpenButton                 : QStyle.StandardPixmap.Class;-- 0x2a
   SP_DialogSaveButton                 : QStyle.StandardPixmap.Class;-- 0x2b
   SP_DialogCloseButton                : QStyle.StandardPixmap.Class;-- 0x2c
   SP_DialogApplyButton                : QStyle.StandardPixmap.Class;-- 0x2d
   SP_DialogResetButton                : QStyle.StandardPixmap.Class;-- 0x2e
   SP_DialogDiscardButton              : QStyle.StandardPixmap.Class;-- 0x2f
   SP_DialogYesButton                  : QStyle.StandardPixmap.Class;-- 0x30
   SP_DialogNoButton                   : QStyle.StandardPixmap.Class;-- 0x31
   SP_ArrowUp                          : QStyle.StandardPixmap.Class;-- 0x32
   SP_ArrowDown                        : QStyle.StandardPixmap.Class;-- 0x33
   SP_ArrowLeft                        : QStyle.StandardPixmap.Class;-- 0x34
   SP_ArrowRight                       : QStyle.StandardPixmap.Class;-- 0x35
   SP_ArrowBack                        : QStyle.StandardPixmap.Class;-- 0x36
   SP_ArrowForward                     : QStyle.StandardPixmap.Class;-- 0x37
   SP_DirHomeIcon                      : QStyle.StandardPixmap.Class;-- 0x38
   SP_CommandLink                      : QStyle.StandardPixmap.Class;-- 0x39
   SP_VistaShield                      : QStyle.StandardPixmap.Class;-- 0x3a
   SP_BrowserReload                    : QStyle.StandardPixmap.Class;-- 0x3b
   SP_BrowserStop                      : QStyle.StandardPixmap.Class;-- 0x3c
   SP_MediaPlay                        : QStyle.StandardPixmap.Class;-- 0x3d
   SP_MediaStop                        : QStyle.StandardPixmap.Class;-- 0x3e
   SP_MediaPause                       : QStyle.StandardPixmap.Class;-- 0x3f
   SP_MediaSkipForward                 : QStyle.StandardPixmap.Class;-- 0x40
   SP_MediaSkipBackward                : QStyle.StandardPixmap.Class;-- 0x41
   SP_MediaSeekForward                 : QStyle.StandardPixmap.Class;-- 0x42
   SP_MediaSeekBackward                : QStyle.StandardPixmap.Class;-- 0x43
   SP_MediaVolume                      : QStyle.StandardPixmap.Class;-- 0x44
   SP_MediaVolumeMuted                 : QStyle.StandardPixmap.Class;-- 0x45
   SP_LineEditClearButton              : QStyle.StandardPixmap.Class;-- 0x46
   SP_DialogYesToAllButton             : QStyle.StandardPixmap.Class;-- 0x47
   SP_DialogNoToAllButton              : QStyle.StandardPixmap.Class;-- 0x48
   SP_DialogSaveAllButton              : QStyle.StandardPixmap.Class;-- 0x49
   SP_DialogAbortButton                : QStyle.StandardPixmap.Class;-- 0x4a
   SP_DialogRetryButton                : QStyle.StandardPixmap.Class;-- 0x4b
   SP_DialogIgnoreButton               : QStyle.StandardPixmap.Class;-- 0x4c
   SP_RestoreDefaultsButton            : QStyle.StandardPixmap.Class;-- 0x4d
   SP_TabCloseButton                   : QStyle.StandardPixmap.Class;-- 0x4e
   NStandardPixmap                     : QStyle.StandardPixmap.Class;-- 0x4f
   SP_CustomBase                       : QStyle.StandardPixmap.Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.StandardPixmap;
