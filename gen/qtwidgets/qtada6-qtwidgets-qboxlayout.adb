-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qboxlayout.adb
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
with QtAda6.QtWidgets.QBoxLayout.Direction;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QLayoutItem;
with QtAda6.QtWidgets.QLayout;
with QtAda6.QtWidgets.QSpacerItem;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QRect;
package body QtAda6.QtWidgets.QBoxLayout is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (arg_1_P  : access QtAda6.QtWidgets.QBoxLayout.Direction.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QBoxLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addItem (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addLayout (self : access Inst; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class; stretch_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addLayout");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addLayout;
   procedure addSpacerItem (self : access Inst; spacerItem_P : access QtAda6.QtWidgets.QSpacerItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSpacerItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if spacerItem_P /= null then spacerItem_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addSpacerItem;
   procedure addSpacing (self : access Inst; size_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addSpacing;
   procedure addStretch (self : access Inst; stretch_P : int := 0) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addStretch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addStretch;
   procedure addStrut (self : access Inst; arg_1_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addStrut");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addStrut;
   procedure addWidget
     (self        : access Inst; arg_1_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addWidget;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   function direction_F (self : access Inst) return access QtAda6.QtWidgets.QBoxLayout.Direction.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QBoxLayout.Direction.Class := new QtAda6.QtWidgets.QBoxLayout.Direction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "direction");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end direction_F;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "expandingDirections");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end expandingDirections;
   function hasHeightForWidth (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasHeightForWidth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasHeightForWidth;
   function heightForWidth (self : access Inst; arg_1_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "heightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end heightForWidth;
   procedure insertItem (self : access Inst; index_P : int; arg_2_P : access QtAda6.QtWidgets.QLayoutItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertItem;
   procedure insertLayout
     (self : access Inst; index_P : int; layout_P : access QtAda6.QtWidgets.QLayout.Inst'Class; stretch_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertLayout");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertLayout;
   procedure insertSpacerItem
     (self : access Inst; index_P : int; spacerItem_P : access QtAda6.QtWidgets.QSpacerItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertSpacerItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if spacerItem_P /= null then spacerItem_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertSpacerItem;
   procedure insertSpacing (self : access Inst; index_P : int; size_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertSpacing");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (size_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertSpacing;
   procedure insertStretch (self : access Inst; index_P : int; stretch_P : int := 0) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertStretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertStretch;
   procedure insertWidget
     (self : access Inst; index_P : int; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int := 0;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertWidget");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      if alignment_P /= null then
         Dict_SetItemString (Dict, "alignment", alignment_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end insertWidget;
   procedure invalidate (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidate;
   function itemAt (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayoutItem.Class := new QtAda6.QtWidgets.QLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumSize;
   function minimumHeightForWidth (self : access Inst; arg_1_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minimumHeightForWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minimumHeightForWidth;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSize;
   procedure setDirection (self : access Inst; arg_1_P : access QtAda6.QtWidgets.QBoxLayout.Direction.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDirection;
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   procedure setSpacing (self : access Inst; spacing_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpacing;
   procedure setStretch (self : access Inst; index_P : int; stretch_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStretch");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStretch;
   function setStretchFactor
     (self : access Inst; l_P : access QtAda6.QtWidgets.QLayout.Inst'Class; stretch_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStretchFactor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if l_P /= null then l_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setStretchFactor;
   function setStretchFactor
     (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class; stretch_P : int) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStretchFactor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end setStretchFactor;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function spacing (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "spacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end spacing;
   function stretch (self : access Inst; index_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stretch");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end stretch;
   function takeAt (self : access Inst; arg_1_P : int) return access QtAda6.QtWidgets.QLayoutItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QLayoutItem.Class := new QtAda6.QtWidgets.QLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAt;
end QtAda6.QtWidgets.QBoxLayout;
