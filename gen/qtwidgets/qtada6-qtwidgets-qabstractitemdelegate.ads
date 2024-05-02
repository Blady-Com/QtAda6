-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qabstractitemdelegate.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtGui.QHelpEvent;
limited with QtAda6.QtWidgets.QAbstractItemView;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QAbstractItemDelegate is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type LIST_int is array (Positive range <>) of int;
   procedure Finalize (Self : in out Class);
   function closeEditor
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'Class;-- closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)
   function commitData (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- commitData(QWidget*)
   function sizeHintChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- sizeHintChanged(QModelIndex)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function createEditor
     (self     : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function createEditor
     (self     : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   procedure destroyEditor
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure destroyEditor
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   function editorEvent
     (self     : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function editorEvent
     (self     : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   function helpEvent
     (self     : access Inst; event_P : access QtAda6.QtGui.QHelpEvent.Inst'Class;
      view_P   : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool;
   function helpEvent
     (self     : access Inst; event_P : access QtAda6.QtGui.QHelpEvent.Inst'Class;
      view_P   : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   function paintingRoles (self : access Inst) return LIST_int;
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
end QtAda6.QtWidgets.QAbstractItemDelegate;
