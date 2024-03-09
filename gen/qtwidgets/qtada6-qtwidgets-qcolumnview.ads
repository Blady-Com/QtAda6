-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcolumnview.ads
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
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.QItemSelectionModel;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtGui.QRegion;
with QtAda6.QtWidgets.QAbstractItemView;
package QtAda6.QtWidgets.QColumnView is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemView.Inst with null record;
   type LIST_int is array (Positive range <>) of int;
   type UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is new Any;
   type SEQUENCE_int is array (Positive range <>) of int;
   procedure Finalize (Self : in out Class);
   function updatePreviewWidget
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- updatePreviewWidget(QModelIndex)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function columnWidths (self : access Inst) return LIST_int;
   function createColumn
     (self : access Inst; rootIndex_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QAbstractItemView.Inst'Class;
   procedure currentChanged
     (self       : access Inst; current_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      previous_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   function horizontalOffset (self : access Inst) return int;
   function indexAt
     (self : access Inst; point_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure initializeColumn (self : access Inst; column_P : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class);
   function isIndexHidden
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function moveCursor
     (self        : access Inst; cursorAction_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      modifiers_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   function previewWidget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function resizeGripsVisible (self : access Inst) return bool;
   procedure rowsInserted
     (self : access Inst; parent_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class := null);
   procedure selectAll (self : access Inst);
   procedure setColumnWidths (self : access Inst; list_P : SEQUENCE_int);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setPreviewWidget (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure setResizeGripsVisible (self : access Inst; visible_P : bool);
   procedure setRootIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure setSelection
     (self      : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      command_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setSelectionModel
     (self : access Inst; selectionModel_P : access QtAda6.QtCore.QItemSelectionModel.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function verticalOffset (self : access Inst) return int;
   function visualRect
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtWidgets.QColumnView;
