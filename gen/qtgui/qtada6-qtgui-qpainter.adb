-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpainter.adb
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
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QBrush;
with QtAda6.QtCore.Qt.BGMode;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QRectF;
with QtAda6.QtGui.QTextOption;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QPainter.CompositionMode;
with QtAda6.QtCore.QPointF;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtGui.QPolygonF;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtGui.QGlyphRun;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.Qt.ImageConversionFlag;
with QtAda6.QtCore.QLine;
with QtAda6.QtCore.QLineF;
with QtAda6.QtGui.QPicture;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QPainter.PixmapFragment;
with QtAda6.QtGui.QPainter.PixmapFragmentHint;
with QtAda6.QtCore.Qt.FillRule;
with QtAda6.QtCore.Qt.SizeMode;
with QtAda6.QtGui.QStaticText;
with QtAda6.QtGui.QTextItem;
with QtAda6.QtCore.Qt.BrushStyle;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QGradient;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtGui.QGradient.Preset;
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QFontInfo;
with QtAda6.QtGui.QFontMetrics;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtGui.QPen;
with QtAda6.QtGui.QPainter.RenderHint;
with QtAda6.QtCore.Qt.ClipOperation;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtCore.Qt.PenStyle;
package body QtAda6.QtGui.QPainter is
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
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtGui.QWindow.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPainter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function U_enter_U (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.Class := new QtAda6.QtGui.QPainter.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__enter__");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_enter_U;
   procedure U_exit_U
     (self : access Inst; arg_1_P : access Object'Class; arg_2_P : access Object'Class; arg_3_P : access Object'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__exit__");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if arg_3_P /= null then arg_3_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_exit_U;
   function background (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "background");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end background;
   function backgroundMode (self : access Inst) return access QtAda6.QtCore.Qt.BGMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.BGMode.Class := new QtAda6.QtCore.Qt.BGMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundMode;
   function begin_K (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "begin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end begin_K;
   procedure beginNativePainting (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "beginNativePainting");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end beginNativePainting;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtGui.QTextOption.Inst'Class := null) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtGui.QTextOption.Inst'Class := null) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null) return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function boundingRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "boundingRect");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 5, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundingRect;
   function brush (self : access Inst) return access QtAda6.QtGui.QBrush.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QBrush.Class := new QtAda6.QtGui.QBrush.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brush");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brush;
   function brushOrigin (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "brushOrigin");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end brushOrigin;
   function clipBoundingRect (self : access Inst) return access QtAda6.QtCore.QRectF.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipBoundingRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipBoundingRect;
   function clipPath (self : access Inst) return access QtAda6.QtGui.QPainterPath.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainterPath.Class := new QtAda6.QtGui.QPainterPath.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipPath");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipPath;
   function clipRegion (self : access Inst) return access QtAda6.QtGui.QRegion.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QRegion.Class := new QtAda6.QtGui.QRegion.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "clipRegion");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end clipRegion;
   function combinedTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "combinedTransform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end combinedTransform;
   function compositionMode_F (self : access Inst) return access QtAda6.QtGui.QPainter.CompositionMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.CompositionMode.Class := new QtAda6.QtGui.QPainter.CompositionMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "compositionMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end compositionMode_F;
   function device (self : access Inst) return access QtAda6.QtGui.QPaintDevice.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintDevice.Class := new QtAda6.QtGui.QPaintDevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function deviceTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "deviceTransform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deviceTransform;
   procedure drawArc (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawArc");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a_P));
      Tuple_SetItem (Args, 2, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawArc;
   procedure drawArc (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawArc");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a_P));
      Tuple_SetItem (Args, 2, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawArc;
   procedure drawArc (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawArc");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a_P));
      Tuple_SetItem (Args, 5, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawArc;
   procedure drawChord (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawChord");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a_P));
      Tuple_SetItem (Args, 2, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawChord;
   procedure drawChord (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawChord");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a_P));
      Tuple_SetItem (Args, 2, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawChord;
   procedure drawChord (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawChord");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a_P));
      Tuple_SetItem (Args, 5, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawChord;
   procedure drawConvexPolygon (self : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPointF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawConvexPolygon");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawConvexPolygon;
   procedure drawConvexPolygon (self : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPoint) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawConvexPolygon");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawConvexPolygon;
   procedure drawConvexPolygon (self : access Inst; polygon_P : access QtAda6.QtGui.QPolygon.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawConvexPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawConvexPolygon;
   procedure drawConvexPolygon (self : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawConvexPolygon");
      Args   := Tuple_New (1);
      List   := List_New (polygon_P'Length);
      for ind in polygon_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polygon_P'First),
            (if polygon_P (ind) /= null then polygon_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawConvexPolygon;
   procedure drawConvexPolygon (self : access Inst; polygon_P : access QtAda6.QtGui.QPolygonF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawConvexPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawConvexPolygon;
   procedure drawConvexPolygon (self : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawConvexPolygon");
      Args   := Tuple_New (1);
      List   := List_New (polygon_P'Length);
      for ind in polygon_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polygon_P'First),
            (if polygon_P (ind) /= null then polygon_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawConvexPolygon;
   procedure drawEllipse (self : access Inst; center_P : access QtAda6.QtCore.QPoint.Inst'Class; rx_P : int; ry_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (rx_P));
      Tuple_SetItem (Args, 2, Long_FromLong (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse
     (self : access Inst; center_P : access QtAda6.QtCore.QPointF.Inst'Class; rx_P : float; ry_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (rx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse
     (self : access Inst; center_P : access QtAda6.QtCore.QPoint.Inst'Class; rx_P : float; ry_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (rx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse
     (self : access Inst; center_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; rx_P : float; ry_P : float)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if center_P /= null then center_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (rx_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (ry_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawEllipse (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawEllipse");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawEllipse;
   procedure drawGlyphRun
     (self       : access Inst; position_P : access QtAda6.QtCore.QPointF.Inst'Class;
      glyphRun_P : access QtAda6.QtGui.QGlyphRun.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawGlyphRun");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if glyphRun_P /= null then glyphRun_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawGlyphRun;
   procedure drawGlyphRun
     (self       : access Inst; position_P : access QtAda6.QtCore.QPoint.Inst'Class;
      glyphRun_P : access QtAda6.QtGui.QGlyphRun.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawGlyphRun");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if glyphRun_P /= null then glyphRun_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawGlyphRun;
   procedure drawGlyphRun
     (self       : access Inst; position_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      glyphRun_P : access QtAda6.QtGui.QGlyphRun.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawGlyphRun");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if glyphRun_P /= null then glyphRun_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawGlyphRun;
   procedure drawImage
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : str;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; image_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; image_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sr_P : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sr_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; image_P : str;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; image_P : str;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; image_P : str;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sr_P : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sr_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; image_P : str;
      sr_P    : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; image_P : str;
      sr_P    : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; image_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; image_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; image_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; image_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class; image_P : str;
      sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P      : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class; image_P : str;
      sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P      : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class; image_P : str;
      sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      flags_P      : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      image_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class; image_P : str;
      sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      flags_P      : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (image_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self    : access Inst; x_P : int; y_P : int; image_P : access QtAda6.QtGui.QImage.Inst'Class; sx_P : int := 0;
      sy_P    : int                                                    := 0; sw_P : int := 0; sh_P : int := 0;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sx_P /= 0 then
         Dict_SetItemString (Dict, "sx", Long_FromLong (sx_P));
      end if;
      if sy_P /= 0 then
         Dict_SetItemString (Dict, "sy", Long_FromLong (sy_P));
      end if;
      if sw_P /= 0 then
         Dict_SetItemString (Dict, "sw", Long_FromLong (sw_P));
      end if;
      if sh_P /= 0 then
         Dict_SetItemString (Dict, "sh", Long_FromLong (sh_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawImage
     (self : access Inst; x_P : int; y_P : int; image_P : str; sx_P : int := 0; sy_P : int := 0; sw_P : int := 0;
      sh_P : int := 0; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawImage");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (image_P));
      Dict := Dict_New;
      if sx_P /= 0 then
         Dict_SetItemString (Dict, "sx", Long_FromLong (sx_P));
      end if;
      if sy_P /= 0 then
         Dict_SetItemString (Dict, "sy", Long_FromLong (sy_P));
      end if;
      if sw_P /= 0 then
         Dict_SetItemString (Dict, "sw", Long_FromLong (sw_P));
      end if;
      if sh_P /= 0 then
         Dict_SetItemString (Dict, "sh", Long_FromLong (sh_P));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawImage;
   procedure drawLine (self : access Inst; line_P : access QtAda6.QtCore.QLine.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if line_P /= null then line_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine (self : access Inst; line_P : access QtAda6.QtCore.QLineF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if line_P /= null then line_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      p2_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPointF.Inst'Class; p2_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPointF.Inst'Class;
      p2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPoint.Inst'Class; p2_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtCore.QPoint.Inst'Class;
      p2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      p2_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      p2_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine
     (self : access Inst; p1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      p2_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p1_P /= null then p1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if p2_P /= null then p2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLine (self : access Inst; x1_P : int; y1_P : int; x2_P : int; y2_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLine");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (x2_P));
      Tuple_SetItem (Args, 3, Long_FromLong (y2_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLine;
   procedure drawLines (self : access Inst; lines_P : SEQUENCE_QtAda6_QtCore_QLineF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (1);
      List   := List_New (lines_P'Length);
      for ind in lines_P'Range loop
         List_SetItem
           (List, ssize_t (ind - lines_P'First),
            (if lines_P (ind) /= null then lines_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawLines (self : access Inst; lines_P : SEQUENCE_QtAda6_QtCore_QLine) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (1);
      List   := List_New (lines_P'Length);
      for ind in lines_P'Range loop
         List_SetItem
           (List, ssize_t (ind - lines_P'First),
            (if lines_P (ind) /= null then lines_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawLines (self : access Inst; lines_P : access QtAda6.QtCore.QLineF.Inst'Class; lineCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if lines_P /= null then lines_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (lineCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawLines (self : access Inst; lines_P : access QtAda6.QtCore.QLine.Inst'Class; lineCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if lines_P /= null then lines_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (lineCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawLines (self : access Inst; pointPairs_P : SEQUENCE_QtAda6_QtCore_QPointF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (1);
      List   := List_New (pointPairs_P'Length);
      for ind in pointPairs_P'Range loop
         List_SetItem
           (List, ssize_t (ind - pointPairs_P'First),
            (if pointPairs_P (ind) /= null then pointPairs_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawLines (self : access Inst; pointPairs_P : SEQUENCE_QtAda6_QtCore_QPoint) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawLines");
      Args   := Tuple_New (1);
      List   := List_New (pointPairs_P'Length);
      for ind in pointPairs_P'Range loop
         List_SetItem
           (List, ssize_t (ind - pointPairs_P'First),
            (if pointPairs_P (ind) /= null then pointPairs_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawLines;
   procedure drawPath (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPath;
   procedure drawPicture
     (self      : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class;
      picture_P : access QtAda6.QtGui.QPicture.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if picture_P /= null then picture_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; picture_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (picture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture
     (self      : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class;
      picture_P : access QtAda6.QtGui.QPicture.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if picture_P /= null then picture_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; picture_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (picture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture
     (self      : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      picture_P : access QtAda6.QtGui.QPicture.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if picture_P /= null then picture_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; picture_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (picture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture (self : access Inst; x_P : int; y_P : int; picture_P : access QtAda6.QtGui.QPicture.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if picture_P /= null then picture_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPicture (self : access Inst; x_P : int; y_P : int; picture_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPicture");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (picture_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPicture;
   procedure drawPie (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPie");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a_P));
      Tuple_SetItem (Args, 2, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPie;
   procedure drawPie (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPie");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (a_P));
      Tuple_SetItem (Args, 2, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPie;
   procedure drawPie (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; a_P : int; alen_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPie");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (a_P));
      Tuple_SetItem (Args, 5, Long_FromLong (alen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPie;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pm_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pm_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pm_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pm_P : access QtAda6.QtGui.QPixmap.Inst'Class; sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pm_P : access QtAda6.QtGui.QPixmap.Inst'Class; sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pm_P : access QtAda6.QtGui.QImage.Inst'Class; sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      pm_P : access QtAda6.QtGui.QImage.Inst'Class; sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pm_P : str;
      sr_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 2, (if sr_P /= null then sr_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str;
      sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class; pixmap_P : str;
      sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRectF.Inst'Class; pixmap_P : str;
      sourceRect_P : access QtAda6.QtCore.QRect.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self     : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class; sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self         : access Inst; targetRect_P : access QtAda6.QtCore.QRect.Inst'Class; pixmap_P : str;
      sourceRect_P : access QtAda6.QtCore.QRectF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if targetRect_P /= null then targetRect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pixmap_P));
      Tuple_SetItem (Args, 2, (if sourceRect_P /= null then sourceRect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; x_P : int; y_P : int; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; x_P : int; y_P : int; pm_P : access QtAda6.QtGui.QImage.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; x_P : int; y_P : int; pm_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (pm_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class; sx_P : int; sy_P : int;
      sw_P : int; sh_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (sx_P));
      Tuple_SetItem (Args, 4, Long_FromLong (sy_P));
      Tuple_SetItem (Args, 5, Long_FromLong (sw_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; pm_P : access QtAda6.QtGui.QImage.Inst'Class; sx_P : int; sy_P : int;
      sw_P : int; sh_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Long_FromLong (sx_P));
      Tuple_SetItem (Args, 4, Long_FromLong (sy_P));
      Tuple_SetItem (Args, 5, Long_FromLong (sw_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; pm_P : str; sx_P : int; sy_P : int; sw_P : int; sh_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 3, Long_FromLong (sx_P));
      Tuple_SetItem (Args, 4, Long_FromLong (sy_P));
      Tuple_SetItem (Args, 5, Long_FromLong (sw_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; pm_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; pm_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (pm_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sx_P : int; sy_P : int; sw_P : int; sh_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, Long_FromLong (sx_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sy_P));
      Tuple_SetItem (Args, 7, Long_FromLong (sw_P));
      Tuple_SetItem (Args, 8, Long_FromLong (sh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      sx_P : int; sy_P : int; sw_P : int; sh_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, Long_FromLong (sx_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sy_P));
      Tuple_SetItem (Args, 7, Long_FromLong (sw_P));
      Tuple_SetItem (Args, 8, Long_FromLong (sh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; pm_P : str; sx_P : int; sy_P : int; sw_P : int;
      sh_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmap");
      Args   := Tuple_New (9);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (pm_P));
      Tuple_SetItem (Args, 5, Long_FromLong (sx_P));
      Tuple_SetItem (Args, 6, Long_FromLong (sy_P));
      Tuple_SetItem (Args, 7, Long_FromLong (sw_P));
      Tuple_SetItem (Args, 8, Long_FromLong (sh_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmap;
   procedure drawPixmapFragments
     (self : access Inst; fragments_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class; fragmentCount_P : int;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      hints_P  : access QtAda6.QtGui.QPainter.PixmapFragmentHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmapFragments");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if fragments_P /= null then fragments_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (fragmentCount_P));
      Tuple_SetItem (Args, 2, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hints_P /= null then
         Dict_SetItemString (Dict, "hints", hints_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmapFragments;
   procedure drawPixmapFragments
     (self : access Inst; fragments_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class; fragmentCount_P : int;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class;
      hints_P  : access QtAda6.QtGui.QPainter.PixmapFragmentHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmapFragments");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if fragments_P /= null then fragments_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (fragmentCount_P));
      Tuple_SetItem (Args, 2, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if hints_P /= null then
         Dict_SetItemString (Dict, "hints", hints_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmapFragments;
   procedure drawPixmapFragments
     (self : access Inst; fragments_P : access QtAda6.QtGui.QPainter.PixmapFragment.Inst'Class; fragmentCount_P : int;
      pixmap_P : str; hints_P : access QtAda6.QtGui.QPainter.PixmapFragmentHint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPixmapFragments");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if fragments_P /= null then fragments_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (fragmentCount_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (pixmap_P));
      Dict := Dict_New;
      if hints_P /= null then
         Dict_SetItemString (Dict, "hints", hints_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPixmapFragments;
   procedure drawPoint (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoint;
   procedure drawPoint (self : access Inst; pt_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoint;
   procedure drawPoint (self : access Inst; pt_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pt_P /= null then pt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoint;
   procedure drawPoint (self : access Inst; x_P : int; y_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoint");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoint;
   procedure drawPoints (self : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPointF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPoint) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtCore.QPointF.Inst'Class; pointCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtCore.QPoint.Inst'Class; pointCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints
     (self : access Inst; points_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; pointCount_P : int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (pointCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtGui.QPolygon.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; points_P : SEQUENCE_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (1);
      List   := List_New (points_P'Length);
      for ind in points_P'Range loop
         List_SetItem
           (List, ssize_t (ind - points_P'First),
            (if points_P (ind) /= null then points_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; points_P : access QtAda6.QtGui.QPolygonF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if points_P /= null then points_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPoints (self : access Inst; points_P : SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPoints");
      Args   := Tuple_New (1);
      List   := List_New (points_P'Length);
      for ind in points_P'Range loop
         List_SetItem
           (List, ssize_t (ind - points_P'First),
            (if points_P (ind) /= null then points_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPoints;
   procedure drawPointsNp
     (self : access Inst; x_P : shibokensupport.signature.mapping.ArrayLikeVariable;
      y_P  : shibokensupport.signature.mapping.ArrayLikeVariable)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPointsNp");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, shibokensupport.signature.mapping.ArrayLikeVariable_conv_A2P_is_not_supported);
      Tuple_SetItem (Args, 1, shibokensupport.signature.mapping.ArrayLikeVariable_conv_A2P_is_not_supported);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPointsNp;
   procedure drawPolygon
     (self    : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPointF;
      arg_2_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (2);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolygon
     (self    : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPoint;
      arg_2_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (2);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolygon
     (self       : access Inst; polygon_P : access QtAda6.QtGui.QPolygon.Inst'Class;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if fillRule_P /= null then
         Dict_SetItemString (Dict, "fillRule", fillRule_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolygon
     (self       : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRect;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (1);
      List   := List_New (polygon_P'Length);
      for ind in polygon_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polygon_P'First),
            (if polygon_P (ind) /= null then polygon_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if fillRule_P /= null then
         Dict_SetItemString (Dict, "fillRule", fillRule_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolygon
     (self       : access Inst; polygon_P : access QtAda6.QtGui.QPolygonF.Inst'Class;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if fillRule_P /= null then
         Dict_SetItemString (Dict, "fillRule", fillRule_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolygon
     (self       : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRectF;
      fillRule_P : access QtAda6.QtCore.Qt.FillRule.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolygon");
      Args   := Tuple_New (1);
      List   := List_New (polygon_P'Length);
      for ind in polygon_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polygon_P'First),
            (if polygon_P (ind) /= null then polygon_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict := Dict_New;
      if fillRule_P /= null then
         Dict_SetItemString (Dict, "fillRule", fillRule_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolygon;
   procedure drawPolyline (self : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPointF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolyline");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolyline;
   procedure drawPolyline (self : access Inst; arg_1_P : SEQUENCE_QtAda6_QtCore_QPoint) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolyline");
      Args   := Tuple_New (1);
      List   := List_New (arg_1_P'Length);
      for ind in arg_1_P'Range loop
         List_SetItem
           (List, ssize_t (ind - arg_1_P'First),
            (if arg_1_P (ind) /= null then arg_1_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolyline;
   procedure drawPolyline (self : access Inst; polygon_P : access QtAda6.QtGui.QPolygon.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolyline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polygon_P /= null then polygon_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolyline;
   procedure drawPolyline (self : access Inst; polygon_P : SEQUENCE_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolyline");
      Args   := Tuple_New (1);
      List   := List_New (polygon_P'Length);
      for ind in polygon_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polygon_P'First),
            (if polygon_P (ind) /= null then polygon_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolyline;
   procedure drawPolyline (self : access Inst; polyline_P : access QtAda6.QtGui.QPolygonF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolyline");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if polyline_P /= null then polyline_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolyline;
   procedure drawPolyline (self : access Inst; polyline_P : SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPolyline");
      Args   := Tuple_New (1);
      List   := List_New (polyline_P'Length);
      for ind in polyline_P'Range loop
         List_SetItem
           (List, ssize_t (ind - polyline_P'First),
            (if polyline_P (ind) /= null then polyline_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPolyline;
   procedure drawRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRect;
   procedure drawRect (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRect;
   procedure drawRect (self : access Inst; x1_P : int; y1_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y1_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRect;
   procedure drawRects (self : access Inst; rectangles_P : SEQUENCE_QtAda6_QtCore_QRectF) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRects");
      Args   := Tuple_New (1);
      List   := List_New (rectangles_P'Length);
      for ind in rectangles_P'Range loop
         List_SetItem
           (List, ssize_t (ind - rectangles_P'First),
            (if rectangles_P (ind) /= null then rectangles_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRects;
   procedure drawRects (self : access Inst; rectangles_P : SEQUENCE_QtAda6_QtCore_QRect) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRects");
      Args   := Tuple_New (1);
      List   := List_New (rectangles_P'Length);
      for ind in rectangles_P'Range loop
         List_SetItem
           (List, ssize_t (ind - rectangles_P'First),
            (if rectangles_P (ind) /= null then rectangles_P (ind).Python_Proxy else No_Value));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRects;
   procedure drawRects (self : access Inst; rects_P : access QtAda6.QtCore.QRectF.Inst'Class; rectCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRects");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rects_P /= null then rects_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (rectCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRects;
   procedure drawRects (self : access Inst; rects_P : access QtAda6.QtCore.QRect.Inst'Class; rectCount_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRects");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rects_P /= null then rects_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (rectCount_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRects;
   procedure drawRoundedRect
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRoundedRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (xRadius_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (yRadius_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRoundedRect;
   procedure drawRoundedRect
     (self   : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRoundedRect");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (xRadius_P));
      Tuple_SetItem (Args, 2, Float_FromDouble (yRadius_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRoundedRect;
   procedure drawRoundedRect
     (self   : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; xRadius_P : float; yRadius_P : float;
      mode_P : access QtAda6.QtCore.Qt.SizeMode.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawRoundedRect");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Float_FromDouble (xRadius_P));
      Tuple_SetItem (Args, 5, Float_FromDouble (yRadius_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawRoundedRect;
   procedure drawStaticText
     (self : access Inst; left_P : int; top_P : int; staticText_P : access QtAda6.QtGui.QStaticText.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawStaticText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (left_P));
      Tuple_SetItem (Args, 1, Long_FromLong (top_P));
      Tuple_SetItem (Args, 2, (if staticText_P /= null then staticText_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawStaticText;
   procedure drawStaticText
     (self         : access Inst; topLeftPosition_P : access QtAda6.QtCore.QPoint.Inst'Class;
      staticText_P : access QtAda6.QtGui.QStaticText.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawStaticText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeftPosition_P /= null then topLeftPosition_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if staticText_P /= null then staticText_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawStaticText;
   procedure drawStaticText
     (self         : access Inst; topLeftPosition_P : access QtAda6.QtCore.QPointF.Inst'Class;
      staticText_P : access QtAda6.QtGui.QStaticText.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawStaticText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeftPosition_P /= null then topLeftPosition_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if staticText_P /= null then staticText_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawStaticText;
   procedure drawStaticText
     (self         : access Inst; topLeftPosition_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      staticText_P : access QtAda6.QtGui.QStaticText.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawStaticText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if topLeftPosition_P /= null then topLeftPosition_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if staticText_P /= null then staticText_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawStaticText;
   procedure drawText (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; s_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (s_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class; s_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (s_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; s_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (s_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   function drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRect.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end drawText;
   function drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end drawText;
   function drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; text_P : str)
      return access QtAda6.QtCore.QRectF.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QRectF.Class := new QtAda6.QtCore.QRectF.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (text_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end drawText;
   procedure drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtGui.QTextOption.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtGui.QTextOption.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; text_P : str;
      o_P  : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if o_P /= null then
         Dict_SetItemString (Dict, "o", o_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText (self : access Inst; x_P : int; y_P : int; s_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (s_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawText (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; flags_P : int; text_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawText");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 5, Unicode_FromString (text_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawText;
   procedure drawTextItem
     (self : access Inst; p_P : access QtAda6.QtCore.QPoint.Inst'Class; ti_P : access QtAda6.QtGui.QTextItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTextItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ti_P /= null then ti_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTextItem;
   procedure drawTextItem
     (self : access Inst; p_P : access QtAda6.QtCore.QPointF.Inst'Class;
      ti_P : access QtAda6.QtGui.QTextItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTextItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ti_P /= null then ti_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTextItem;
   procedure drawTextItem
     (self : access Inst; p_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      ti_P : access QtAda6.QtGui.QTextItem.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTextItem");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if ti_P /= null then ti_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTextItem;
   procedure drawTextItem (self : access Inst; x_P : int; y_P : int; ti_P : access QtAda6.QtGui.QTextItem.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTextItem");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, (if ti_P /= null then ti_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTextItem;
   procedure drawTiledPixmap
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QPixmap.Inst'Class; pos_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if pos_P /= null then
         Dict_SetItemString (Dict, "pos", pos_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QImage.Inst'Class; pos_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if pos_P /= null then
         Dict_SetItemString (Dict, "pos", pos_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self  : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; arg_2_P : str;
      pos_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (arg_2_P));
      Dict := Dict_New;
      if pos_P /= null then
         Dict_SetItemString (Dict, "pos", pos_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pm_P : access QtAda6.QtGui.QPixmap.Inst'Class; offset_P : access QtAda6.QtCore.QPointF.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pm_P : access QtAda6.QtGui.QPixmap.Inst'Class; offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class;
      pm_P     : access QtAda6.QtGui.QPixmap.Inst'Class;
      offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      offset_P : access QtAda6.QtCore.QPointF.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      offset_P : access QtAda6.QtCore.QPointF.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      offset_P : access QtAda6.QtCore.QPoint.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : access QtAda6.QtCore.QRectF.Inst'Class; pm_P : str;
      offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      offset_P : access QtAda6.QtCore.QPointF.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      offset_P : access QtAda6.QtCore.QPointF.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : access QtAda6.QtGui.QImage.Inst'Class;
      offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pm_P /= null then pm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str;
      offset_P : access QtAda6.QtCore.QPointF.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self     : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class; pm_P : str;
      offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (pm_P));
      Dict := Dict_New;
      if offset_P /= null then
         Dict_SetItemString (Dict, "offset", offset_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : access QtAda6.QtGui.QPixmap.Inst'Class;
      sx_P : int := 0; sy_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sx_P /= 0 then
         Dict_SetItemString (Dict, "sx", Long_FromLong (sx_P));
      end if;
      if sy_P /= 0 then
         Dict_SetItemString (Dict, "sy", Long_FromLong (sy_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : access QtAda6.QtGui.QImage.Inst'Class;
      sx_P : int := 0; sy_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if sx_P /= 0 then
         Dict_SetItemString (Dict, "sx", Long_FromLong (sx_P));
      end if;
      if sy_P /= 0 then
         Dict_SetItemString (Dict, "sy", Long_FromLong (sy_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   procedure drawTiledPixmap
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : str; sx_P : int := 0; sy_P : int := 0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawTiledPixmap");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (arg_5_P));
      Dict := Dict_New;
      if sx_P /= 0 then
         Dict_SetItemString (Dict, "sx", Long_FromLong (sx_P));
      end if;
      if sy_P /= 0 then
         Dict_SetItemString (Dict, "sy", Long_FromLong (sy_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawTiledPixmap;
   function end_K (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "end");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end end_K;
   procedure endNativePainting (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "endNativePainting");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end endNativePainting;
   procedure eraseRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eraseRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end eraseRect;
   procedure eraseRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eraseRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end eraseRect;
   procedure eraseRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eraseRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end eraseRect;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtGui.QBrush.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtGui.QColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtGui.QGradient.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillPath
     (self    : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      brush_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillPath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillPath;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QBrush.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QGradient.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      color_P : access QtAda6.QtGui.QRgba64.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; color_P : Any) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; color_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class; color_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QBrush.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QGradient.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      arg_2_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      color_P : access QtAda6.QtGui.QRgba64.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class; color_P : Any) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class; color_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class; color_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class;
      preset_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if preset_P /= null then preset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self     : access Inst; r_P : access QtAda6.QtCore.QRectF.Inst'Class;
      preset_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if preset_P /= null then preset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : access QtAda6.QtGui.QBrush.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_5_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_5_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : access QtAda6.QtGui.QColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self    : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      arg_5_P : access QtAda6.QtGui.QGradient.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; arg_5_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if arg_5_P /= null then arg_5_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; color_P : access QtAda6.QtGui.QRgba64.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; color_P : Any) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; color_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int; color_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   procedure fillRect
     (self     : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      preset_P : access QtAda6.QtGui.QGradient.Preset.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fillRect");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Tuple_SetItem (Args, 4, (if preset_P /= null then preset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end fillRect;
   function font (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "font");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   function fontInfo (self : access Inst) return access QtAda6.QtGui.QFontInfo.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QFontInfo.Class := new QtAda6.QtGui.QFontInfo.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontInfo");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontInfo;
   function fontMetrics (self : access Inst) return access QtAda6.QtGui.QFontMetrics.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QFontMetrics.Class := new QtAda6.QtGui.QFontMetrics.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "fontMetrics");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fontMetrics;
   function hasClipping (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasClipping");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasClipping;
   function isActive (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isActive");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isActive;
   function layoutDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "layoutDirection");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end layoutDirection;
   function opacity (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "opacity");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end opacity;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintEngine");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintEngine;
   function pen (self : access Inst) return access QtAda6.QtGui.QPen.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QPen.Class := new QtAda6.QtGui.QPen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pen");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pen;
   function renderHints (self : access Inst) return access QtAda6.QtGui.QPainter.RenderHint.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPainter.RenderHint.Class := new QtAda6.QtGui.QPainter.RenderHint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "renderHints");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end renderHints;
   procedure resetTransform (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resetTransform");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end resetTransform;
   procedure restore (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "restore");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end restore;
   procedure rotate (self : access Inst; a_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rotate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (a_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end rotate;
   procedure save (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end save;
   procedure scale (self : access Inst; sx_P : float; sy_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (sx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end scale;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtGui.QBrush.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtGui.QGradient.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtGui.QImage.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackground (self : access Inst; bg_P : access QtAda6.QtGui.QPixmap.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackground");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if bg_P /= null then bg_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackground;
   procedure setBackgroundMode (self : access Inst; mode_P : access QtAda6.QtCore.Qt.BGMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackgroundMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackgroundMode;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QBrush.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.BrushStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QGradient.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QImage.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrush (self : access Inst; brush_P : access QtAda6.QtGui.QPixmap.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if brush_P /= null then brush_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrush;
   procedure setBrushOrigin (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrushOrigin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrushOrigin;
   procedure setBrushOrigin (self : access Inst; arg_1_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrushOrigin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrushOrigin;
   procedure setBrushOrigin (self : access Inst; arg_1_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrushOrigin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrushOrigin;
   procedure setBrushOrigin (self : access Inst; x_P : int; y_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBrushOrigin");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBrushOrigin;
   procedure setClipPath
     (self : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipPath;
   procedure setClipRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRect;
   procedure setClipRect
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRectF.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRect");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRect;
   procedure setClipRect
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRect");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRect;
   procedure setClipRegion
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QRegion.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRegion;
   procedure setClipRegion
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QBitmap.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRegion;
   procedure setClipRegion
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QPolygon.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRegion;
   procedure setClipRegion
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class;
      op_P : access QtAda6.QtCore.Qt.ClipOperation.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipRegion");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if op_P /= null then
         Dict_SetItemString (Dict, "op", op_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipRegion;
   procedure setClipping (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setClipping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setClipping;
   procedure setCompositionMode (self : access Inst; mode_P : access QtAda6.QtGui.QPainter.CompositionMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCompositionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCompositionMode;
   procedure setFont (self : access Inst; f_P : access QtAda6.QtGui.QFont.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if f_P /= null then f_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFont;
   procedure setFont (self : access Inst; f_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (f_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFont;
   procedure setFont (self : access Inst; f_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFont");
      Args   := Tuple_New (1);
      List   := List_New (f_P'Length);
      for ind in f_P'Range loop
         List_SetItem (List, ssize_t (ind - f_P'First), Unicode_FromString (f_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFont;
   procedure setLayoutDirection (self : access Inst; direction_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setLayoutDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if direction_P /= null then direction_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setLayoutDirection;
   procedure setOpacity (self : access Inst; opacity_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOpacity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (opacity_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOpacity;
   procedure setPen (self : access Inst; color_P : access QtAda6.QtGui.QColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; color_P : access QtAda6.QtGui.QRgba64.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; color_P : Any) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; color_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; color_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (color_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; pen_P : access QtAda6.QtGui.QPen.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setPen (self : access Inst; pen_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPen;
   procedure setRenderHint
     (self : access Inst; hint_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class; on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRenderHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setRenderHint;
   procedure setRenderHints
     (self : access Inst; hints_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class; on_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRenderHints");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hints_P /= null then hints_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if on_P /= False then
         Dict_SetItemString (Dict, "on", To_Python (on_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setRenderHints;
   procedure setTransform
     (self : access Inst; transform_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if transform_P /= null then transform_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if combine_P /= False then
         Dict_SetItemString (Dict, "combine", To_Python (combine_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransform;
   procedure setViewTransformEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewTransformEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setViewTransformEnabled;
   procedure setViewport (self : access Inst; viewport_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewport");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if viewport_P /= null then viewport_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setViewport;
   procedure setViewport (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setViewport");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setViewport;
   procedure setWindow (self : access Inst; window_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindow");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if window_P /= null then window_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindow;
   procedure setWindow (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWindow");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWindow;
   procedure setWorldMatrixEnabled (self : access Inst; enabled_P : bool) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWorldMatrixEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWorldMatrixEnabled;
   procedure setWorldTransform
     (self : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class; combine_P : bool := False)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWorldTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if matrix_P /= null then matrix_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if combine_P /= False then
         Dict_SetItemString (Dict, "combine", To_Python (combine_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setWorldTransform;
   procedure shear (self : access Inst; sh_P : float; sv_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "shear");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (sh_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (sv_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end shear;
   procedure strokePath
     (self  : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      pen_P : access QtAda6.QtGui.QPen.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "strokePath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end strokePath;
   procedure strokePath
     (self  : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      pen_P : access QtAda6.QtCore.Qt.PenStyle.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "strokePath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end strokePath;
   procedure strokePath
     (self  : access Inst; path_P : access QtAda6.QtGui.QPainterPath.Inst'Class;
      pen_P : access QtAda6.QtGui.QColor.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "strokePath");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if path_P /= null then path_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if pen_P /= null then pen_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end strokePath;
   function testRenderHint (self : access Inst; hint_P : access QtAda6.QtGui.QPainter.RenderHint.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "testRenderHint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if hint_P /= null then hint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end testRenderHint;
   function transform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transform;
   procedure translate (self : access Inst; dx_P : float; dy_P : float) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Float_FromDouble (dx_P));
      Tuple_SetItem (Args, 1, Float_FromDouble (dy_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate (self : access Inst; offset_P : access QtAda6.QtCore.QPointF.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   procedure translate (self : access Inst; offset_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "translate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if offset_P /= null then offset_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end translate;
   function viewTransformEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "viewTransformEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end viewTransformEnabled;
   function viewport (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "viewport");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end viewport;
   function window (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "window");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end window;
   function worldMatrixEnabled (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "worldMatrixEnabled");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end worldMatrixEnabled;
   function worldTransform (self : access Inst) return access QtAda6.QtGui.QTransform.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "worldTransform");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end worldTransform;
end QtAda6.QtGui.QPainter;
