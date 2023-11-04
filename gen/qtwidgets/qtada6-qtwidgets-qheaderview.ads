-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qheaderview.ads
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
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtWidgets.QStyleOptionFrame;
limited with QtAda6.QtWidgets.QStyleOptionHeader;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtWidgets.QAbstractItemView.CursorAction;
limited with QtAda6.QtCore.Qt.KeyboardModifier;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtWidgets.QHeaderView.ResizeMode;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtWidgets.QAbstractItemView.ScrollHint;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.QItemSelectionModel.SelectionFlag;
limited with QtAda6.QtCore.Qt.SortOrder;
limited with QtAda6.QtCore.QItemSelection;
limited with QtAda6.QtGui.QRegion;
with QtAda6.QtWidgets.QAbstractItemView;
package QtAda6.QtWidgets.QHeaderView is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Sequence_int is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemView.Inst with null record;
   procedure Finalize (Self : in out Class);
   geometriesChanged             : ClassVar_Signal;-- geometriesChanged()
   sectionClicked                : ClassVar_Signal;-- sectionClicked(int)
   sectionCountChanged           : ClassVar_Signal;-- sectionCountChanged(int,int)
   sectionDoubleClicked          : ClassVar_Signal;-- sectionDoubleClicked(int)
   sectionEntered                : ClassVar_Signal;-- sectionEntered(int)
   sectionHandleDoubleClicked    : ClassVar_Signal;-- sectionHandleDoubleClicked(int)
   sectionMoved                  : ClassVar_Signal;-- sectionMoved(int,int,int)
   sectionPressed                : ClassVar_Signal;-- sectionPressed(int)
   sectionResized                : ClassVar_Signal;-- sectionResized(int,int,int)
   sortIndicatorChanged          : ClassVar_Signal;-- sortIndicatorChanged(int,Qt::SortOrder)
   sortIndicatorClearableChanged : ClassVar_Signal;-- sortIndicatorClearableChanged(bool)
   function Create
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget)
      return Class;
   function cascadingSectionResizes (self : access Inst) return bool;
   function count (self : access Inst) return int;
   procedure currentChanged
     (self  : access Inst; current_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      old_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure dataChanged
     (self          : access Inst; topLeft_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      bottomRight_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; roles_P : Sequence_int);
   function defaultAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function defaultSectionSize (self : access Inst) return int;
   procedure doItemsLayout (self : access Inst);
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure headerDataChanged
     (self          : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class; logicalFirst_P : int;
      logicalLast_P : int);
   function hiddenSectionCount (self : access Inst) return int;
   procedure hideSection (self : access Inst; logicalIndex_P : int);
   function highlightSections (self : access Inst) return bool;
   function horizontalOffset (self : access Inst) return int;
   function indexAt
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionFrame.Inst'Class);
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionHeader.Inst'Class);
   procedure initStyleOptionForIndex
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionHeader.Inst'Class; logicalIndex_P : int);
   procedure initialize (self : access Inst);
   procedure initializeSections (self : access Inst);
   procedure initializeSections (self : access Inst; start_P : int; end_K_P : int);
   function isFirstSectionMovable (self : access Inst) return bool;
   function isIndexHidden
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function isSectionHidden (self : access Inst; logicalIndex_P : int) return bool;
   function isSortIndicatorClearable (self : access Inst) return bool;
   function isSortIndicatorShown (self : access Inst) return bool;
   function length (self : access Inst) return int;
   function logicalIndex (self : access Inst; visualIndex_P : int) return int;
   function logicalIndexAt (self : access Inst; pos_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   function logicalIndexAt (self : access Inst; position_P : int) return int;
   function logicalIndexAt (self : access Inst; x_P : int; y_P : int) return int;
   function maximumSectionSize (self : access Inst) return int;
   function minimumSectionSize (self : access Inst) return int;
   procedure mouseDoubleClickEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseMoveEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mousePressEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure mouseReleaseEvent (self : access Inst; e_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   function moveCursor
     (self    : access Inst; arg_1_P : access QtAda6.QtWidgets.QAbstractItemView.CursorAction.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.KeyboardModifier.Inst'Class) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure moveSection (self : access Inst; from_U_P : int; to_P : int);
   function offset (self : access Inst) return int;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure paintEvent (self : access Inst; e_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure paintSection
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; logicalIndex_P : int);
   procedure reset (self : access Inst);
   procedure resetDefaultSectionSize (self : access Inst);
   function resizeContentsPrecision (self : access Inst) return int;
   procedure resizeSection (self : access Inst; logicalIndex_P : int; size_P : int);
   procedure resizeSections (self : access Inst);
   procedure resizeSections (self : access Inst; mode_P : access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class);
   function restoreState (self : access Inst; state_P : Union_QtAda6_QtCore_QByteArray_bytes) return bool;
   procedure rowsInserted
     (self : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex; start_P : int;
      end_K_P : int);
   function saveState (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure scrollContentsBy (self : access Inst; dx_P : int; dy_P : int);
   procedure scrollTo
     (self   : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      hint_P : access QtAda6.QtWidgets.QAbstractItemView.ScrollHint.Inst'Class);
   function sectionPosition (self : access Inst; logicalIndex_P : int) return int;
   function sectionResizeMode
     (self : access Inst; logicalIndex_P : int) return access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class;
   function sectionSize (self : access Inst; logicalIndex_P : int) return int;
   function sectionSizeFromContents
     (self : access Inst; logicalIndex_P : int) return access QtAda6.QtCore.QSize.Inst'Class;
   function sectionSizeHint (self : access Inst; logicalIndex_P : int) return int;
   function sectionViewportPosition (self : access Inst; logicalIndex_P : int) return int;
   procedure sectionsAboutToBeRemoved
     (self           : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      logicalFirst_P : int; logicalLast_P : int);
   function sectionsClickable (self : access Inst) return bool;
   function sectionsHidden (self : access Inst) return bool;
   procedure sectionsInserted
     (self           : access Inst; parent_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex;
      logicalFirst_P : int; logicalLast_P : int);
   function sectionsMovable (self : access Inst) return bool;
   function sectionsMoved (self : access Inst) return bool;
   procedure setCascadingSectionResizes (self : access Inst; enable_P : bool);
   procedure setDefaultAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setDefaultSectionSize (self : access Inst; size_P : int);
   procedure setFirstSectionMovable (self : access Inst; movable_P : bool);
   procedure setHighlightSections (self : access Inst; highlight_P : bool);
   procedure setMaximumSectionSize (self : access Inst; size_P : int);
   procedure setMinimumSectionSize (self : access Inst; size_P : int);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setOffset (self : access Inst; offset_P : int);
   procedure setOffsetToLastSection (self : access Inst);
   procedure setOffsetToSectionPosition (self : access Inst; visualIndex_P : int);
   procedure setResizeContentsPrecision (self : access Inst; precision_P : int);
   procedure setSectionHidden (self : access Inst; logicalIndex_P : int; hide_P : bool);
   procedure setSectionResizeMode
     (self : access Inst; logicalIndex_P : int; mode_P : access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class);
   procedure setSectionResizeMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QHeaderView.ResizeMode.Inst'Class);
   procedure setSectionsClickable (self : access Inst; clickable_P : bool);
   procedure setSectionsMovable (self : access Inst; movable_P : bool);
   procedure setSelection
     (self    : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.QItemSelectionModel.SelectionFlag.Inst'Class);
   procedure setSortIndicator
     (self : access Inst; logicalIndex_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class);
   procedure setSortIndicatorClearable (self : access Inst; clearable_P : bool);
   procedure setSortIndicatorShown (self : access Inst; show_P : bool);
   procedure setStretchLastSection (self : access Inst; stretch_P : bool);
   procedure setVisible (self : access Inst; v_P : bool);
   procedure showSection (self : access Inst; logicalIndex_P : int);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sortIndicatorOrder (self : access Inst) return access QtAda6.QtCore.Qt.SortOrder.Inst'Class;
   function sortIndicatorSection (self : access Inst) return int;
   function stretchLastSection (self : access Inst) return bool;
   function stretchSectionCount (self : access Inst) return int;
   procedure swapSections (self : access Inst; first_P : int; second_P : int);
   procedure updateGeometries (self : access Inst);
   procedure updateSection (self : access Inst; logicalIndex_P : int);
   function verticalOffset (self : access Inst) return int;
   function viewportEvent (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function visualIndex (self : access Inst; logicalIndex_P : int) return int;
   function visualIndexAt (self : access Inst; position_P : int) return int;
   function visualRect
     (self : access Inst; index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function visualRegionForSelection
     (self : access Inst; selection_P : access QtAda6.QtCore.QItemSelection.Inst'Class)
      return access QtAda6.QtGui.QRegion.Inst'Class;
end QtAda6.QtWidgets.QHeaderView;
