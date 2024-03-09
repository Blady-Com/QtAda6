-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdateedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QDateTimeEdit;
package QtAda6.QtWidgets.QDateEdit is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDateTimeEdit.Inst with null record;
   procedure Finalize (Self : in out Class);
   function userDateChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- userDateChanged(QDate)
   function Create
     (date_P : access QtAda6.QtCore.QDate.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
end QtAda6.QtWidgets.QDateEdit;
