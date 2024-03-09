-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsystemtrayicon.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QMenu;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QIcon;
limited with QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QSystemTrayIcon is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap is new Any;
   procedure Finalize (Self : in out Class);
   function activated
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- activated(QSystemTrayIcon::ActivationReason)
   function messageClicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- messageClicked()
   function Create
     (icon_P   : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function contextMenu (self : access Inst) return access QtAda6.QtWidgets.QMenu.Inst'Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure hide (self : access Inst);
   function icon (self : access Inst) return access QtAda6.QtGui.QIcon.Inst'Class;
   function isSystemTrayAvailable return bool;
   function isVisible (self : access Inst) return bool;
   procedure setContextMenu (self : access Inst; menu_P : access QtAda6.QtWidgets.QMenu.Inst'Class);
   procedure setIcon (self : access Inst; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap);
   procedure setToolTip (self : access Inst; tip_P : str);
   procedure setVisible (self : access Inst; visible_P : bool);
   procedure show (self : access Inst);
   procedure showMessage
     (self   : access Inst; title_P : str; msg_P : str;
      icon_P : access QtAda6.QtWidgets.QSystemTrayIcon.MessageIcon.Inst'Class := null; msecs_P : int := 0);
   procedure showMessage
     (self    : access Inst; title_P : str; msg_P : str; icon_P : UNION_QtAda6_QtGui_QIcon_QtAda6_QtGui_QPixmap;
      msecs_P : int := 0);
   function supportsMessages return bool;
   function toolTip (self : access Inst) return str;
end QtAda6.QtWidgets.QSystemTrayIcon;
