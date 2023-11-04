-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractscrollarea.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtGui.QContextMenuEvent;
limited with QtAda6.QtGui.QDragEnterEvent;
limited with QtAda6.QtGui.QDragLeaveEvent;
limited with QtAda6.QtGui.QDragMoveEvent;
limited with QtAda6.QtGui.QDropEvent;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QScrollBar;
limited with QtAda6.QtCore.Qt.ScrollBarPolicy;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QAbstractScrollArea.SizeAdjustPolicy;
limited with QtAda6.QtCore.QMargins;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QFrame;
package QtAda6.QtWidgets.QAbstractScrollArea is
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type List_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QFrame.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure addScrollBarWidget
     (self        : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure contextMenuEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QContextMenuEvent.Inst'Class);
   function cornerWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure dragEnterEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QDragEnterEvent.Inst'Class);
   procedure dragLeaveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QDragLeaveEvent.Inst'Class);
   procedure dragMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QDragMoveEvent.Inst'Class);
   procedure dropEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QDropEvent.Inst'Class);
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QObject.Inst'Class;
      arg_2_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function horizontalScrollBar (self : access Inst) return access QtAda6.QtWidgets.QScrollBar.Inst'Class;
   function horizontalScrollBarPolicy (self : access Inst) return access QtAda6.QtCore.Qt.ScrollBarPolicy.Inst'Class;
   procedure keyPressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function maximumViewportSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure mouseDoubleClickEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function scrollBarWidgets
     (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
      return List_QtAda6_QtWidgets_QWidget;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure setCornerWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setHorizontalScrollBar (self : access Inst; scrollbar_P : access QtAda6.QtWidgets.QScrollBar.Inst'Class);
   procedure setHorizontalScrollBarPolicy
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.ScrollBarPolicy.Inst'Class);
   procedure setSizeAdjustPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QAbstractScrollArea.SizeAdjustPolicy.Inst'Class);
   procedure setVerticalScrollBar (self : access Inst; scrollbar_P : access QtAda6.QtWidgets.QScrollBar.Inst'Class);
   procedure setVerticalScrollBarPolicy
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.ScrollBarPolicy.Inst'Class);
   procedure setViewport (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setViewportMargins (self : access Inst; left_P : int; top_P : int; right_P : int; bottom_P : int);
   procedure setViewportMargins (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class);
   procedure setupViewport (self : access Inst; viewport_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function sizeAdjustPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QAbstractScrollArea.SizeAdjustPolicy.Inst'Class;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function verticalScrollBar (self : access Inst) return access QtAda6.QtWidgets.QScrollBar.Inst'Class;
   function verticalScrollBarPolicy (self : access Inst) return access QtAda6.QtCore.Qt.ScrollBarPolicy.Inst'Class;
   function viewport (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function viewportEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function viewportMargins (self : access Inst) return access QtAda6.QtCore.QMargins.Inst'Class;
   function viewportSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure wheelEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QAbstractScrollArea;
