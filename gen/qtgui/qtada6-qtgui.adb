-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui.adb
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
with QtAda6.QtGui.QQuaternion;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QVector2D;
with QtAda6.QtGui.QVector3D;
with QtAda6.QtGui.QVector4D;
with QtAda6.QtGui.QPixelFormat.TypeInterpretation;
with QtAda6.QtGui.QPixelFormat;
with QtAda6.QtGui.QPixelFormat.AlphaUsage;
with QtAda6.QtGui.QPixelFormat.AlphaPosition;
with QtAda6.QtGui.QPixelFormat.AlphaPremultiplied;
with QtAda6.QtGui.QPixelFormat.YUVLayout;
with QtAda6.QtGui.QPixelFormat.ByteOrder;
package body QtAda6.QtGui is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   function qAlpha (rgb_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qAlpha");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qAlpha;
   function qBlue (rgb_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qBlue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qBlue;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; arg_2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class; arg_2_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector2D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector3D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector4D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector4D.Inst'Class)
      return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : UNION_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform;
      arg_2_P : UNION_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qGray (r_P : int; g_P : int; b_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qGray");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qGray;
   function qGray (rgb_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qGray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qGray;
   function qGreen (rgb_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qGreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qGreen;
   function qIsGray (rgb_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qIsGray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end qIsGray;
   function qPixelFormatAlpha
     (channelSize_P : int; typeInt_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatAlpha");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Dict := Dict_New;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatAlpha;
   function qPixelFormatCmyk
     (channelSize_P : int; alfa_P : int := 0; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class := null;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatCmyk");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Dict := Dict_New;
      if alfa_P /= 0 then
         Dict_SetItemString (Dict, "alfa", Long_FromLong (alfa_P));
      end if;
      if usage_P /= null then
         Dict_SetItemString (Dict, "usage", usage_P.Python_Proxy);
      end if;
      if position_P /= null then
         Dict_SetItemString (Dict, "position", position_P.Python_Proxy);
      end if;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatCmyk;
   function qPixelFormatGrayscale
     (channelSize_P : int; typeInt_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatGrayscale");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Dict := Dict_New;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatGrayscale;
   function qPixelFormatHsl
     (channelSize_P : int; alfa_P : int := 0; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class := null;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatHsl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Dict := Dict_New;
      if alfa_P /= 0 then
         Dict_SetItemString (Dict, "alfa", Long_FromLong (alfa_P));
      end if;
      if usage_P /= null then
         Dict_SetItemString (Dict, "usage", usage_P.Python_Proxy);
      end if;
      if position_P /= null then
         Dict_SetItemString (Dict, "position", position_P.Python_Proxy);
      end if;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatHsl;
   function qPixelFormatHsv
     (channelSize_P : int; alfa_P : int := 0; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class := null;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatHsv");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Dict := Dict_New;
      if alfa_P /= 0 then
         Dict_SetItemString (Dict, "alfa", Long_FromLong (alfa_P));
      end if;
      if usage_P /= null then
         Dict_SetItemString (Dict, "usage", usage_P.Python_Proxy);
      end if;
      if position_P /= null then
         Dict_SetItemString (Dict, "position", position_P.Python_Proxy);
      end if;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatHsv;
   function qPixelFormatRgba
     (red_P      : int; green_P : int; blue_P : int; alfa_P : int;
      usage_P    : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      pmul_P     : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class := null;
      typeInt_P  : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatRgba");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (red_P));
      Tuple_SetItem (Args, 1, Long_FromLong (green_P));
      Tuple_SetItem (Args, 2, Long_FromLong (blue_P));
      Tuple_SetItem (Args, 3, Long_FromLong (alfa_P));
      Tuple_SetItem (Args, 4, (if usage_P /= null then usage_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 5, (if position_P /= null then position_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if pmul_P /= null then
         Dict_SetItemString (Dict, "pmul", pmul_P.Python_Proxy);
      end if;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatRgba;
   function qPixelFormatYuv
     (layout_P   : access QtAda6.QtGui.QPixelFormat.YUVLayout.Inst'Class; alfa_P : int := 0;
      usage_P    : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class         := null;
      position_P : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class      := null;
      p_mul_P    : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class := null;
      typeInt_P  : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class := null;
      b_order_P  : access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class          := null)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatYuv");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if layout_P /= null then layout_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if alfa_P /= 0 then
         Dict_SetItemString (Dict, "alfa", Long_FromLong (alfa_P));
      end if;
      if usage_P /= null then
         Dict_SetItemString (Dict, "usage", usage_P.Python_Proxy);
      end if;
      if position_P /= null then
         Dict_SetItemString (Dict, "position", position_P.Python_Proxy);
      end if;
      if p_mul_P /= null then
         Dict_SetItemString (Dict, "p_mul", p_mul_P.Python_Proxy);
      end if;
      if typeInt_P /= null then
         Dict_SetItemString (Dict, "typeInt", typeInt_P.Python_Proxy);
      end if;
      if b_order_P /= null then
         Dict_SetItemString (Dict, "b_order", b_order_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatYuv;
   function qRed (rgb_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qRed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qRed;
   function qRgb (r_P : int; g_P : int; b_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qRgb");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qRgb;
   function qRgba (r_P : int; g_P : int; b_P : int; a_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qRgba");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end qRgba;
   procedure qt_set_sequence_auto_mnemonic (b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qt_set_sequence_auto_mnemonic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end qt_set_sequence_auto_mnemonic;
end QtAda6.QtGui;
