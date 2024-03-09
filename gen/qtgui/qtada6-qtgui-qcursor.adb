-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qcursor.adb
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
with QtAda6.QtCore.Qt.CursorShape;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtCore.Qt.ReturnByValueConstant;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QScreen;
package body QtAda6.QtGui.QCursor is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (bitmap_P : UNION_QtAda6_QtGui_QBitmap_str; mask_P : UNION_QtAda6_QtGui_QBitmap_str; hotX_P : int := 0;
      hotY_P   : int := 0) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if bitmap_P /= null then bitmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mask_P /= null then mask_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hotX_P /= 0 then
         Dict_SetItemString (Dict, "hotX", Long_FromLong (hotX_P));
      end if;
      if hotY_P /= 0 then
         Dict_SetItemString (Dict, "hotY", Long_FromLong (hotY_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (cursor_P : UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if cursor_P /= null then cursor_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pixmap_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str; hotX_P : int := 0; hotY_P : int := 0) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hotX_P /= 0 then
         Dict_SetItemString (Dict, "hotX", Long_FromLong (hotX_P));
      end if;
      if hotY_P /= 0 then
         Dict_SetItemString (Dict, "hotY", Long_FromLong (hotY_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (shape_P : access QtAda6.QtCore.Qt.CursorShape.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if shape_P /= null then shape_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; outS_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if outS_P /= null then outS_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; inS_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if inS_P /= null then inS_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function bitmap (self : access Inst) return access QtAda6.QtGui.QBitmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "bitmap");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bitmap;
   function bitmap
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.ReturnByValueConstant.Inst'Class)
      return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bitmap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bitmap;
   function hotSpot (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "hotSpot");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hotSpot;
   function mask (self : access Inst) return access QtAda6.QtGui.QBitmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mask");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mask;
   function mask
     (self : access Inst; arg_1_P : access QtAda6.QtCore.Qt.ReturnByValueConstant.Inst'Class)
      return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mask;
   function pixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixmap");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixmap;
   function pos return access QtAda6.QtCore.QPoint.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method           := Object_GetAttrString (Class, "pos");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   function pos (screen_P : access QtAda6.QtGui.QScreen.Inst'Class) return access QtAda6.QtCore.QPoint.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method := Object_GetAttrString (Class, "pos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pos;
   procedure setPos (p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method := Object_GetAttrString (Class, "setPos");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPos;
   procedure setPos (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method := Object_GetAttrString (Class, "setPos");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPos;
   procedure setPos (screen_P : access QtAda6.QtGui.QScreen.Inst'Class; x_P : int; y_P : int) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method := Object_GetAttrString (Class, "setPos");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPos;
   procedure setPos (x_P : int; y_P : int) is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QCursor");
      Method := Object_GetAttrString (Class, "setPos");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPos;
   procedure setShape (self : access Inst; newShape_P : access QtAda6.QtCore.Qt.CursorShape.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShape");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if newShape_P /= null then newShape_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setShape;
   function shape (self : access Inst) return access QtAda6.QtCore.Qt.CursorShape.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.CursorShape.Class := new QtAda6.QtCore.Qt.CursorShape.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shape");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shape;
   procedure swap
     (self : access Inst; other_P : UNION_QtAda6_QtGui_QCursor_QtAda6_QtCore_Qt_CursorShape_QtAda6_QtGui_QPixmap)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
end QtAda6.QtGui.QCursor;
