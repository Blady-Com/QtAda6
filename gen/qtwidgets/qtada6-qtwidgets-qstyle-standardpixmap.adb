-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstyle-standardpixmap.adb
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
package body QtAda6.QtWidgets.QStyle.StandardPixmap is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function SP_TitleBarMenuButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarMenuButton"));
   end SP_TitleBarMenuButton;
   function SP_TitleBarMinButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarMinButton"));
   end SP_TitleBarMinButton;
   function SP_TitleBarMaxButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarMaxButton"));
   end SP_TitleBarMaxButton;
   function SP_TitleBarCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarCloseButton"));
   end SP_TitleBarCloseButton;
   function SP_TitleBarNormalButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarNormalButton"));
   end SP_TitleBarNormalButton;
   function SP_TitleBarShadeButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarShadeButton"));
   end SP_TitleBarShadeButton;
   function SP_TitleBarUnshadeButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarUnshadeButton"));
   end SP_TitleBarUnshadeButton;
   function SP_TitleBarContextHelpButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TitleBarContextHelpButton"));
   end SP_TitleBarContextHelpButton;
   function SP_DockWidgetCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DockWidgetCloseButton"));
   end SP_DockWidgetCloseButton;
   function SP_MessageBoxInformation return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MessageBoxInformation"));
   end SP_MessageBoxInformation;
   function SP_MessageBoxWarning return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MessageBoxWarning"));
   end SP_MessageBoxWarning;
   function SP_MessageBoxCritical return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MessageBoxCritical"));
   end SP_MessageBoxCritical;
   function SP_MessageBoxQuestion return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MessageBoxQuestion"));
   end SP_MessageBoxQuestion;
   function SP_DesktopIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DesktopIcon"));
   end SP_DesktopIcon;
   function SP_TrashIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TrashIcon"));
   end SP_TrashIcon;
   function SP_ComputerIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ComputerIcon"));
   end SP_ComputerIcon;
   function SP_DriveFDIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DriveFDIcon"));
   end SP_DriveFDIcon;
   function SP_DriveHDIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DriveHDIcon"));
   end SP_DriveHDIcon;
   function SP_DriveCDIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DriveCDIcon"));
   end SP_DriveCDIcon;
   function SP_DriveDVDIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DriveDVDIcon"));
   end SP_DriveDVDIcon;
   function SP_DriveNetIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DriveNetIcon"));
   end SP_DriveNetIcon;
   function SP_DirOpenIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DirOpenIcon"));
   end SP_DirOpenIcon;
   function SP_DirClosedIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DirClosedIcon"));
   end SP_DirClosedIcon;
   function SP_DirLinkIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DirLinkIcon"));
   end SP_DirLinkIcon;
   function SP_DirLinkOpenIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DirLinkOpenIcon"));
   end SP_DirLinkOpenIcon;
   function SP_FileIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileIcon"));
   end SP_FileIcon;
   function SP_FileLinkIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileLinkIcon"));
   end SP_FileLinkIcon;
   function SP_ToolBarHorizontalExtensionButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ToolBarHorizontalExtensionButton"));
   end SP_ToolBarHorizontalExtensionButton;
   function SP_ToolBarVerticalExtensionButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ToolBarVerticalExtensionButton"));
   end SP_ToolBarVerticalExtensionButton;
   function SP_FileDialogStart return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogStart"));
   end SP_FileDialogStart;
   function SP_FileDialogEnd return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogEnd"));
   end SP_FileDialogEnd;
   function SP_FileDialogToParent return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogToParent"));
   end SP_FileDialogToParent;
   function SP_FileDialogNewFolder return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogNewFolder"));
   end SP_FileDialogNewFolder;
   function SP_FileDialogDetailedView return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogDetailedView"));
   end SP_FileDialogDetailedView;
   function SP_FileDialogInfoView return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogInfoView"));
   end SP_FileDialogInfoView;
   function SP_FileDialogContentsView return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogContentsView"));
   end SP_FileDialogContentsView;
   function SP_FileDialogListView return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogListView"));
   end SP_FileDialogListView;
   function SP_FileDialogBack return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_FileDialogBack"));
   end SP_FileDialogBack;
   function SP_DirIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DirIcon"));
   end SP_DirIcon;
   function SP_DialogOkButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogOkButton"));
   end SP_DialogOkButton;
   function SP_DialogCancelButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogCancelButton"));
   end SP_DialogCancelButton;
   function SP_DialogHelpButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogHelpButton"));
   end SP_DialogHelpButton;
   function SP_DialogOpenButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogOpenButton"));
   end SP_DialogOpenButton;
   function SP_DialogSaveButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogSaveButton"));
   end SP_DialogSaveButton;
   function SP_DialogCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogCloseButton"));
   end SP_DialogCloseButton;
   function SP_DialogApplyButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogApplyButton"));
   end SP_DialogApplyButton;
   function SP_DialogResetButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogResetButton"));
   end SP_DialogResetButton;
   function SP_DialogDiscardButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogDiscardButton"));
   end SP_DialogDiscardButton;
   function SP_DialogYesButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogYesButton"));
   end SP_DialogYesButton;
   function SP_DialogNoButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogNoButton"));
   end SP_DialogNoButton;
   function SP_ArrowUp return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ArrowUp"));
   end SP_ArrowUp;
   function SP_ArrowDown return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ArrowDown"));
   end SP_ArrowDown;
   function SP_ArrowLeft return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ArrowLeft"));
   end SP_ArrowLeft;
   function SP_ArrowRight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ArrowRight"));
   end SP_ArrowRight;
   function SP_ArrowBack return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ArrowBack"));
   end SP_ArrowBack;
   function SP_ArrowForward return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_ArrowForward"));
   end SP_ArrowForward;
   function SP_DirHomeIcon return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DirHomeIcon"));
   end SP_DirHomeIcon;
   function SP_CommandLink return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_CommandLink"));
   end SP_CommandLink;
   function SP_VistaShield return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_VistaShield"));
   end SP_VistaShield;
   function SP_BrowserReload return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_BrowserReload"));
   end SP_BrowserReload;
   function SP_BrowserStop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_BrowserStop"));
   end SP_BrowserStop;
   function SP_MediaPlay return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaPlay"));
   end SP_MediaPlay;
   function SP_MediaStop return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaStop"));
   end SP_MediaStop;
   function SP_MediaPause return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaPause"));
   end SP_MediaPause;
   function SP_MediaSkipForward return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaSkipForward"));
   end SP_MediaSkipForward;
   function SP_MediaSkipBackward return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaSkipBackward"));
   end SP_MediaSkipBackward;
   function SP_MediaSeekForward return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaSeekForward"));
   end SP_MediaSeekForward;
   function SP_MediaSeekBackward return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaSeekBackward"));
   end SP_MediaSeekBackward;
   function SP_MediaVolume return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaVolume"));
   end SP_MediaVolume;
   function SP_MediaVolumeMuted return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_MediaVolumeMuted"));
   end SP_MediaVolumeMuted;
   function SP_LineEditClearButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_LineEditClearButton"));
   end SP_LineEditClearButton;
   function SP_DialogYesToAllButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogYesToAllButton"));
   end SP_DialogYesToAllButton;
   function SP_DialogNoToAllButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogNoToAllButton"));
   end SP_DialogNoToAllButton;
   function SP_DialogSaveAllButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogSaveAllButton"));
   end SP_DialogSaveAllButton;
   function SP_DialogAbortButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogAbortButton"));
   end SP_DialogAbortButton;
   function SP_DialogRetryButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogRetryButton"));
   end SP_DialogRetryButton;
   function SP_DialogIgnoreButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_DialogIgnoreButton"));
   end SP_DialogIgnoreButton;
   function SP_RestoreDefaultsButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_RestoreDefaultsButton"));
   end SP_RestoreDefaultsButton;
   function SP_TabCloseButton return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_TabCloseButton"));
   end SP_TabCloseButton;
   function NStandardPixmap return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NStandardPixmap"));
   end NStandardPixmap;
   function SP_CustomBase return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStyle");
      Enum_Class   := Object_GetAttrString (Parent_Class, "StandardPixmap");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SP_CustomBase"));
   end SP_CustomBase;
end QtAda6.QtWidgets.QStyle.StandardPixmap;
