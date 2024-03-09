-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qabstractitemdelegate.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QStyleOptionViewItem;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtGui.QHelpEvent;
with QtAda6.QtWidgets.QAbstractItemView;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QAbstractItemDelegate is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function closeEditor (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "closeEditor"));
   end closeEditor;
   function commitData (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "commitData"));
   end commitData;
   function sizeHintChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "sizeHintChanged"));
   end sizeHintChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QAbstractItemDelegate");
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
      index_P  : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   procedure destroyEditor
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "destroyEditor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end destroyEditor;
   function editorEvent
     (self     : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class;
      model_P  : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   function helpEvent
     (self     : access Inst; event_P : access QtAda6.QtGui.QHelpEvent.Inst'Class;
      view_P   : access QtAda6.QtWidgets.QAbstractItemView.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "helpEvent");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if view_P /= null then view_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end helpEvent;
   procedure paint
     (self     : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paint");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if painter_P /= null then painter_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end paint;
   function paintingRoles (self : access Inst) return LIST_int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintingRoles");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end paintingRoles;
   procedure setEditorData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEditorData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEditorData;
   procedure setModelData
     (self    : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
      index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModelData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setModelData;
   function sizeHint
     (self    : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
      return access QtAda6.QtCore.QSize.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
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
   procedure updateEditorGeometry
     (self     : access Inst; editor_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      option_P : access QtAda6.QtWidgets.QStyleOptionViewItem.Inst'Class;
      index_P  : UNION_QtAda6_QtCore_QModelIndex_QtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateEditorGeometry");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if editor_P /= null then editor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end updateEditorGeometry;
end QtAda6.QtWidgets.QAbstractItemDelegate;
