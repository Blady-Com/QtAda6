-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyle-standardpixmap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QStyle.StandardPixmap is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntEnum with null record;
   procedure Finalize (Self : in out Class);
   function SP_TitleBarMenuButton return Class;-- 0x0
   function SP_TitleBarMinButton return Class;-- 0x1
   function SP_TitleBarMaxButton return Class;-- 0x2
   function SP_TitleBarCloseButton return Class;-- 0x3
   function SP_TitleBarNormalButton return Class;-- 0x4
   function SP_TitleBarShadeButton return Class;-- 0x5
   function SP_TitleBarUnshadeButton return Class;-- 0x6
   function SP_TitleBarContextHelpButton return Class;-- 0x7
   function SP_DockWidgetCloseButton return Class;-- 0x8
   function SP_MessageBoxInformation return Class;-- 0x9
   function SP_MessageBoxWarning return Class;-- 0xa
   function SP_MessageBoxCritical return Class;-- 0xb
   function SP_MessageBoxQuestion return Class;-- 0xc
   function SP_DesktopIcon return Class;-- 0xd
   function SP_TrashIcon return Class;-- 0xe
   function SP_ComputerIcon return Class;-- 0xf
   function SP_DriveFDIcon return Class;-- 0x10
   function SP_DriveHDIcon return Class;-- 0x11
   function SP_DriveCDIcon return Class;-- 0x12
   function SP_DriveDVDIcon return Class;-- 0x13
   function SP_DriveNetIcon return Class;-- 0x14
   function SP_DirOpenIcon return Class;-- 0x15
   function SP_DirClosedIcon return Class;-- 0x16
   function SP_DirLinkIcon return Class;-- 0x17
   function SP_DirLinkOpenIcon return Class;-- 0x18
   function SP_FileIcon return Class;-- 0x19
   function SP_FileLinkIcon return Class;-- 0x1a
   function SP_ToolBarHorizontalExtensionButton return Class;-- 0x1b
   function SP_ToolBarVerticalExtensionButton return Class;-- 0x1c
   function SP_FileDialogStart return Class;-- 0x1d
   function SP_FileDialogEnd return Class;-- 0x1e
   function SP_FileDialogToParent return Class;-- 0x1f
   function SP_FileDialogNewFolder return Class;-- 0x20
   function SP_FileDialogDetailedView return Class;-- 0x21
   function SP_FileDialogInfoView return Class;-- 0x22
   function SP_FileDialogContentsView return Class;-- 0x23
   function SP_FileDialogListView return Class;-- 0x24
   function SP_FileDialogBack return Class;-- 0x25
   function SP_DirIcon return Class;-- 0x26
   function SP_DialogOkButton return Class;-- 0x27
   function SP_DialogCancelButton return Class;-- 0x28
   function SP_DialogHelpButton return Class;-- 0x29
   function SP_DialogOpenButton return Class;-- 0x2a
   function SP_DialogSaveButton return Class;-- 0x2b
   function SP_DialogCloseButton return Class;-- 0x2c
   function SP_DialogApplyButton return Class;-- 0x2d
   function SP_DialogResetButton return Class;-- 0x2e
   function SP_DialogDiscardButton return Class;-- 0x2f
   function SP_DialogYesButton return Class;-- 0x30
   function SP_DialogNoButton return Class;-- 0x31
   function SP_ArrowUp return Class;-- 0x32
   function SP_ArrowDown return Class;-- 0x33
   function SP_ArrowLeft return Class;-- 0x34
   function SP_ArrowRight return Class;-- 0x35
   function SP_ArrowBack return Class;-- 0x36
   function SP_ArrowForward return Class;-- 0x37
   function SP_DirHomeIcon return Class;-- 0x38
   function SP_CommandLink return Class;-- 0x39
   function SP_VistaShield return Class;-- 0x3a
   function SP_BrowserReload return Class;-- 0x3b
   function SP_BrowserStop return Class;-- 0x3c
   function SP_MediaPlay return Class;-- 0x3d
   function SP_MediaStop return Class;-- 0x3e
   function SP_MediaPause return Class;-- 0x3f
   function SP_MediaSkipForward return Class;-- 0x40
   function SP_MediaSkipBackward return Class;-- 0x41
   function SP_MediaSeekForward return Class;-- 0x42
   function SP_MediaSeekBackward return Class;-- 0x43
   function SP_MediaVolume return Class;-- 0x44
   function SP_MediaVolumeMuted return Class;-- 0x45
   function SP_LineEditClearButton return Class;-- 0x46
   function SP_DialogYesToAllButton return Class;-- 0x47
   function SP_DialogNoToAllButton return Class;-- 0x48
   function SP_DialogSaveAllButton return Class;-- 0x49
   function SP_DialogAbortButton return Class;-- 0x4a
   function SP_DialogRetryButton return Class;-- 0x4b
   function SP_DialogIgnoreButton return Class;-- 0x4c
   function SP_RestoreDefaultsButton return Class;-- 0x4d
   function SP_TabCloseButton return Class;-- 0x4e
   function NStandardPixmap return Class;-- 0x4f
   function SP_CustomBase return Class;-- 0xf0000000
end QtAda6.QtWidgets.QStyle.StandardPixmap;
