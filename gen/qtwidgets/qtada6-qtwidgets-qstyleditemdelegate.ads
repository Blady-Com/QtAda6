-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstyleditemdelegate.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QLocale.Language;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtWidgets.QItemEditorFactory;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QAbstractItemDelegate;
package QtAda6.QtWidgets.QStyledItemDelegate is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex is access Any;
   type Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemDelegate.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function createEditor
     (self     : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function displayText
     (self : access Inst; value_P : Any; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language)
      return str;
   function editorEvent
     (self     : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure initStyleOption
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   function itemEditorFactory (self : access Inst) return access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   procedure setItemEditorFactory
     (self : access Inst; factory_P : access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class);
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class;
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : Union_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex);
end QtAda6.QtWidgets.QStyledItemDelegate;
