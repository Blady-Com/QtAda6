-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdialogbuttonbox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QDialogButtonBox.StandardButton;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QAbstractButton;
limited with QtAda6.QtWidgets.QDialogButtonBox.ButtonRole;
limited with QtAda6.QtWidgets.QPushButton;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QDialogButtonBox is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type List_QtAda6_QtWidgets_QAbstractButton is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   accepted      : ClassVar_Signal;-- accepted()
   clicked       : ClassVar_Signal;-- clicked(QAbstractButton*)
   helpRequested : ClassVar_Signal;-- helpRequested()
   rejected      : ClassVar_Signal;-- rejected()
   function Create
     (buttons_P     : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class;
      orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   function Create
     (buttons_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class;
      parent_P  : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure addButton
     (self   : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
      role_P : access QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst'Class);
   function addButton
     (self : access Inst; button_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class;
   function addButton
     (self : access Inst; text_P : str; role_P : access QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class;
   function button_F
     (self : access Inst; which_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class)
      return access QtAda6.QtWidgets.QPushButton.Inst'Class;
   function buttonRole_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QDialogButtonBox.ButtonRole.Inst'Class;
   function buttons (self : access Inst) return List_QtAda6_QtWidgets_QAbstractButton;
   function centerButtons (self : access Inst) return bool;
   procedure changeEvent (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure clear (self : access Inst);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure removeButton (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class);
   procedure setCenterButtons (self : access Inst; center_P : bool);
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setStandardButtons
     (self : access Inst; buttons_P : access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class);
   function standardButton_F
     (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class)
      return access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class;
   function standardButtons
     (self : access Inst) return access QtAda6.QtWidgets.QDialogButtonBox.StandardButton.Inst'Class;
end QtAda6.QtWidgets.QDialogButtonBox;
