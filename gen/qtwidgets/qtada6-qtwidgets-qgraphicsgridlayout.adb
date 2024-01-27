-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsgridlayout.adb
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
with QtAda6.QtWidgets.QGraphicsLayout;
with QtAda6.QtWidgets.QGraphicsLayoutItem;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.Qt.SizeHint;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtCore.QSize;
package body QtAda6.QtWidgets.QGraphicsGridLayout is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsGridLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class; row_P : int; column_P : int;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Tuple_SetItem (Args, 3, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addItem;
   procedure addItem
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class; row_P : int; column_P : int;
      rowSpan_P : int; columnSpan_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Tuple_SetItem (Args, 3, Long_FromLong (rowSpan_P));
      Tuple_SetItem (Args, 4, Long_FromLong (columnSpan_P));
      Tuple_SetItem (Args, 5, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addItem;
   function alignment
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class)
      return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function columnAlignment (self : access Inst; column_P : int) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end columnAlignment;
   function columnCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnCount;
   function columnMaximumWidth (self : access Inst; column_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnMaximumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end columnMaximumWidth;
   function columnMinimumWidth (self : access Inst; column_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnMinimumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end columnMinimumWidth;
   function columnPreferredWidth (self : access Inst; column_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnPreferredWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end columnPreferredWidth;
   function columnSpacing (self : access Inst; column_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end columnSpacing;
   function columnStretchFactor (self : access Inst; column_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnStretchFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end columnStretchFactor;
   function count (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end count;
   function horizontalSpacing (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalSpacing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end horizontalSpacing;
   procedure invalidate (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end invalidate;
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsLayoutItem.Class := new QtAda6.QtWidgets.QGraphicsLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemAt
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsLayoutItem.Class := new QtAda6.QtWidgets.QGraphicsLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   procedure removeAt (self : access Inst; index_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
   end removeAt;
   procedure removeItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeItem;
   function rowAlignment (self : access Inst; row_P : int) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rowAlignment;
   function rowCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end rowCount;
   function rowMaximumHeight (self : access Inst; row_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowMaximumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rowMaximumHeight;
   function rowMinimumHeight (self : access Inst; row_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowMinimumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rowMinimumHeight;
   function rowPreferredHeight (self : access Inst; row_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowPreferredHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rowPreferredHeight;
   function rowSpacing (self : access Inst; row_P : int) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end rowSpacing;
   function rowStretchFactor (self : access Inst; row_P : int) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowStretchFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end rowStretchFactor;
   procedure setAlignment
     (self        : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setAlignment;
   procedure setColumnAlignment
     (self : access Inst; column_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setColumnAlignment;
   procedure setColumnFixedWidth (self : access Inst; column_P : int; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnFixedWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnFixedWidth;
   procedure setColumnMaximumWidth (self : access Inst; column_P : int; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnMaximumWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnMaximumWidth;
   procedure setColumnMinimumWidth (self : access Inst; column_P : int; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnMinimumWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnMinimumWidth;
   procedure setColumnPreferredWidth (self : access Inst; column_P : int; width_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnPreferredWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (width_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnPreferredWidth;
   procedure setColumnSpacing (self : access Inst; column_P : int; spacing_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnSpacing");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnSpacing;
   procedure setColumnStretchFactor (self : access Inst; column_P : int; stretch_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnStretchFactor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Result := Object_CallObject (Method, Args, True);
   end setColumnStretchFactor;
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectFQtAda6_QtCore_QRect) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setGeometry;
   procedure setHorizontalSpacing (self : access Inst; spacing_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setHorizontalSpacing;
   procedure setRowAlignment
     (self : access Inst; row_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRowAlignment;
   procedure setRowFixedHeight (self : access Inst; row_P : int; height_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowFixedHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (height_P));
      Result := Object_CallObject (Method, Args, True);
   end setRowFixedHeight;
   procedure setRowMaximumHeight (self : access Inst; row_P : int; height_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowMaximumHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (height_P));
      Result := Object_CallObject (Method, Args, True);
   end setRowMaximumHeight;
   procedure setRowMinimumHeight (self : access Inst; row_P : int; height_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowMinimumHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (height_P));
      Result := Object_CallObject (Method, Args, True);
   end setRowMinimumHeight;
   procedure setRowPreferredHeight (self : access Inst; row_P : int; height_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowPreferredHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (height_P));
      Result := Object_CallObject (Method, Args, True);
   end setRowPreferredHeight;
   procedure setRowSpacing (self : access Inst; row_P : int; spacing_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowSpacing");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setRowSpacing;
   procedure setRowStretchFactor (self : access Inst; row_P : int; stretch_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowStretchFactor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Result := Object_CallObject (Method, Args, True);
   end setRowStretchFactor;
   procedure setSpacing (self : access Inst; spacing_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setSpacing;
   procedure setVerticalSpacing (self : access Inst; spacing_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Result := Object_CallObject (Method, Args, True);
   end setVerticalSpacing;
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeFQtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if constraint_P /= null then constraint_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function verticalSpacing (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalSpacing");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end verticalSpacing;
end QtAda6.QtWidgets.QGraphicsGridLayout;
