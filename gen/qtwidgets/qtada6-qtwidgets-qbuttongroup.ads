-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qbuttongroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QAbstractButton;
with QtAda6.QtCore.QObject;
package QtAda6.QtWidgets.QButtonGroup is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type List_QtAda6_QtWidgets_QAbstractButton is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   buttonClicked  : ClassVar_Signal;-- buttonClicked(QAbstractButton*)
   buttonPressed  : ClassVar_Signal;-- buttonPressed(QAbstractButton*)
   buttonReleased : ClassVar_Signal;-- buttonReleased(QAbstractButton*)
   buttonToggled  : ClassVar_Signal;-- buttonToggled(QAbstractButton*,bool)
   idClicked      : ClassVar_Signal;-- idClicked(int)
   idPressed      : ClassVar_Signal;-- idPressed(int)
   idReleased     : ClassVar_Signal;-- idReleased(int)
   idToggled      : ClassVar_Signal;-- idToggled(int,bool)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   procedure addButton (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class; id_P : int);
   function button (self : access Inst; id_P : int) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function buttons (self : access Inst) return List_QtAda6_QtWidgets_QAbstractButton;
   function checkedButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function checkedId (self : access Inst) return int;
   function exclusive (self : access Inst) return bool;
   function id (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) return int;
   procedure removeButton (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class);
   procedure setExclusive (self : access Inst; arg_1_P : bool);
   procedure setId (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class; id_P : int);
end QtAda6.QtWidgets.QButtonGroup;
