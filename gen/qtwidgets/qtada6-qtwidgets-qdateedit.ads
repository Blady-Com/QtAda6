-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdateedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QDateTimeEdit;
package QtAda6.QtWidgets.QDateEdit is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDateTimeEdit.Inst with null record;
   procedure Finalize (Self : in out Class);
   userDateChanged : ClassVar_Signal;-- userDateChanged(QDate)
   function Create
     (date_P : access QtAda6.QtCore.QDate.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
end QtAda6.QtWidgets.QDateEdit;
