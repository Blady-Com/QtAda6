-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgridlayout.adb
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
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtWidgets.QLayout;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.Qt.Corner;
package body QtAda6.QtWidgets.QGridLayout is
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
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGridLayout");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addItem (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addItem
     (self        : access Inst; item_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class; row_P : int; column_P : int;
      rowSpan_P   : int                                              := 0; columnSpan_P : int := 0;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Dict := Dict_New;
      if rowSpan_P /= 0 then
         Dict_SetItemString (Dict, "rowSpan", Long_FromLong (rowSpan_P));
      end if;
      if columnSpan_P /= 0 then
         Dict_SetItemString (Dict, "columnSpan", Long_FromLong (columnSpan_P));
      end if;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addLayout
     (self        : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.Inst'Class; row_P : int; column_P : int;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addLayout");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Dict := Dict_New;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addLayout;
   procedure addLayout
     (self      : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayout.Inst'Class; row_P : int; column_P : int;
      rowSpan_P : int; columnSpan_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addLayout");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Tuple_SetItem (Args, 3, Long_FromLong (rowSpan_P));
      Tuple_SetItem (Args, 4, Long_FromLong (columnSpan_P));
      Dict := Dict_New;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addLayout;
   procedure addWidget
     (self        : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; row_P : int; column_P : int;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addWidget");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Dict := Dict_New;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addWidget;
   procedure addWidget
     (self      : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; row_P : int; column_P : int;
      rowSpan_P : int; columnSpan_P : int; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addWidget");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (row_P));
      Tuple_SetItem (Args, 2, Long_FromLong (column_P));
      Tuple_SetItem (Args, 3, Long_FromLong (rowSpan_P));
      Tuple_SetItem (Args, 4, Long_FromLong (columnSpan_P));
      Dict := Dict_New;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addWidget;
   procedure addWidget (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addWidget;
   function cellRect (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cellRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cellRect;
   function columnCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnCount;
   function columnMinimumWidth (self : access Inst; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnMinimumWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnMinimumWidth;
   function columnStretch (self : access Inst; column_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columnStretch;
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
   function getItemPosition (self : access Inst; idx_P : int) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getItemPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (idx_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end getItemPosition;
   function hasHeightForWidth (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasHeightForWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasHeightForWidth;
   function heightForWidth (self : access Inst; arg_1_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "heightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
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
   procedure invalidate (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidate;
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
   function itemAtPosition
     (self : access Inst; row_P : int; column_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayoutItem.Class := new QtAda6.QtWidgets.QLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAtPosition");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (column_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAtPosition;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumSize;
   function minimumHeightForWidth (self : access Inst; arg_1_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumHeightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minimumHeightForWidth;
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
   function originCorner (self : access Inst) return access QtAda6.QtCore.Qt.Corner.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Corner.Class := new QtAda6.QtCore.Qt.Corner.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "originCorner");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end originCorner;
   function rowCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowCount;
   function rowMinimumHeight (self : access Inst; row_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowMinimumHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowMinimumHeight;
   function rowStretch (self : access Inst; row_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rowStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end rowStretch;
   procedure setColumnMinimumWidth (self : access Inst; column_P : int; minSize_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnMinimumWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (minSize_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnMinimumWidth;
   procedure setColumnStretch (self : access Inst; column_P : int; stretch_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnStretch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (column_P));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnStretch;
   procedure setDefaultPositioning
     (self : access Inst; n_P : int; orient_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDefaultPositioning");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, (if orient_P /= null then orient_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDefaultPositioning;
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
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
   procedure setOriginCorner (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.Corner.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOriginCorner");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOriginCorner;
   procedure setRowMinimumHeight (self : access Inst; row_P : int; minSize_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowMinimumHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (minSize_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowMinimumHeight;
   procedure setRowStretch (self : access Inst; row_P : int; stretch_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRowStretch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (row_P));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setRowStretch;
   procedure setSpacing (self : access Inst; spacing_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (spacing_P));
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
   function verticalSpacing (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalSpacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end verticalSpacing;
end QtAda6.QtWidgets.QGridLayout;
