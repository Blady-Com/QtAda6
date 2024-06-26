-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstackedwidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtWidgets.QFrame;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QStackedWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QFrame.Inst with null record;
   procedure Finalize (Self : in out Class);
   function currentChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentChanged(int)
   function widgetRemoved (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- widgetRemoved(int)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function addWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   function count (self : access Inst) return int;
   function currentIndex (self : access Inst) return int;
   function currentWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function indexOf (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   function insertWidget
     (self : access Inst; index_P : int; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   procedure removeWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setCurrentWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function widget (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QStackedWidget;
