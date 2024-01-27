-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsplitterhandle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QSplitter;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QWidget;
package QtAda6.QtWidgets.QSplitterHandle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (o_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : access QtAda6.QtWidgets.QSplitter.Inst'Class)
      return Class;
   function closestLegalPosition (self : access Inst; p_P : int) return int;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure mouseMoveEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure moveSplitter (self : access Inst; p_P : int);
   function opaqueResize (self : access Inst) return bool;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure paintEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   procedure setOrientation (self : access Inst; o_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function splitter (self : access Inst) return access QtAda6.QtWidgets.QSplitter.Inst'Class;
end QtAda6.QtWidgets.QSplitterHandle;
