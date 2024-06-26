-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qitemdelegate.ads
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
limited with QtAda6.QtWidgets.QStyleOptionViewItem;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.Qt.CheckState;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtWidgets.QItemEditorFactory;
limited with QtAda6.QtGui.QPalette;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QFont;
with QtAda6.QtWidgets.QAbstractItemDelegate;
package QtAda6.QtWidgets.QItemDelegate is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractItemDelegate.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
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
   function decoration
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class; variant_P : Any)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function doCheck
     (self       : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      bounding_P : access QtAda6.QtCore.QRect.Inst'Class; variant_P : Any) return access QtAda6.QtCore.QRect.Inst'Class;
   procedure drawBackground
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure drawBackground
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure drawCheck
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; state_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class);
   procedure drawDecoration
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure drawDecoration
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure drawDecoration
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str);
   procedure drawDisplay
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; text_P : str);
   procedure drawFocus
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class);
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
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function hasClipping (self : access Inst) return bool;
   function itemEditorFactory (self : access Inst) return access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   function rect
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int) return access QtAda6.QtCore.QRect.Inst'Class;
   function rect
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QPixmap.Inst'Class; palette_P : access QtAda6.QtGui.QPalette.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QPixmap.Inst'Class; palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QPixmap.Inst'Class; palette_P : access QtAda6.QtGui.QColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QImage.Inst'Class; palette_P : access QtAda6.QtGui.QPalette.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QImage.Inst'Class; palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QImage.Inst'Class; palette_P : access QtAda6.QtGui.QColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P : str; palette_P : access QtAda6.QtGui.QPalette.Inst'Class; enabled_P : bool)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P : str; palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; enabled_P : bool)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function selectedPixmap
     (pixmap_P : str; palette_P : access QtAda6.QtGui.QColor.Inst'Class; enabled_P : bool)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure setClipping (self : access Inst; clip_P : bool);
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setItemEditorFactory
     (self : access Inst; factory_P : access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class);
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   function setOptions
     (self     : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
      return access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
   function setOptions
     (self     : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
      return access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class;
   function textRectangle
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; font_P : access QtAda6.QtGui.QFont.Inst'Class; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function textRectangle
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; font_P : str; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   function textRectangle
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; font_P : SEQUENCE_str; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class;
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
end QtAda6.QtWidgets.QItemDelegate;
