-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qwidgetaction.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QAction;
package QtAda6.QtWidgets.QWidgetAction is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QAction.Inst with null record;
   subtype LIST_QtAda6_QtWidgets_QWidget is QtAda6.QtWidgets.QWidget.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function createWidget
     (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function createdWidgets (self : access Inst) return LIST_QtAda6_QtWidgets_QWidget;
   function defaultWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure deleteWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure releaseWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function requestWidget
     (self : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure setDefaultWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
end QtAda6.QtWidgets.QWidgetAction;
