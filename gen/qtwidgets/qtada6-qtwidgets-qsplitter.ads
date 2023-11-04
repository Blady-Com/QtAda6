-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qsplitter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QChildEvent;
limited with QtAda6.QtWidgets.QSplitterHandle;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtCore.QByteArray;
with QtAda6.QtWidgets.QFrame;
package QtAda6.QtWidgets.QSplitter is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Sequence_int is access Any;
   type List_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QFrame.Inst with null record;
   procedure Finalize (Self : in out Class);
   splitterMoved : ClassVar_Signal;-- splitterMoved(int,int)
   function Create
     (arg_1_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   procedure addWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure changeEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class);
   procedure childEvent (self : access Inst; arg_1_P : access QtAda6.QtCore.QChildEvent.Inst'Class);
   function childrenCollapsible (self : access Inst) return bool;
   function closestLegalPosition (self : access Inst; arg_1_P : int; arg_2_P : int) return int;
   function count (self : access Inst) return int;
   function createHandle (self : access Inst) return access QtAda6.QtWidgets.QSplitterHandle.Inst'Class;
   function event (self : access Inst; arg_1_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function getRange (self : access Inst; index_P : int) return Object;
   function handle_F (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QSplitterHandle.Inst'Class;
   function handleWidth (self : access Inst) return int;
   function indexOf (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   procedure insertWidget (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   function isCollapsible (self : access Inst; index_P : int) return bool;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure moveSplitter (self : access Inst; pos_P : int; index_P : int);
   function opaqueResize (self : access Inst) return bool;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure refresh (self : access Inst);
   function replaceWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure resizeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function restoreState (self : access Inst; state_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool;
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setChildrenCollapsible (self : access Inst; arg_1_P : bool);
   procedure setCollapsible (self : access Inst; index_P : int; arg_2_P : bool);
   procedure setHandleWidth (self : access Inst; arg_1_P : int);
   procedure setOpaqueResize (self : access Inst; opaque_P : bool);
   procedure setOrientation (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setRubberBand (self : access Inst; position_P : int);
   procedure setSizes (self : access Inst; list_P : Sequence_int);
   procedure setStretchFactor (self : access Inst; index_P : int; stretch_P : int);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizes (self : access Inst) return List_int;
   function widget (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
end QtAda6.QtWidgets.QSplitter;
