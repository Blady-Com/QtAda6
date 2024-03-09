-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgraphicsanchorlayout.adb
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
with QtAda6.QtWidgets.QGraphicsLayoutItem;
with QtAda6.QtCore.Qt.AnchorPoint;
with QtAda6.QtWidgets.QGraphicsAnchor;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.Qt.Corner;
with QtAda6.QtCore.Qt.SizeHint;
with QtAda6.QtCore.QSizeF;
package body QtAda6.QtWidgets.QGraphicsAnchorLayout is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGraphicsAnchorLayout");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function addAnchor
     (self         : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      firstEdge_P  : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class;
      secondItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondEdge_P : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsAnchor.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsAnchor.Class := new QtAda6.QtWidgets.QGraphicsAnchor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAnchor");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if firstItem_P /= null then firstItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if firstEdge_P /= null then firstEdge_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if secondItem_P /= null then secondItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if secondEdge_P /= null then secondEdge_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end addAnchor;
   procedure addAnchors
     (self           : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondItem_P   : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      orientations_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addAnchors");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if firstItem_P /= null then firstItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if secondItem_P /= null then secondItem_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if orientations_P /= null then
         Dict_SetItemString (Dict, "orientations", orientations_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end addAnchors;
   procedure addCornerAnchors
     (self           : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      firstCorner_P  : access QtAda6.QtCore.Qt.Corner.Inst'Class;
      secondItem_P   : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondCorner_P : access QtAda6.QtCore.Qt.Corner.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addCornerAnchors");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if firstItem_P /= null then firstItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if firstCorner_P /= null then firstCorner_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if secondItem_P /= null then secondItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if secondCorner_P /= null then secondCorner_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end addCornerAnchors;
   function anchor
     (self         : access Inst; firstItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      firstEdge_P  : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class;
      secondItem_P : access QtAda6.QtWidgets.QGraphicsLayoutItem.Inst'Class;
      secondEdge_P : access QtAda6.QtCore.Qt.AnchorPoint.Inst'Class)
      return access QtAda6.QtWidgets.QGraphicsAnchor.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QGraphicsAnchor.Class := new QtAda6.QtWidgets.QGraphicsAnchor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "anchor");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if firstItem_P /= null then firstItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if firstEdge_P /= null then firstEdge_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if secondItem_P /= null then secondItem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if secondEdge_P /= null then secondEdge_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end anchor;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   function horizontalSpacing (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "horizontalSpacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end horizontalSpacing;
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
   procedure removeAt (self : access Inst; index_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAt;
   procedure setGeometry (self : access Inst; rect_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   procedure setHorizontalSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHorizontalSpacing;
   procedure setSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpacing;
   procedure setVerticalSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setVerticalSpacing;
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
   function verticalSpacing (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "verticalSpacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end verticalSpacing;
end QtAda6.QtWidgets.QGraphicsAnchorLayout;
