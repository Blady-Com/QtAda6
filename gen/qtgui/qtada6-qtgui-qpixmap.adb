-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpixmap.adb
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
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QImage;
with QtAda6.QtCore.Qt.ImageConversionFlag;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QRgba64;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtCore.Qt.MaskMode;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtGui.QImageReader;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.Qt.AspectRatioMode;
with QtAda6.QtCore.Qt.TransformationMode;
with QtAda6.QtGui.QRegion;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtGui.QTransform;
package body QtAda6.QtGui.QPixmap is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (arg_1_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (fileName_P : UNION_strbytesos_PathLike; format_P : bytes := "";
      flags_P    : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if fileName_P /= null then fileName_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (format_P)));
      Tuple_SetItem (Args, 2, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (image_P : UNION_QtAda6_QtGui_QImagestr) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (w_P : int; h_P : int) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (xpm_P : Iterable) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if xpm_P /= null then xpm_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function cacheKey (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cacheKey");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end cacheKey;
   function convertFromImage
     (self    : access Inst; img_P : UNION_QtAda6_QtGui_QImagestr;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertFromImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if img_P /= null then img_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end convertFromImage;
   function copy
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end copy;
   function copy
     (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end copy;
   function createHeuristicMask
     (self : access Inst; clipTight_P : bool := False) return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createHeuristicMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (clipTight_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createHeuristicMask;
   function createMaskFromColor
     (self        : access Inst;
      maskColor_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint;
      mode_P      : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null) return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createMaskFromColor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if maskColor_P /= null then maskColor_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createMaskFromColor;
   function defaultDepth return int is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "defaultDepth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end defaultDepth;
   function depth (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "depth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end depth;
   function devType (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devType");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end devType;
   function deviceIndependentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "deviceIndependentSize");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deviceIndependentSize;
   function devicePixelRatio (self : access Inst) return float is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devicePixelRatio");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end devicePixelRatio;
   procedure fill
     (self        : access Inst;
      fillColor_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint := null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fillColor_P /= null then fillColor_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end fill;
   function fromImage
     (image_P : UNION_QtAda6_QtGui_QImagestr; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "fromImage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImage;
   function fromImageInPlace
     (image_P : UNION_QtAda6_QtGui_QImagestr; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "fromImageInPlace");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImageInPlace;
   function fromImageReader
     (imageReader_P : access QtAda6.QtGui.QImageReader.Inst'Class;
      flags_P       : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "fromImageReader");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if imageReader_P /= null then imageReader_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImageReader;
   function hasAlpha (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAlpha");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAlpha;
   function hasAlphaChannel (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAlphaChannel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end hasAlphaChannel;
   function height (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end height;
   function isNull (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isQBitmap (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isQBitmap");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isQBitmap;
   function load
     (self    : access Inst; fileName_P : str; format_P : bytes := "";
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (format_P)));
      Tuple_SetItem (Args, 2, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end load;
   function loadFromData
     (self    : access Inst; buf_P : bytes; format_P : bytes := "";
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (buf_P)));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (format_P)));
      Tuple_SetItem (Args, 2, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end loadFromData;
   function loadFromData
     (self    : access Inst; data_P : UNION_QtAda6_QtCore_QByteArraybytes; format_P : bytes := "";
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Bytes_FromString (String (format_P)));
      Tuple_SetItem (Args, 2, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end loadFromData;
   function mask (self : access Inst) return access QtAda6.QtGui.QBitmap.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mask");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mask;
   function metric
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end metric;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintEngine");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintEngine;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function save
     (self      : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : str := "";
      quality_P : int := 0) return bool
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, Long_FromLong (quality_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end save;
   function save (self : access Inst; fileName_P : str; format_P : str := ""; quality_P : int := 0) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (format_P));
      Tuple_SetItem (Args, 2, Long_FromLong (quality_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end save;
   function scaled
     (self         : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class    := null;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if s_P /= null then s_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if aspectMode_P /= null then aspectMode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaled
     (self         : access Inst; w_P : int; h_P : int;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class    := null;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Tuple_SetItem (Args, 2, (if aspectMode_P /= null then aspectMode_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaledToHeight
     (self : access Inst; h_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledToHeight");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledToHeight;
   function scaledToWidth
     (self : access Inst; w_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledToWidth");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledToWidth;
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRectNoneType :=
        null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if exposed_P /= null then exposed_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end scroll;
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : UNION_QtAda6_QtGui_QRegionQtAda6_QtGui_QBitmapQtAda6_QtGui_QPolygonQtAda6_QtCore_QRectNoneType :=
        null)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (7);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Tuple_SetItem (Args, 2, Long_FromLong (x_P));
      Tuple_SetItem (Args, 3, Long_FromLong (y_P));
      Tuple_SetItem (Args, 4, Long_FromLong (width_P));
      Tuple_SetItem (Args, 5, Long_FromLong (height_P));
      Tuple_SetItem (Args, 6, (if exposed_P /= null then exposed_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end scroll;
   procedure setDevicePixelRatio (self : access Inst; scaleFactor_P : float) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevicePixelRatio");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (scaleFactor_P));
      Result := Object_CallObject (Method, Args, True);
   end setDevicePixelRatio;
   procedure setMask (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QBitmapstr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMask;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QPixmapQtAda6_QtGui_QImagestr) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
   function toImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toImage");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toImage;
   function transformed
     (self   : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformed");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformed;
   function trueMatrix
     (m_P : access QtAda6.QtGui.QTransform.Inst'Class; w_P : int; h_P : int)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "trueMatrix");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (w_P));
      Tuple_SetItem (Args, 2, Long_FromLong (h_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end trueMatrix;
   function width (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end width;
end QtAda6.QtGui.QPixmap;
