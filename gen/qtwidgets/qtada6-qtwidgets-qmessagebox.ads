-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qmessagebox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QMessageBox.Icon;
limited with QtAda6.QtWidgets.QMessageBox.StandardButton;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.WindowType;
limited with QtAda6.QtWidgets.QMessageBox.ButtonRole;
limited with QtAda6.QtWidgets.QPushButton;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QCheckBox;
limited with QtAda6.QtGui.QCloseEvent;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.TextFormat;
limited with QtAda6.QtCore.Qt.TextInteractionFlag;
limited with QtAda6.QtCore.Qt.WindowModality;
limited with QtAda6.QtGui.QShowEvent;
with QtAda6.QtWidgets.QDialog;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QAbstractButton;
package QtAda6.QtWidgets.QMessageBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   subtype LIST_QtAda6_QtWidgets_QAbstractButton is QtAda6.QtWidgets.QAbstractButton.Class_Array;
   type UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr is new Any;
   procedure Finalize (Self : in out Class);
   function buttonClicked (self : access Inst) return CLASSVAR_Signal;-- buttonClicked(QAbstractButton*)
   function Create
     (icon_P    : access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class; title_P : str; text_P : str;
      buttons_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class                    := null;
      flags_P   : access QtAda6.QtCore.Qt.WindowType.Inst'Class                 := null) return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   procedure about (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str);
   procedure aboutQt (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str := "");
   procedure addButton
     (self   : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
      role_P : access QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst'Class);
   function addButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class;
   function addButton
     (self : access Inst; text_P : str; role_P : access QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class;
   function button_F
     (self : access Inst; which_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function buttonRole_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QMessageBox.ButtonRole.Inst'Class;
   function buttonText (self : access Inst; button_P : int) return str;
   function buttons (self : access Inst) return LIST_QtAda6_QtWidgets_QAbstractButton;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   function checkBox (self : access Inst) return access QtAda6.QtWidgets.QCheckBox.Inst'Class;
   function clickedButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   procedure closeEvent (self : access Inst; event_P : access QtAda6.QtGui.QCloseEvent.Inst'Class);
   function critical
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class) return int;
   function critical
     (parent_P        : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      buttons_P       : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
   function defaultButton (self : access Inst) return access QtAda6.QtWidgets.QPushButton.Inst'Class;
   function detailedText (self : access Inst) return str;
   function escapeButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function icon_F (self : access Inst) return access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class;
   function iconPixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function information
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
-- function information(parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;title_P : str;text_P : str;buttons_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null) return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
   function informativeText (self : access Inst) return str;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   procedure open (self : access Inst);
   procedure open (self : access Inst; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; member_P : bytes);
   function question
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class) return int;
   function question
     (parent_P        : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      buttons_P       : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
   procedure removeButton (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setButtonText (self : access Inst; button_P : int; text_P : str);
   procedure setCheckBox (self : access Inst; cb_P : access QtAda6.QtWidgets.QCheckBox.Inst'Class);
   procedure setDefaultButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class);
   procedure setDefaultButton (self : access Inst; button_P : access QtAda6.QtWidgets.QPushButton.Inst'Class);
   procedure setDetailedText (self : access Inst; text_P : str);
   procedure setEscapeButton (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class);
   procedure setEscapeButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class);
   procedure setIcon (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class);
   procedure setIconPixmap (self : access Inst; pixmap_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr);
   procedure setInformativeText (self : access Inst; text_P : str);
   procedure setStandardButtons
     (self : access Inst; buttons_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class);
   procedure setText (self : access Inst; text_P : str);
   procedure setTextFormat (self : access Inst; format_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class);
   procedure setTextInteractionFlags
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class);
   procedure setWindowModality
     (self : access Inst; windowModality_P : access QtAda6.QtCore.Qt.WindowModality.Inst'Class);
   procedure setWindowTitle (self : access Inst; title_P : str);
   procedure showEvent (self : access Inst; event_P : access QtAda6.QtGui.QShowEvent.Inst'Class);
   function standardButton_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
   function standardButtons (self : access Inst) return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
   function standardIcon
     (icon_P : access QtAda6.QtWidgets.QMessageBox.Icon.Inst'Class) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function text (self : access Inst) return str;
   function textFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class;
   function textInteractionFlags (self : access Inst) return access QtAda6.QtCore.Qt.TextInteractionFlag.Inst'Class;
   function warning
     (parent_P  : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      button0_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
      button1_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class) return int;
   function warning
     (parent_P        : access QtAda6.QtWidgets.QWidget.Inst'Class; title_P : str; text_P : str;
      buttons_P       : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null;
      defaultButton_P : access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class := null)
      return access QtAda6.QtWidgets.QMessageBox.StandardButton.Inst'Class;
end QtAda6.QtWidgets.QMessageBox;
