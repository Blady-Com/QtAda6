-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qformlayout.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QLayoutItem;
with QtAda6.QtWidgets.QLayout;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtWidgets.QFormLayout.ItemRole;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QFormLayout.RowWrapPolicy;
with QtAda6.QtCore.QRect;
with QtAda6.QtWidgets.QFormLayout.TakeRowResult;
package body QtAda6.QtWidgets.QFormLayout is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QFormLayout");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addRow
     (self    : access Inst; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if label_P /= null then label_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRow;
   procedure addRow
     (self    : access Inst; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if label_P /= null then label_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRow;
   procedure addRow (self : access Inst; labelText_P : str; field_P : access QtAda6.QtWidgets.QLayout.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (labelText_P));
      Tuple_SetItem (Args, 1, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRow;
   procedure addRow (self : access Inst; labelText_P : str; field_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (labelText_P));
      Tuple_SetItem (Args, 1, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRow;
   procedure addRow (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRow;
   procedure addRow (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addRow;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "expandingDirections");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end expandingDirections;
   function fieldGrowthPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy.Class :=
        new QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fieldGrowthPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fieldGrowthPolicy_F;
   function formAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "formAlignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end formAlignment;
   function getItemPosition (self : access Inst; index_P : int) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getItemPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end getItemPosition;
   function getLayoutPosition
     (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) return access Object'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getLayoutPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end getLayoutPosition;
   function getWidgetPosition
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return access Object'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getWidgetPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end getWidgetPosition;
   function hasHeightForWidth (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasHeightForWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasHeightForWidth;
   function heightForWidth (self : access Inst; width_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "heightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end heightForWidth;
   function horizontalSpacing (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalSpacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end horizontalSpacing;
   procedure insertRow
     (self    : access Inst; row_P : int; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if label_P /= null then label_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure insertRow
     (self    : access Inst; row_P : int; label_P : access QtAda6.QtWidgets.QWidget.Inst'Class;
      field_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if label_P /= null then label_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure insertRow
     (self : access Inst; row_P : int; labelText_P : str; field_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (labelText_P));
      Tuple_SetItem (Args, 2, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure insertRow
     (self : access Inst; row_P : int; labelText_P : str; field_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (labelText_P));
      Tuple_SetItem (Args, 2, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure insertRow (self : access Inst; row_P : int; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure insertRow (self : access Inst; row_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertRow");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertRow;
   procedure invalidate (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidate;
   function isRowVisible (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRowVisible;
   function isRowVisible (self : access Inst; row_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRowVisible;
   function isRowVisible (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isRowVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isRowVisible;
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayoutItem.Class := new QtAda6.QtWidgets.QLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt
     (self : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class)
      return access QtAda6.QtWidgets.QLayoutItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayoutItem.Class := new QtAda6.QtWidgets.QLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if role_P /= null then role_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function labelAlignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "labelAlignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end labelAlignment;
   function labelForField
     (self : access Inst; field_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "labelForField");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end labelForField;
   function labelForField
     (self : access Inst; field_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "labelForField");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if field_P /= null then field_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end labelForField;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSize;
   procedure removeRow (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeRow;
   procedure removeRow (self : access Inst; row_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeRow;
   procedure removeRow (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeRow;
   function rowCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   function rowWrapPolicy_F (self : access Inst) return access QtAda6.QtWidgets.QFormLayout.RowWrapPolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QFormLayout.RowWrapPolicy.Class :=
        new QtAda6.QtWidgets.QFormLayout.RowWrapPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rowWrapPolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rowWrapPolicy_F;
   procedure setFieldGrowthPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QFormLayout.FieldGrowthPolicy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFieldGrowthPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFieldGrowthPolicy;
   procedure setFormAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFormAlignment;
   procedure setGeometry (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   procedure setHorizontalSpacing (self : access Inst; spacing_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHorizontalSpacing;
   procedure setItem
     (self   : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class;
      item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if role_P /= null then role_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItem;
   procedure setLabelAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLabelAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLabelAlignment;
   procedure setLayout
     (self     : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class;
      layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayout");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if role_P /= null then role_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLayout;
   procedure setRowVisible (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class; on_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowVisible");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowVisible;
   procedure setRowVisible (self : access Inst; row_P : int; on_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowVisible");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowVisible;
   procedure setRowVisible (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; on_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowVisible");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, To_Python (on_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowVisible;
   procedure setRowWrapPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QFormLayout.RowWrapPolicy.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowWrapPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowWrapPolicy;
   procedure setSpacing (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpacing;
   procedure setVerticalSpacing (self : access Inst; spacing_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVerticalSpacing;
   procedure setWidget
     (self     : access Inst; row_P : int; role_P : access QtAda6.QtWidgets.QFormLayout.ItemRole.Inst'Class;
      widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidget");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if role_P /= null then role_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWidget;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function spacing (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "spacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end spacing;
   function takeAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayoutItem.Class := new QtAda6.QtWidgets.QLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAt;
   function takeRow
     (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class)
      return access QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QFormLayout.TakeRowResult.Class :=
        new QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeRow;
   function takeRow
     (self : access Inst; row_P : int) return access QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QFormLayout.TakeRowResult.Class :=
        new QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeRow;
   function takeRow
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtWidgets.QFormLayout.TakeRowResult.Class :=
        new QtAda6.QtWidgets.QFormLayout.TakeRowResult.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeRow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeRow;
   function verticalSpacing (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalSpacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalSpacing;
end QtAda6.QtWidgets.QFormLayout;
