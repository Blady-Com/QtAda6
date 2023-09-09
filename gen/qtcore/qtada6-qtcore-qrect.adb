-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qrect.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QPoint;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QMargins;
with QtAda6.QtCore.QRectF;
package body QtAda6.QtCore.QRect is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (QRect_P : access QtAda6.QtCore.QRect.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, QRect_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (left_P : int; top_P : int; width_P : int; height_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (left_P));
      Tuple_SetItem (Args, 1, Long_FromLong (top_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; bottomright_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, topleft_P.Python_Proxy);
      Tuple_SetItem (Args, 1, bottomright_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (topleft_P : access QtAda6.QtCore.QPoint.Inst'Class; size_P : access QtAda6.QtCore.QSize.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, topleft_P.Python_Proxy);
      Tuple_SetItem (Args, 1, size_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_add_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__add__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, margins_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_add_U;
   function U_and_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__and__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_and_U;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_iadd_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iadd__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, margins_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iadd_U;
   function U_iand_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__iand__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_iand_U;
   function U_ior_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__ior__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_ior_U;
   function U_isub_U
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__isub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, margins_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_isub_U;
   function U_or_U
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__or__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_or_U;
   function U_reduce_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__reduce__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_reduce_U;
   function U_repr_U (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__repr__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end U_repr_U;
   function U_sub_U
     (self : access Inst; rhs_P : access QtAda6.QtCore.QMargins.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__sub__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, rhs_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_sub_U;
   procedure adjust (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjust");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (x2_P));
      Tuple_SetItem (Args, 3, Long_FromLong (y2_P));
      Result := Object_CallObject (Method, Args, True);
   end adjust;
   function adjusted
     (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "adjusted");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (x2_P));
      Tuple_SetItem (Args, 3, Long_FromLong (y2_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end adjusted;
   function bottom (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bottom");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bottom;
   function bottomLeft (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "bottomLeft");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bottomLeft;
   function bottomRight (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "bottomRight");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bottomRight;
   function center (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "center");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end center;
   function contains (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; proper_P : bool) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (proper_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; proper_P : bool) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Tuple_SetItem (Args, 1, To_Python (proper_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; x_P : int; y_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function contains (self : access Inst; x_P : int; y_P : int; proper_P : bool) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "contains");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, To_Python (proper_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end contains;
   function getCoords (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getCoords");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end getCoords;
   function getRect (self : access Inst) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getRect");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end getRect;
   function height (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end height;
   function intersected
     (self : access Inst; other_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end intersected;
   function intersects (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "intersects");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, r_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end intersects;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isEmpty;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function left (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "left");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end left;
   function marginsAdded
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "marginsAdded");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, margins_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marginsAdded;
   function marginsRemoved
     (self : access Inst; margins_P : access QtAda6.QtCore.QMargins.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "marginsRemoved");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, margins_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end marginsRemoved;
   procedure moveBottom (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveBottom");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end moveBottom;
   procedure moveBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveBottomLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveBottomLeft;
   procedure moveBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveBottomRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveBottomRight;
   procedure moveCenter (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveCenter");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveCenter;
   procedure moveLeft (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end moveLeft;
   procedure moveRight (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end moveRight;
   procedure moveTo (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTo");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveTo;
   procedure moveTo (self : access Inst; x_P : int; t_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (t_P));
      Result := Object_CallObject (Method, Args, True);
   end moveTo;
   procedure moveTop (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end moveTop;
   procedure moveTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTopLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveTopLeft;
   procedure moveTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "moveTopRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end moveTopRight;
   function normalized (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalized");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalized;
   function right (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "right");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end right;
   procedure setBottom (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottom");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end setBottom;
   procedure setBottomLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setBottomLeft;
   procedure setBottomRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBottomRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setBottomRight;
   procedure setCoords (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCoords");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (x2_P));
      Tuple_SetItem (Args, 3, Long_FromLong (y2_P));
      Result := Object_CallObject (Method, Args, True);
   end setCoords;
   procedure setHeight (self : access Inst; h_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setHeight;
   procedure setLeft (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end setLeft;
   procedure setRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Result := Object_CallObject (Method, Args, True);
   end setRect;
   procedure setRight (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end setRight;
   procedure setSize (self : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSize;
   procedure setTop (self : access Inst; pos_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTop");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
   end setTop;
   procedure setTopLeft (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopLeft");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTopLeft;
   procedure setTopRight (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTopRight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTopRight;
   procedure setWidth (self : access Inst; w_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Result := Object_CallObject (Method, Args, True);
   end setWidth;
   procedure setX (self : access Inst; x_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Result := Object_CallObject (Method, Args, True);
   end setX;
   procedure setY (self : access Inst; y_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (y_P));
      Result := Object_CallObject (Method, Args, True);
   end setY;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function span
     (p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRect");
      Method := Object_GetAttrString (Class, "span");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, p1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, p2_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end span;
   function toRectF (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toRectF");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toRectF;
   function top (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "top");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end top;
   function topLeft (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topLeft");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topLeft;
   function topRight (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "topRight");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end topRight;
   procedure translate (self : access Inst; dx_P : int; dy_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Result := Object_CallObject (Method, Args, True);
   end translate;
   procedure translate (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end translate;
   function translated (self : access Inst; dx_P : int; dy_P : int) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function translated
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translated");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end translated;
   function transposed (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transposed");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transposed;
   function united
     (self : access Inst; other_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "united");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end united;
   function width (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end width;
   function x (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "x");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end x;
   function y (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "y");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end y;
end QtAda6.QtCore.QRect;
