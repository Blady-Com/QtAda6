-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qtimeedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QTime;
with QtAda6.QtWidgets.QDateTimeEdit;
package QtAda6.QtWidgets.QTimeEdit is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QDateTimeEdit.Inst with null record;
   procedure Finalize (Self : in out Class);
   function userTimeChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- userTimeChanged(QTime)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function Create
     (time_P : access QtAda6.QtCore.QTime.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class;
end QtAda6.QtWidgets.QTimeEdit;
