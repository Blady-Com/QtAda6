-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qbuttongroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
with QtAda6.QtWidgets.QAbstractButton;
package QtAda6.QtWidgets.QButtonGroup is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype CLASSVAR_Signal is QtAda6.QtCore.Signal.Class;
   subtype LIST_QtAda6_QtWidgets_QAbstractButton is QtAda6.QtWidgets.QAbstractButton.Class_Array;
   procedure Finalize (Self : in out Class);
   function buttonClicked (self : access Inst) return CLASSVAR_Signal;-- buttonClicked(QAbstractButton*)
   function buttonPressed (self : access Inst) return CLASSVAR_Signal;-- buttonPressed(QAbstractButton*)
   function buttonReleased (self : access Inst) return CLASSVAR_Signal;-- buttonReleased(QAbstractButton*)
   function buttonToggled (self : access Inst) return CLASSVAR_Signal;-- buttonToggled(QAbstractButton*,bool)
   function idClicked (self : access Inst) return CLASSVAR_Signal;-- idClicked(int)
   function idPressed (self : access Inst) return CLASSVAR_Signal;-- idPressed(int)
   function idReleased (self : access Inst) return CLASSVAR_Signal;-- idReleased(int)
   function idToggled (self : access Inst) return CLASSVAR_Signal;-- idToggled(int,bool)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure addButton
     (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class; id_P : int := 0);
   function button (self : access Inst; id_P : int) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function buttons (self : access Inst) return LIST_QtAda6_QtWidgets_QAbstractButton;
   function checkedButton (self : access Inst) return access QtAda6.QtWidgets.QAbstractButton.Inst'Class;
   function checkedId (self : access Inst) return int;
   function exclusive (self : access Inst) return bool;
   function id (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class) return int;
   procedure removeButton (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class);
   procedure setExclusive (self : access Inst; arg_1_P : bool);
   procedure setId (self : access Inst; button_P : access QtAda6.QtWidgets.QAbstractButton.Inst'Class; id_P : int);
end QtAda6.QtWidgets.QButtonGroup;
