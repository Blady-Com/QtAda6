-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicslinearlayout.adb
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
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtWidgets.QGraphicsLayoutItem;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.Qt.SizeHint;
with QtAda6.QtCore.QSizeF;
package body QtAda6.QtWidgets.QGraphicsLinearLayout is
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
     (orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class;
      parent_P      : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsLinearLayout");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsLinearLayout");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure addItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addItem;
   procedure addStretch (self : access Inst; stretch_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addStretch");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if stretch_P /= 0 then
         Dict_SetItemString (Dict, "stretch", Long_FromLong (stretch_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addStretch;
   function alignment
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class)
      return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   procedure dump (self : access Inst; indent_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dump");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if indent_P /= 0 then
         Dict_SetItemString (Dict, "indent", Long_FromLong (indent_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end dump;
   procedure insertItem
     (self : access Inst; index_P : int; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insertItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insertItem;
   procedure insertStretch (self : access Inst; index_P : int; stretch_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
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
   procedure invalidate (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invalidate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end invalidate;
   function itemAt (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsLayoutItem.Class := new QtAda6.QtWidgets.QGraphicsLayoutItem.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemAt;
   function itemSpacing (self : access Inst; index_P : int) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "itemSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end itemSpacing;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   procedure removeAt (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAt;
   procedure removeItem (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeItem");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeItem;
   procedure setAlignment
     (self        : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAlignment;
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   procedure setItemSpacing (self : access Inst; index_P : int; spacing_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemSpacing");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setItemSpacing;
   procedure setOrientation (self : access Inst; orientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if orientation_P /= null then orientation_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOrientation;
   procedure setSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpacing;
   procedure setStretchFactor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class; stretch_P : int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStretchFactor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (stretch_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStretchFactor;
   function sizeHint
     (self         : access Inst; which_P : access QtAda6.QtCore.Qt.SizeHint.Inst'Class;
      constraint_P : UNION_QtAda6_QtCore_QSizeF_QtAda6_QtCore_QSize := null)
      return access QtAda6.QtCore.QSizeF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if which_P /= null then which_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if constraint_P /= null then
         Dict_SetItemString (Dict, "constraint", constraint_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function spacing (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "spacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end spacing;
   function stretchFactor
     (self : access Inst; item_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stretchFactor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if item_P /= null then item_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end stretchFactor;
end QtAda6.QtWidgets.QGraphicsLinearLayout;
