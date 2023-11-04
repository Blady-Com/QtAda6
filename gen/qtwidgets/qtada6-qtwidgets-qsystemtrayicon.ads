-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsystemtrayicon.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QSystemTrayIcon is
   type ClassVar_Signal is access Any;
   type Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   activated      : ClassVar_Signal;-- activated(QSystemTrayIcon::ActivationReason)
   messageClicked : ClassVar_Signal;-- messageClicked()
   function Create
     (icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function contextMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure hide (self : access Inst);
   function icon_F (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function isSystemTrayAvailable return bool;
   function isVisible (self : access Inst) return bool;
   procedure setContextMenu (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class);
   procedure setIcon (self : access Inst; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setToolTip (self : access Inst; tip_P : str);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure show (self : access Inst);
   procedure showMessage
     (self   : access Inst; title_P : str; msg_P : str;
      icon_P : access QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon.Inst'Class; msecs_P : int);
   procedure showMessage
     (self    : access Inst; title_P : str; msg_P : str; icon_P : Union_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;
      msecs_P : int);
   function supportsMessages return bool;
   function toolTip (self : access Inst) return str;
end QtAda6.QtWidgets.QSystemTrayIcon;
