-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpolygonf.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtCore.QRectF;
with QtAda6.QtCore.Qt.FillRule;
with QtAda6.QtGui.QPolygon;
package body QtAda6.QtGui.QPolygonF is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QPolygonF_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QPolygonF_P /= null then QPolygonF_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (a_P : UNION_QtAda6_QtGui_QPolygon_SEQUENCE_QtAda6_QtCore_QRect) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if a_P /= null then a_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (r_P : UNION_QtAda6_QtCore_QRectF_QtAda6_QtCore_QRect) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (v_P : SEQUENCE_QtAda6_QtCore_QPointF) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      List  := List_New (v_P'Length);
      for ind in v_P'Range loop
         List_SetItem
           (List, ssize_t (ind - v_P'First), (if v_P (ind) /= null then v_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_add_U (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QPointF) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      List   := List_New (l_P'Length);
      for ind in l_P'Range loop
         List_SetItem
           (List, ssize_t (ind - l_P'First), (if l_P (ind) /= null then l_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end U_add_U;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_mul_U
     (self : access Inst; m_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__mul__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_mul_U;
   function U_rshift_U
     (self : access Inst; stream_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if stream_P /= null then stream_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   procedure append
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end append;
   procedure append (self : access Inst; l_P : SEQUENCE_QtAda6_QtCore_QPointF) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "append");
      List   := List_New (l_P'Length);
      for ind in l_P'Range loop
         List_SetItem
           (List, ssize_t (ind - l_P'First), (if l_P (ind) /= null then l_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end append;
   function at_K (self : access Inst; i_P : int) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "at");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end at_K;
   function back (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "back");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end back;
   function boundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function capacity (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "capacity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end capacity;
   procedure clear (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clear;
   function constData (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constData");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constData;
   function constFirst (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constFirst");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constFirst;
   function constLast (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "constLast");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end constLast;
   function containsPoint
     (self : access Inst; pt_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "containsPoint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if fillRule_P /= null then fillRule_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end containsPoint;
   function count (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "count");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end count;
   function data (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "data");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end data;
   function empty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "empty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end empty;
   function first (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "first");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end first;
   function first (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "first");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end first;
   function fromList (list_P : SEQUENCE_QtAda6_QtCore_QPointF) return LIST_QtAda6_QtCore_QPointF is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Method := Object_GetAttrString (Class, "fromList");
      List   := List_New (list_P'Length);
      for ind in list_P'Range loop
         List_SetItem
           (List, ssize_t (ind - list_P'First), (if list_P (ind) /= null then list_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end fromList;
   function fromVector (vector_P : SEQUENCE_QtAda6_QtCore_QPointF) return LIST_QtAda6_QtCore_QPointF is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPolygonF");
      Method := Object_GetAttrString (Class, "fromVector");
      List   := List_New (vector_P'Length);
      for ind in vector_P'Range loop
         List_SetItem
           (List, ssize_t (ind - vector_P'First),
            (if vector_P (ind) /= null then vector_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end fromVector;
   function front (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "front");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end front;
   procedure insert
     (self    : access Inst; arg_1_P : int;
      arg_2_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "insert");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end insert;
   function intersected
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end intersected;
   function intersects
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end intersects;
   function isClosed (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isClosed");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isClosed;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function isSharedWith (self : access Inst; other_P : SEQUENCE_QtAda6_QtCore_QPointF) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSharedWith");
      List   := List_New (other_P'Length);
      for ind in other_P'Range loop
         List_SetItem
           (List, ssize_t (ind - other_P'First),
            (if other_P (ind) /= null then other_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSharedWith;
   function last (self : access Inst) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "last");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end last;
   function last (self : access Inst; n_P : int) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "last");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end last;
   function length (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "length");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end length;
   function mid (self : access Inst; pos_P : int; len_P : int := 0) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mid");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Dict := Dict_New;
      if len_P /= 0 then
         Dict_SetItemString (Dict, "len", Long_FromLong (len_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end mid;
   procedure move (self : access Inst; from_U_P : int; to_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "move");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (from_U_P));
      Tuple_SetItem (Args, 1, Long_FromLong (to_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end move;
   procedure pop_back (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pop_back");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end pop_back;
   procedure pop_front (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pop_front");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end pop_front;
   procedure prepend
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "prepend");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end prepend;
   procedure push_back
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_back");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end push_back;
   procedure push_front
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "push_front");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end push_front;
   procedure remove (self : access Inst; i_P : int; n_P : int := 0) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "remove");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict := Dict_New;
      if n_P /= 0 then
         Dict_SetItemString (Dict, "n", Long_FromLong (n_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end remove;
   procedure removeAll
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAll");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAll;
   procedure removeAt (self : access Inst; i_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeAt;
   procedure removeFirst (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeFirst");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeFirst;
   procedure removeLast (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeLast");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeLast;
   procedure removeOne
     (self : access Inst; arg_1_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeOne");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end removeOne;
   procedure reserve (self : access Inst; size_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reserve");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end reserve;
   procedure resize (self : access Inst; size_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (size_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resize;
   procedure shrink_to_fit (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shrink_to_fit");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end shrink_to_fit;
   function size (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end size;
   function sliced (self : access Inst; pos_P : int) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end sliced;
   function sliced (self : access Inst; pos_P : int; n_P : int) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sliced");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end sliced;
   procedure squeeze (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "squeeze");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end squeeze;
   function subtracted
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "subtracted");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end subtracted;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swapItemsAt (self : access Inst; i_P : int; j_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swapItemsAt");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (j_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swapItemsAt;
   function takeAt (self : access Inst; i_P : int) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "takeAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end takeAt;
   function toList (self : access Inst) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toList");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end toList;
   function toPolygon (self : access Inst) return access QtAda6.QtGui.QPolygon.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPolygon.Class := new QtAda6.QtGui.QPolygon.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toPolygon");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPolygon;
   function toVector (self : access Inst) return LIST_QtAda6_QtCore_QPointF is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toVector");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end toVector;
   procedure translate (self : access Inst; dx_P : float; dy_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate
     (self : access Inst; offset_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   function translated (self : access Inst; dx_P : float; dy_P : float) return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function translated
     (self : access Inst; offset_P : UNION_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function united
     (self : access Inst; r_P : UNION_QtAda6_QtGui_QPolygonF_SEQUENCE_QtAda6_QtCore_QRectF)
      return access QtAda6.QtGui.QPolygonF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPolygonF.Class := new QtAda6.QtGui.QPolygonF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "united");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end united;
   function value (self : access Inst; i_P : int) return access QtAda6.QtCore.QPointF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPointF.Class := new QtAda6.QtCore.QPointF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end value;
end QtAda6.QtGui.QPolygonF;
