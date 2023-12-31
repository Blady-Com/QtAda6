-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPalette;
package body QtAda6.QtWidgets is
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_3_P     : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      lineWidth_P : int;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawPlainRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, r_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawPlainRect;
   procedure qDrawPlainRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_6_P     : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      lineWidth_P : int;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawPlainRect");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 7, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawPlainRect;
   procedure qDrawShadeLine
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      pal_P       : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      lineWidth_P : int; midLineWidth_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeLine");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, p1_P.Python_Proxy);
      Tuple_SetItem (Args, 2, p2_P.Python_Proxy);
      Tuple_SetItem (Args, 3, No_Value);
      Tuple_SetItem (Args, 4, To_Python (sunken_P));
      Tuple_SetItem (Args, 5, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 6, Long_FromLong (midLineWidth_P));
      Result := Object_CallObject (Method, Args, True);
   end qDrawShadeLine;
   procedure qDrawShadeLine
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x1_P : int; y1_P : int; x2_P : int; y2_P : int;
      pal_P       : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      lineWidth_P : int; midLineWidth_P : int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeLine");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 3, Long_FromLong (x2_P));
      Tuple_SetItem (Args, 4, Long_FromLong (y2_P));
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, To_Python (sunken_P));
      Tuple_SetItem (Args, 7, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 8, Long_FromLong (midLineWidth_P));
      Result := Object_CallObject (Method, Args, True);
   end qDrawShadeLine;
   procedure qDrawShadePanel
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P       : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      lineWidth_P : int;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadePanel");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, r_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, To_Python (sunken_P));
      Tuple_SetItem (Args, 4, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 5, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawShadePanel;
   procedure qDrawShadePanel
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P       : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      lineWidth_P : int;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadePanel");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, To_Python (sunken_P));
      Tuple_SetItem (Args, 7, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 8, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawShadePanel;
   procedure qDrawShadeRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P       : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      lineWidth_P : int; midLineWidth_P : int;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeRect");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, r_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, To_Python (sunken_P));
      Tuple_SetItem (Args, 4, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 5, Long_FromLong (midLineWidth_P));
      Tuple_SetItem (Args, 6, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawShadeRect;
   procedure qDrawShadeRect
     (p_P         : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P       : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      lineWidth_P : int; midLineWidth_P : int;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawShadeRect");
      Args   := Tuple_New (10);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, To_Python (sunken_P));
      Tuple_SetItem (Args, 7, Long_FromLong (lineWidth_P));
      Tuple_SetItem (Args, 8, Long_FromLong (midLineWidth_P));
      Tuple_SetItem (Args, 9, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawShadeRect;
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinButton");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, r_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, To_Python (sunken_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawWinButton;
   procedure qDrawWinButton
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinButton");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, To_Python (sunken_P));
      Tuple_SetItem (Args, 7, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawWinButton;
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      pal_P  : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinPanel");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, r_P.Python_Proxy);
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, To_Python (sunken_P));
      Tuple_SetItem (Args, 4, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawWinPanel;
   procedure qDrawWinPanel
     (p_P    : access QtAda6.QtGui.QPainter.Inst'Class; x_P : int; y_P : int; w_P : int; h_P : int;
      pal_P  : Union_QtAda6_QtGui_QPalette_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor; sunken_P : bool;
      fill_P : Union_QtAda6_QtGui_QBrush_QtAda6_QtCore_Qt_BrushStyle_QtAda6_QtCore_Qt_GlobalColor_QtAda6_QtGui_QColor_QtAda6_QtGui_QGradient_QtAda6_QtGui_QImage_QtAda6_QtGui_QPixmap_NoneType)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "qDrawWinPanel");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (x_P));
      Tuple_SetItem (Args, 2, Long_FromLong (y_P));
      Tuple_SetItem (Args, 3, Long_FromLong (w_P));
      Tuple_SetItem (Args, 4, Long_FromLong (h_P));
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, To_Python (sunken_P));
      Tuple_SetItem (Args, 7, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end qDrawWinPanel;
end QtAda6.QtWidgets;
