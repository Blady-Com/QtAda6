-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qerrormessage.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QDialog;
package QtAda6.QtWidgets.QErrorMessage is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDialog.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure changeEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure done (self : access Inst; arg_1_P : int);
   function qtHandler return access QtAda6.QtWidgets.QErrorMessage.Inst'Class;
   procedure showMessage (self : access Inst; message_P : str);
   procedure showMessage (self : access Inst; message_P : str; type_K_P : str);
end QtAda6.QtWidgets.QErrorMessage;
