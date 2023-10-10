-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qimage.adb
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
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtGui.QImage.Format;
with OS.PathLike;
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtGui.QColorTransform;
with QtAda6.QtGui.QColorSpace;
with QtAda6.QtCore.Qt.ImageConversionFlag;
with QtAda6.QtGui.QColorSpace.NamedColorSpace;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.Qt.MaskMode;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QImage.InvertMode;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtGui.QPixelFormat;
with QtAda6.QtCore.Qt.AspectRatioMode;
with QtAda6.QtCore.Qt.TransformationMode;
with QtAda6.QtGui.QTransform;
package body QtAda6.QtGui.QImage is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (arg_1_P : str; arg_2_P : int; arg_3_P : int; arg_4_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Tuple_SetItem (Args, 2, Long_FromLong (arg_3_P));
      Tuple_SetItem (Args, 3, arg_4_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (arg_1_P : str; arg_2_P : int; arg_3_P : int; arg_4_P : int;
      arg_5_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, Unicode_FromString (arg_1_P));
      Tuple_SetItem (Args, 1, Long_FromLong (arg_2_P));
      Tuple_SetItem (Args, 2, Long_FromLong (arg_3_P));
      Tuple_SetItem (Args, 3, Long_FromLong (arg_4_P));
      Tuple_SetItem (Args, 4, arg_5_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : Union_QtAda6_QtGui_QImage_str) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (data_P        : bytes; width_P : int; height_P : int; bytesPerLine_P : int;
      format_P      : access QtAda6.QtGui.QImage.Format.Inst'Class; cleanupFunction_P : Optional_Callable;
      cleanupInfo_P : Optional_int) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (width_P));
      Tuple_SetItem (Args, 2, Long_FromLong (height_P));
      Tuple_SetItem (Args, 3, Long_FromLong (bytesPerLine_P));
      Tuple_SetItem (Args, 4, format_P.Python_Proxy);
      Tuple_SetItem (Args, 5, No_Value);
      Tuple_SetItem (Args, 6, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (data_P            : bytes; width_P : int; height_P : int; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      cleanupFunction_P : Optional_Callable; cleanupInfo_P : Optional_int) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (6);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (width_P));
      Tuple_SetItem (Args, 2, Long_FromLong (height_P));
      Tuple_SetItem (Args, 3, format_P.Python_Proxy);
      Tuple_SetItem (Args, 4, No_Value);
      Tuple_SetItem (Args, 5, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (fileName_P : Union_str_bytes_os_PathLike; format_P : Optional_bytes) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (size_P : access QtAda6.QtCore.QSize.Inst'Class; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, size_P.Python_Proxy);
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (width_P : int; height_P : int; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (width_P));
      Tuple_SetItem (Args, 1, Long_FromLong (height_P));
      Tuple_SetItem (Args, 2, format_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (xpm_P : Iterable) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Iterable_conv_A2P_is_not_supported);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function allGray (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allGray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end allGray;
   procedure applyColorTransform (self : access Inst; transform_P : access QtAda6.QtGui.QColorTransform.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "applyColorTransform");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, transform_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end applyColorTransform;
   function bitPlaneCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bitPlaneCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bitPlaneCount;
   function bits (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bits");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end bits;
   function bytesPerLine (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bytesPerLine");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bytesPerLine;
   function cacheKey (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cacheKey");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cacheKey;
   function color (self : access Inst; i_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "color");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end color;
   function colorCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "colorCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end colorCount;
   function colorSpace (self : access Inst) return access QtAda6.QtGui.QColorSpace.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "colorSpace");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end colorSpace;
   function colorTable (self : access Inst) return List_int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "colorTable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end colorTable;
   function colorTransformed
     (self : access Inst; transform_P : access QtAda6.QtGui.QColorTransform.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "colorTransformed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, transform_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end colorTransformed;
   function constBits (self : access Inst) return bytes is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "constBits");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end constBits;
   function constScanLine (self : access Inst; arg_1_P : int) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "constScanLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end constScanLine;
   procedure convertTo
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end convertTo;
   procedure convertToColorSpace
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertToColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end convertToColorSpace;
   function convertToFormat
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class; colorTable_P : Sequence_int;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertToFormat");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, flags_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end convertToFormat;
   function convertToFormat
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertToFormat");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end convertToFormat;
   function convertToFormat_helper
     (self    : access Inst; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertToFormat_helper");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end convertToFormat_helper;
   function convertToFormat_inplace
     (self    : access Inst; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertToFormat_inplace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end convertToFormat_inplace;
   function convertedTo
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertedTo");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Tuple_SetItem (Args, 1, flags_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end convertedTo;
   function convertedToColorSpace
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertedToColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end convertedToColorSpace;
   function copy
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, rect_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end copy;
   function copy
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (w_P));
      Tuple_SetItem (Args, 3, Long_FromLong (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end copy;
   function createAlphaMask
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createAlphaMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createAlphaMask;
   function createHeuristicMask (self : access Inst; clipTight_P : bool) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createHeuristicMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (clipTight_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createHeuristicMask;
   function createMaskFromColor
     (self : access Inst; color_P : int; mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createMaskFromColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (color_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createMaskFromColor;
   function depth (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "depth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end depth;
   procedure detachMetadata (self : access Inst; invalidateCache_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "detachMetadata");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (invalidateCache_P));
      Result := Object_CallObject (Method, Args, True);
   end detachMetadata;
   function devType (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end devType;
   function deviceIndependentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "deviceIndependentSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deviceIndependentSize;
   function devicePixelRatio (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devicePixelRatio");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end devicePixelRatio;
   function dotsPerMeterX (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dotsPerMeterX");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dotsPerMeterX;
   function dotsPerMeterY (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dotsPerMeterY");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dotsPerMeterY;
   procedure fill (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, color_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end fill;
   procedure fill
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end fill;
   procedure fill (self : access Inst; pixel_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pixel_P));
      Result := Object_CallObject (Method, Args, True);
   end fill;
   function format_F (self : access Inst) return access QtAda6.QtGui.QImage.Format.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Format.Class := new QtAda6.QtGui.QImage.Format.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format_F;
   function fromData
     (data_P : Union_QtAda6_QtCore_QByteArray_bytes; format_P : Optional_bytes)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Method := Object_GetAttrString (Class, "fromData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromData;
   function hasAlphaChannel (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAlphaChannel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAlphaChannel;
   function height (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end height;
   procedure invertPixels (self : access Inst; mode_P : access QtAda6.QtGui.QImage.InvertMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "invertPixels");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end invertPixels;
   function isGrayscale (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isGrayscale");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isGrayscale;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function load
     (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : bytes) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Bytes_FromString (String (format_P)));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function load (self : access Inst; fileName_P : str; format_P : Optional_bytes) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function loadFromData
     (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes; format_P : Optional_bytes) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end loadFromData;
   function metric
     (self : access Inst; metric_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, metric_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end metric;
   procedure mirror (self : access Inst; horizontally_P : bool; vertically_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mirror");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, To_Python (horizontally_P));
      Tuple_SetItem (Args, 1, To_Python (vertically_P));
      Result := Object_CallObject (Method, Args, True);
   end mirror;
   function mirrored
     (self : access Inst; horizontally_P : bool; vertically_P : bool) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mirrored");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, To_Python (horizontally_P));
      Tuple_SetItem (Args, 1, To_Python (vertically_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mirrored;
   function mirrored_helper
     (self : access Inst; horizontal_P : bool; vertical_P : bool) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mirrored_helper");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, To_Python (horizontal_P));
      Tuple_SetItem (Args, 1, To_Python (vertical_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mirrored_helper;
   procedure mirrored_inplace (self : access Inst; horizontal_P : bool; vertical_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mirrored_inplace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, To_Python (horizontal_P));
      Tuple_SetItem (Args, 1, To_Python (vertical_P));
      Result := Object_CallObject (Method, Args, True);
   end mirrored_inplace;
   function offset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QPoint.Class := new QtAda6.QtCore.QPoint.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "offset");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end offset;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintEngine");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintEngine;
   function pixel (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, pt_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixel;
   function pixel (self : access Inst; x_P : int; y_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixel");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixel;
   function pixelColor
     (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, pt_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelColor;
   function pixelColor (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelColor;
   function pixelFormat (self : access Inst) return access QtAda6.QtGui.QPixelFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "pixelFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end pixelFormat;
   function pixelIndex (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, pt_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixelIndex;
   function pixelIndex (self : access Inst; x_P : int; y_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pixelIndex");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pixelIndex;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function reinterpretAsFormat (self : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reinterpretAsFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, f_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end reinterpretAsFormat;
   procedure rgbSwap (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rgbSwap");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end rgbSwap;
   function rgbSwapped (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rgbSwapped");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rgbSwapped;
   function rgbSwapped_helper (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rgbSwapped_helper");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rgbSwapped_helper;
   procedure rgbSwapped_inplace (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rgbSwapped_inplace");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end rgbSwapped_inplace;
   function save
     (self      : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : Optional_bytes;
      quality_P : int) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Long_FromLong (quality_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end save;
   function save (self : access Inst; fileName_P : str; format_P : Optional_bytes; quality_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, No_Value);
      Tuple_SetItem (Args, 2, Long_FromLong (quality_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end save;
   function scaled
     (self         : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Tuple_SetItem (Args, 1, aspectMode_P.Python_Proxy);
      Tuple_SetItem (Args, 2, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaled
     (self   : access Inst; w_P : int; h_P : int; aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Tuple_SetItem (Args, 2, aspectMode_P.Python_Proxy);
      Tuple_SetItem (Args, 3, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaledToHeight
     (self : access Inst; h_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledToHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledToHeight;
   function scaledToWidth
     (self : access Inst; w_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledToWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledToWidth;
   function scanLine (self : access Inst; arg_1_P : int) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scanLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end scanLine;
   procedure setAlphaChannel (self : access Inst; alphaChannel_P : Union_QtAda6_QtGui_QImage_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlphaChannel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setAlphaChannel;
   procedure setColor (self : access Inst; i_P : int; c_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (i_P));
      Tuple_SetItem (Args, 1, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
   end setColor;
   procedure setColorCount (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setColorCount;
   procedure setColorSpace
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setColorSpace;
   procedure setColorTable (self : access Inst; colors_P : Sequence_int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColorTable");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setColorTable;
   procedure setDevicePixelRatio (self : access Inst; scaleFactor_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevicePixelRatio");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (scaleFactor_P));
      Result := Object_CallObject (Method, Args, True);
   end setDevicePixelRatio;
   procedure setDotsPerMeterX (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDotsPerMeterX");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setDotsPerMeterX;
   procedure setDotsPerMeterY (self : access Inst; arg_1_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDotsPerMeterY");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (arg_1_P));
      Result := Object_CallObject (Method, Args, True);
   end setDotsPerMeterY;
   procedure setOffset (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOffset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOffset;
   procedure setPixel (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class; index_or_rgb_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixel");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, pt_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (index_or_rgb_P));
      Result := Object_CallObject (Method, Args, True);
   end setPixel;
   procedure setPixel (self : access Inst; x_P : int; y_P : int; index_or_rgb_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixel");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (index_or_rgb_P));
      Result := Object_CallObject (Method, Args, True);
   end setPixel;
   procedure setPixelColor
     (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      c_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixelColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, pt_P.Python_Proxy);
      Tuple_SetItem (Args, 1, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPixelColor;
   procedure setPixelColor
     (self : access Inst; x_P : int; y_P : int;
      c_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPixelColor");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setPixelColor;
   procedure setText (self : access Inst; key_P : str; value_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (value_P));
      Result := Object_CallObject (Method, Args, True);
   end setText;
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
   function sizeInBytes (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sizeInBytes");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sizeInBytes;
   function smoothScaled (self : access Inst; w_P : int; h_P : int) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "smoothScaled");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end smoothScaled;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtGui_QImage_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function text (self : access Inst; key_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "text");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (key_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
   function textKeys (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textKeys");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end textKeys;
   function toImageFormat
     (format_P : access QtAda6.QtGui.QPixelFormat.Inst'Class) return access QtAda6.QtGui.QImage.Format.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QImage.Format.Class := new QtAda6.QtGui.QImage.Format.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Method := Object_GetAttrString (Class, "toImageFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toImageFormat;
   function toPixelFormat
     (format_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return access QtAda6.QtGui.QPixelFormat.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QPixelFormat.Class := new QtAda6.QtGui.QPixelFormat.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Method := Object_GetAttrString (Class, "toPixelFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toPixelFormat;
   function transformed
     (self   : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformed");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, matrix_P.Python_Proxy);
      Tuple_SetItem (Args, 1, mode_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformed;
   function trueMatrix
     (arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class; w_P : int; h_P : int)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Method := Object_GetAttrString (Class, "trueMatrix");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, arg_1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (w_P));
      Tuple_SetItem (Args, 2, Long_FromLong (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end trueMatrix;
   function valid (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valid");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, pt_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end valid;
   function valid (self : access Inst; x_P : int; y_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valid");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end valid;
   function width (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end width;
end QtAda6.QtGui.QImage;
