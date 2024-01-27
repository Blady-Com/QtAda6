-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qscrollarea.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QAbstractScrollArea;
package QtAda6.QtWidgets.QScrollArea is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractScrollArea.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   procedure ensureVisible (self : access Inst; x_P : int; y_P : int; xmargin_P : int := 0; ymargin_P : int := 0);
   procedure ensureWidgetVisible
     (self      : access Inst; childWidget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; xmargin_P : int := 0;
      ymargin_P : int := 0);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure setAlignment (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setWidgetResizable (self : access Inst; resizable_P : bool);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function takeWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function widgetResizable (self : access Inst) return bool;
end QtAda6.QtWidgets.QScrollArea;
