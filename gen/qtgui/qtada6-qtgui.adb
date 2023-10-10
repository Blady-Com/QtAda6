-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore;
with QtAda6.QtGui.QQuaternion;
with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QVector2D;
with QtAda6.QtGui.QVector3D;
with QtAda6.QtGui.QVector4D;
with QtAda6.QtGui.QMatrix4x4;
with QtAda6.QtGui.QPixelFormat.TypeInterpretation;
with QtAda6.QtGui.QPixelFormat;
with QtAda6.QtGui.QPixelFormat.AlphaUsage;
with QtAda6.QtGui.QPixelFormat.AlphaPosition;
with QtAda6.QtGui.QPixelFormat.AlphaPremultiplied;
with QtAda6.QtGui.QPixelFormat.YUVLayout;
with QtAda6.QtGui.QPixelFormat.ByteOrder;
package body QtAda6.QtGui is
   function qAlpha (rgb_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qAlpha");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qAlpha;
   function qBlue (rgb_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qBlue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qBlue;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QQuaternion.Inst'Class; arg_2_P : access QtAda6.QtGui.QQuaternion.Inst'Class)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class; arg_2_P : access QtAda6.QtGui.QTransform.Inst'Class)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector2D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector2D.Inst'Class)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector3D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector3D.Inst'Class)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : access QtAda6.QtGui.QVector4D.Inst'Class; arg_2_P : access QtAda6.QtGui.QVector4D.Inst'Class)
      return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, arg_2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qFuzzyCompare
     (arg_1_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform;
      arg_2_P : Union_QtAda6_QtGui_QMatrix4x4_QtAda6_QtGui_QTransform) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qFuzzyCompare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qFuzzyCompare;
   function qGray (r_P : int; g_P : int; b_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qGray");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qGray;
   function qGray (rgb_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qGray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qGray;
   function qGreen (rgb_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qGreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qGreen;
   function qIsGray (rgb_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qIsGray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end qIsGray;
   function qPixelFormatAlpha
     (channelSize_P : int; typeInt_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatAlpha");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Tuple_SetItem (Args, 1, typeInt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatAlpha;
   function qPixelFormatCmyk
     (channelSize_P : int; alfa_P : int; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatCmyk");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Tuple_SetItem (Args, 1, Long_FromLong (alfa_P));
      Tuple_SetItem (Args, 2, usage_P.Python_Proxy);
      Tuple_SetItem (Args, 3, position_P.Python_Proxy);
      Tuple_SetItem (Args, 4, typeInt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatCmyk;
   function qPixelFormatGrayscale
     (channelSize_P : int; typeInt_P : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatGrayscale");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Tuple_SetItem (Args, 1, typeInt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatGrayscale;
   function qPixelFormatHsl
     (channelSize_P : int; alfa_P : int; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatHsl");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Tuple_SetItem (Args, 1, Long_FromLong (alfa_P));
      Tuple_SetItem (Args, 2, usage_P.Python_Proxy);
      Tuple_SetItem (Args, 3, position_P.Python_Proxy);
      Tuple_SetItem (Args, 4, typeInt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatHsl;
   function qPixelFormatHsv
     (channelSize_P : int; alfa_P : int; usage_P : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P    : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      typeInt_P     : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatHsv");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, Long_FromLong (channelSize_P));
      Tuple_SetItem (Args, 1, Long_FromLong (alfa_P));
      Tuple_SetItem (Args, 2, usage_P.Python_Proxy);
      Tuple_SetItem (Args, 3, position_P.Python_Proxy);
      Tuple_SetItem (Args, 4, typeInt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatHsv;
   function qPixelFormatRgba
     (red_P      : int; green_P : int; blue_P : int; alfa_P : int;
      usage_P    : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      pmul_P     : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class;
      typeInt_P  : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatRgba");
      Args   := Tuple_New (8);
      Tuple_SetItem (Args, 0, Long_FromLong (red_P));
      Tuple_SetItem (Args, 1, Long_FromLong (green_P));
      Tuple_SetItem (Args, 2, Long_FromLong (blue_P));
      Tuple_SetItem (Args, 3, Long_FromLong (alfa_P));
      Tuple_SetItem (Args, 4, usage_P.Python_Proxy);
      Tuple_SetItem (Args, 5, position_P.Python_Proxy);
      Tuple_SetItem (Args, 6, pmul_P.Python_Proxy);
      Tuple_SetItem (Args, 7, typeInt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatRgba;
   function qPixelFormatYuv
     (layout_P   : access QtAda6.QtGui.QPixelFormat.YUVLayout.Inst'Class; alfa_P : int;
      usage_P    : access QtAda6.QtGui.QPixelFormat.AlphaUsage.Inst'Class;
      position_P : access QtAda6.QtGui.QPixelFormat.AlphaPosition.Inst'Class;
      p_mul_P    : access QtAda6.QtGui.QPixelFormat.AlphaPremultiplied.Inst'Class;
      typeInt_P  : access QtAda6.QtGui.QPixelFormat.TypeInterpretation.Inst'Class;
      b_order_P  : access QtAda6.QtGui.QPixelFormat.ByteOrder.Inst'Class)
      return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qPixelFormatYuv");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, layout_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (alfa_P));
      Tuple_SetItem (Args, 2, usage_P.Python_Proxy);
      Tuple_SetItem (Args, 3, position_P.Python_Proxy);
      Tuple_SetItem (Args, 4, p_mul_P.Python_Proxy);
      Tuple_SetItem (Args, 5, typeInt_P.Python_Proxy);
      Tuple_SetItem (Args, 6, b_order_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end qPixelFormatYuv;
   function qRed (rgb_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qRed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (rgb_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qRed;
   function qRgb_F (r_P : int; g_P : int; b_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qRgb");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qRgb_F;
   function qRgba_F (r_P : int; g_P : int; b_P : int; a_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qRgba");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (r_P));
      Tuple_SetItem (Args, 1, Long_FromLong (g_P));
      Tuple_SetItem (Args, 2, Long_FromLong (b_P));
      Tuple_SetItem (Args, 3, Long_FromLong (a_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end qRgba_F;
   procedure qt_set_sequence_auto_mnemonic (b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "qt_set_sequence_auto_mnemonic");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end qt_set_sequence_auto_mnemonic;
end QtAda6.QtGui;
