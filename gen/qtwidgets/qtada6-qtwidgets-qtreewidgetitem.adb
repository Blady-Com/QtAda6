-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtreewidgetitem.adb
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
with QtAda6.QtWidgets.QTreeWidget;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.CheckState;
with QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy;
with QtAda6.QtCore.Qt.ItemFlag;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QIcon;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.Qt.SortOrder;
package body QtAda6.QtWidgets.QTreeWidgetItem is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (other_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class;
      after_P  : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; type_K_P : int := 0) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if after_P /= null then after_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; strings_P : SEQUENCE_str; type_K_P : int := 0)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      List  := List_New (strings_P'Length);
      for ind in strings_P'Range loop
         List_SetItem (List, ssize_t (ind - strings_P'First), Unicode_FromString (strings_P (ind)));
      end loop;
      Args := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; type_K_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (strings_P : SEQUENCE_str; type_K_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      List  := List_New (strings_P'Length);
      for ind in strings_P'Range loop
         List_SetItem (List, ssize_t (ind - strings_P'First), Unicode_FromString (strings_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (treeview_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class;
      after_P    : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class; type_K_P : int := 0) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if treeview_P /= null then treeview_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if after_P /= null then after_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (treeview_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class; strings_P : SEQUENCE_str; type_K_P : int := 0)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      List  := List_New (strings_P'Length);
      for ind in strings_P'Range loop
         List_SetItem (List, ssize_t (ind - strings_P'First), Unicode_FromString (strings_P (ind)));
      end loop;
      Args := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if treeview_P /= null then treeview_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, List);
      Tuple_SetItem (Args, 2, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (treeview_P : access QtAda6.QtWidgets.QTreeWidget.Inst'Class; type_K_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if treeview_P /= null then treeview_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (type_K_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTreeWidgetItem");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (type_K_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_lshift_U
     (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if out_K_P /= null then out_K_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if in_U_P /= null then in_U_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   procedure addChild (self : access Inst; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addChild;
   procedure addChildren (self : access Inst; children_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addChildren");
      List   := List_New (children_P'Length);
      for ind in children_P'Range loop
         List_SetItem
           (List, ssize_t (ind - children_P'First),
            (if children_P (ind) /= null then children_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
   end addChildren;
   function background (self : access Inst; column_P : int) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "background");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end background;
   function checkState (self : access Inst; column_P : int) return access QtAda6.QtCore.Qt.CheckState.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.CheckState.Class := new QtAda6.QtCore.Qt.CheckState.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "checkState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end checkState;
   function child_F (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "child");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end child_F;
   function childCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "childCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end childCount;
   function childIndicatorPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy.Class :=
        new QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "childIndicatorPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end childIndicatorPolicy_F;
   function clone (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clone");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clone;
   function columnCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnCount;
   function data (self : access Inst; column_P : int; role_P : int) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "data");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end data;
   procedure emitDataChanged (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "emitDataChanged");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end emitDataChanged;
   function flags (self : access Inst) return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.ItemFlag.Class := new QtAda6.QtCore.Qt.ItemFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   function font (self : access Inst; column_P : int) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "font");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function foreground (self : access Inst; column_P : int) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "foreground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end foreground;
   function icon (self : access Inst; column_P : int) return access QtAda6.QtGui.QIcon.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "icon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end icon;
   function indexOfChild (self : access Inst; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "indexOfChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end indexOfChild;
   procedure insertChild
     (self : access Inst; index_P : int; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertChild");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end insertChild;
   procedure insertChildren (self : access Inst; index_P : int; children_P : SEQUENCE_QtAda6_QtWidgets_QTreeWidgetItem)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertChildren");
      List   := List_New (children_P'Length);
      for ind in children_P'Range loop
         List_SetItem
           (List, ssize_t (ind - children_P'First),
            (if children_P (ind) /= null then children_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, List);
      Result := Object_CallObject (Method, Args, True);
   end insertChildren;
   function isDisabled (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDisabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDisabled;
   function isExpanded (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isExpanded");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isExpanded;
   function isFirstColumnSpanned (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isFirstColumnSpanned");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isFirstColumnSpanned;
   function isHidden (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isHidden");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isHidden;
   function isSelected (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSelected");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSelected;
   function parent (self : access Inst) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "parent");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end parent;
   procedure read (self : access Inst; in_U_P : access QtAda6.QtCore.QDataStream.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if in_U_P /= null then in_U_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end read;
   procedure removeChild (self : access Inst; child_P : access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if child_P /= null then child_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeChild;
   procedure setBackground
     (self    : access Inst; column_P : int;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setBackground;
   procedure setCheckState (self : access Inst; column_P : int; state_P : access QtAda6.QtCore.Qt.CheckState.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCheckState");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCheckState;
   procedure setChildIndicatorPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QTreeWidgetItem.ChildIndicatorPolicy.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setChildIndicatorPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setChildIndicatorPolicy;
   procedure setData (self : access Inst; column_P : int; role_P : int; value_P : Any) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (role_P));
      Tuple_SetItem (Args, 2, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setData;
   procedure setDisabled (self : access Inst; disabled_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (disabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setDisabled;
   procedure setExpanded (self : access Inst; expand_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExpanded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (expand_P));
      Result := Object_CallObject (Method, Args, True);
   end setExpanded;
   procedure setFirstColumnSpanned (self : access Inst; span_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFirstColumnSpanned");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (span_P));
      Result := Object_CallObject (Method, Args, True);
   end setFirstColumnSpanned;
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtCore.Qt.ItemFlag.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setFont (self : access Inst; column_P : int; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if font_P /= null then font_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setForeground
     (self    : access Inst; column_P : int;
      brush_P : UNION_QtAda6_QtGui_QBrushQtAda6_QtCore_Qt_BrushStyleQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColorQtAda6_QtGui_QGradientQtAda6_QtGui_QImageQtAda6_QtGui_QPixmap)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setForeground");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setForeground;
   procedure setHidden (self : access Inst; hide_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHidden");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (hide_P));
      Result := Object_CallObject (Method, Args, True);
   end setHidden;
   procedure setIcon (self : access Inst; column_P : int; icon_P : UNION_QtAda6_QtGui_QIconQtAda6_QtGui_QPixmap) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setIcon");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if icon_P /= null then icon_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setIcon;
   procedure setSelected (self : access Inst; select_K_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (select_K_P));
      Result := Object_CallObject (Method, Args, True);
   end setSelected;
   procedure setSizeHint (self : access Inst; column_P : int; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSizeHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSizeHint;
   procedure setStatusTip (self : access Inst; column_P : int; statusTip_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStatusTip");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (statusTip_P));
      Result := Object_CallObject (Method, Args, True);
   end setStatusTip;
   procedure setText (self : access Inst; column_P : int; text_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setText;
   procedure setTextAlignment
     (self : access Inst; column_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTextAlignment;
   procedure setTextAlignment (self : access Inst; column_P : int; alignment_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (alignment_P));
      Result := Object_CallObject (Method, Args, True);
   end setTextAlignment;
   procedure setToolTip (self : access Inst; column_P : int; toolTip_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setToolTip");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (toolTip_P));
      Result := Object_CallObject (Method, Args, True);
   end setToolTip;
   procedure setWhatsThis (self : access Inst; column_P : int; whatsThis_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWhatsThis");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (whatsThis_P));
      Result := Object_CallObject (Method, Args, True);
   end setWhatsThis;
   function sizeHint (self : access Inst; column_P : int) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   procedure sortChildren (self : access Inst; column_P : int; order_P : access QtAda6.QtCore.Qt.SortOrder.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sortChildren");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if order_P /= null then order_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end sortChildren;
   function statusTip (self : access Inst; column_P : int) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "statusTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end statusTip;
   function takeChild (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QTreeWidgetItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QTreeWidgetItem.Class := new QtAda6.QtWidgets.QTreeWidgetItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeChild;
   function takeChildren (self : access Inst) return LIST_QtAda6_QtWidgets_QTreeWidgetItem is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeChildren");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end takeChildren;
   function text (self : access Inst; column_P : int) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textAlignment (self : access Inst; column_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end textAlignment;
   function toolTip (self : access Inst; column_P : int) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toolTip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toolTip;
   function treeWidget (self : access Inst) return access QtAda6.QtWidgets.QTreeWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QTreeWidget.Class := new QtAda6.QtWidgets.QTreeWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "treeWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end treeWidget;
   function type_K (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "type");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end type_K;
   function whatsThis (self : access Inst; column_P : int) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "whatsThis");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end whatsThis;
   procedure write (self : access Inst; out_K_P : access QtAda6.QtCore.QDataStream.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if out_K_P /= null then out_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end write;
end QtAda6.QtWidgets.QTreeWidgetItem;
