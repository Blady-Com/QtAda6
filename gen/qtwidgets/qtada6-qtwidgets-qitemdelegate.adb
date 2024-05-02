-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qitemdelegate.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QStyleOptionViewItem;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.Qt.CheckState;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtWidgets.QItemEditorFactory;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QFont;
package body QtAda6.QtWidgets.QItemDelegate is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function createEditor
     (self     : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createEditor");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createEditor;
   function createEditor
     (self     : access Inst; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createEditor");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createEditor;
   function decoration
     (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class; variant_P : Any)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "decoration");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if variant_P /= null then variant_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end decoration;
   function doCheck
     (self       : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      bounding_P : access QtAda6.QtCore.QRect.Inst'Class; variant_P : Any) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doCheck");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if bounding_P /= null then bounding_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if variant_P /= null then variant_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end doCheck;
   procedure drawBackground
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawBackground");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawBackground;
   procedure drawBackground
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawBackground");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawBackground;
   procedure drawCheck
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; state_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawCheck");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawCheck;
   procedure drawDecoration
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawDecoration");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawDecoration;
   procedure drawDecoration
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawDecoration");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawDecoration;
   procedure drawDecoration
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawDecoration");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (pixmap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawDecoration;
   procedure drawDisplay
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class; text_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawDisplay");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawDisplay;
   procedure drawFocus
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      rect_P   : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawFocus");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawFocus;
   function editorEvent
     (self     : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "editorEvent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end editorEvent;
   function editorEvent
     (self     : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "editorEvent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end editorEvent;
   function eventFilter
     (self    : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end eventFilter;
   function hasClipping (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasClipping");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasClipping;
   function itemEditorFactory (self : access Inst) return access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QItemEditorFactory.Class := new QtAda6.QtWidgets.QItemEditorFactory.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemEditorFactory");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemEditorFactory;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paint;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paint;
   function rect
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class; role_P : int) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (role_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function rect
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class; role_P : int)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (role_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QPixmap.Inst'Class; palette_P : access QtAda6.QtGui.QPalette.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QPixmap.Inst'Class; palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QPixmap.Inst'Class; palette_P : access QtAda6.QtGui.QColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QImage.Inst'Class; palette_P : access QtAda6.QtGui.QPalette.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QImage.Inst'Class; palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P  : access QtAda6.QtGui.QImage.Inst'Class; palette_P : access QtAda6.QtGui.QColor.Inst'Class;
      enabled_P : bool) return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P : str; palette_P : access QtAda6.QtGui.QPalette.Inst'Class; enabled_P : bool)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P : str; palette_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; enabled_P : bool)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   function selectedPixmap
     (pixmap_P : str; palette_P : access QtAda6.QtGui.QColor.Inst'Class; enabled_P : bool)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemDelegate");
      Method := Object_GetAttrString (Class, "selectedPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 1, (if palette_P /= null then palette_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, To_Python (enabled_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedPixmap;
   procedure setClipping (self : access Inst; clip_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (clip_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipping;
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEditorData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEditorData;
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEditorData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEditorData;
   procedure setItemEditorFactory
     (self : access Inst; factory_P : access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemEditorFactory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if factory_P /= null then factory_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemEditorFactory;
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModelData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModelData;
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModelData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModelData;
   function setOptions
     (self     : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
      return access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyleOptionViewItem.Class := new QtAda6.QtWidgets.QStyleOptionViewItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setOptions;
   function setOptions
     (self     : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class)
      return access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyleOptionViewItem.Class := new QtAda6.QtWidgets.QStyleOptionViewItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end setOptions;
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QModelIndex.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class) return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function textRectangle
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; font_P : access QtAda6.QtGui.QFont.Inst'Class; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textRectangle");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textRectangle;
   function textRectangle
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; font_P : str; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textRectangle");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (font_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textRectangle;
   function textRectangle
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; font_P : SEQUENCE_str; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textRectangle");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      List := List_New (font_P'Length);
      for ind in font_P'Range loop
         List_SetItem (List, ssize_t (ind - font_P'First), Unicode_FromString (font_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textRectangle;
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateEditorGeometry");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateEditorGeometry;
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateEditorGeometry");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateEditorGeometry;
end QtAda6.QtWidgets.QItemDelegate;
