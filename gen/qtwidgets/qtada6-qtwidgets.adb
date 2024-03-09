-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets.adb
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
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QPoint;
package body QtAda6.QtWidgets is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P     : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawPlainRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if arg_3_P /= null then arg_3_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawPlainRect;
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P     : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawPlainRect");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, (if arg_6_P /= null then arg_6_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawPlainRect;
   procedure qDrawShadeLine
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeLine");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if midLineWidth_P /= 0 then
         Dict_SetItemString (Dict, "midLineWidth", Long_FromLong (midLineWidth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawShadeLine;
   procedure qDrawShadeLine
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x1_P : int; y1_P : int; x2_P : int; y2_P : int;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeLine");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 3, Long_FromLong (x2_P));
      Tuple_SetItem (Args, 4, Long_FromLong (y2_P));
      Tuple_SetItem (Args, 5, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if midLineWidth_P /= 0 then
         Dict_SetItemString (Dict, "midLineWidth", Long_FromLong (midLineWidth_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawShadeLine;
   procedure qDrawShadePanel
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadePanel");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawShadePanel;
   procedure qDrawShadePanel
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadePanel");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawShadePanel;
   procedure qDrawShadeRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if midLineWidth_P /= 0 then
         Dict_SetItemString (Dict, "midLineWidth", Long_FromLong (midLineWidth_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawShadeRect;
   procedure qDrawShadeRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      lineWidth_P : int := 0; midLineWidth_P : int := 0;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeRect");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if lineWidth_P /= 0 then
         Dict_SetItemString (Dict, "lineWidth", Long_FromLong (lineWidth_P));
      end if;
      if midLineWidth_P /= 0 then
         Dict_SetItemString (Dict, "midLineWidth", Long_FromLong (midLineWidth_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawShadeRect;
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinButton");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawWinButton;
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinButton");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawWinButton;
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinPanel");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawWinPanel;
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : UNION_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool := False;
      fill_P : UNION_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinPanel");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sunken_P /= False then
         Dict_SetItemString (Dict, "sunken", To_Python (sunken_P));
      end if;
      if fill_P /= null then
         Dict_SetItemString (Dict, "fill", fill_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end qDrawWinPanel;
end QtAda6.QtWidgets;
