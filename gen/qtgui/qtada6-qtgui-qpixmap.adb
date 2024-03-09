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
with QtAda6.QtCore.QSize;
with QtAda6.QtCore.Qt.ImageConversionFlag;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QBitmap;
with QtAda6.QtCore.Qt.MaskMode;
with QtAda6.QtCore.QSizeF;
with QtAda6.QtGui.QImageReader;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtGui.QPaintEngine;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.Qt.AspectRatioMode;
with QtAda6.QtCore.Qt.TransformationMode;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QTransform;
package body QtAda6.QtGui.QPixmap is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (arg_1_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (fileName_P : UNION_str_bytes_os_PathLike; format_P : bytes := "";
      flags_P    : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fileName_P /= null then fileName_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if format_P /= "" then
         Dict_SetItemString (Dict, "format", Bytes_FromString (String (format_P)));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (image_P : UNION_QtAda6_QtGui_QImage_str) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (w_P : int; h_P : int) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (xpm_P : Iterable) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if xpm_P /= null then xpm_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function cacheKey (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cacheKey");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end cacheKey;
   function convertFromImage
     (self    : access Inst; img_P : UNION_QtAda6_QtGui_QImage_str;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "convertFromImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if img_P /= null then img_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end convertFromImage;
   function copy
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if rect_P /= null then
         Dict_SetItemString (Dict, "rect", rect_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end copy;
   function copy
     (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "copy");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, Long_FromLong (x_P));
      Tuple_SetItem (Args, 1, Long_FromLong (y_P));
      Tuple_SetItem (Args, 2, Long_FromLong (width_P));
      Tuple_SetItem (Args, 3, Long_FromLong (height_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end copy;
   function createHeuristicMask
     (self : access Inst; clipTight_P : bool := False) return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createHeuristicMask");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if clipTight_P /= False then
         Dict_SetItemString (Dict, "clipTight", To_Python (clipTight_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createHeuristicMask;
   function createMaskFromColor
     (self        : access Inst;
      maskColor_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int;
      mode_P      : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null) return access QtAda6.QtGui.QBitmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QBitmap.Class := new QtAda6.QtGui.QBitmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createMaskFromColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if maskColor_P /= null then maskColor_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createMaskFromColor;
   function defaultDepth return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "defaultDepth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end defaultDepth;
   function depth (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "depth");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end depth;
   function devType (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devType");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end devType;
   function deviceIndependentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSizeF.Class := new QtAda6.QtCore.QSizeF.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "deviceIndependentSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end deviceIndependentSize;
   function devicePixelRatio (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "devicePixelRatio");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end devicePixelRatio;
   procedure fill
     (self        : access Inst;
      fillColor_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fill");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if fillColor_P /= null then
         Dict_SetItemString (Dict, "fillColor", fillColor_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end fill;
   function fromImage
     (image_P : UNION_QtAda6_QtGui_QImage_str; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "fromImage");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImage;
   function fromImageInPlace
     (image_P : UNION_QtAda6_QtGui_QImage_str; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "fromImageInPlace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if image_P /= null then image_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImageInPlace;
   function fromImageReader
     (imageReader_P : access QtAda6.QtGui.QImageReader.Inst'Class;
      flags_P       : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "fromImageReader");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if imageReader_P /= null then imageReader_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromImageReader;
   function hasAlpha (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAlpha");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasAlpha;
   function hasAlphaChannel (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasAlphaChannel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasAlphaChannel;
   function height (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "height");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end height;
   function isNull (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isNull;
   function isQBitmap (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isQBitmap");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isQBitmap;
   function load
     (self    : access Inst; fileName_P : str; format_P : bytes := "";
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "load");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if format_P /= "" then
         Dict_SetItemString (Dict, "format", Bytes_FromString (String (format_P)));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end load;
   function loadFromData
     (self    : access Inst; buf_P : bytes; format_P : bytes := "";
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (buf_P)));
      Dict := Dict_New;
      if format_P /= "" then
         Dict_SetItemString (Dict, "format", Bytes_FromString (String (format_P)));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end loadFromData;
   function loadFromData
     (self    : access Inst; data_P : UNION_QtAda6_QtCore_QByteArray_bytes; format_P : bytes := "";
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loadFromData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if data_P /= null then data_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if format_P /= "" then
         Dict_SetItemString (Dict, "format", Bytes_FromString (String (format_P)));
      end if;
      if flags_P /= null then
         Dict_SetItemString (Dict, "flags", flags_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end loadFromData;
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
   function metric
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end metric;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintEngine.Class := new QtAda6.QtGui.QPaintEngine.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "paintEngine");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end paintEngine;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rect;
   function save
     (self      : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : str := "";
      quality_P : int := 0) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if format_P /= "" then
         Dict_SetItemString (Dict, "format", Unicode_FromString (format_P));
      end if;
      if quality_P /= 0 then
         Dict_SetItemString (Dict, "quality", Long_FromLong (quality_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end save;
   function save (self : access Inst; fileName_P : str; format_P : str := ""; quality_P : int := 0) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "save");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if format_P /= "" then
         Dict_SetItemString (Dict, "format", Unicode_FromString (format_P));
      end if;
      if quality_P /= 0 then
         Dict_SetItemString (Dict, "quality", Long_FromLong (quality_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end save;
   function scaled
     (self         : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class    := null;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if s_P /= null then s_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if aspectMode_P /= null then
         Dict_SetItemString (Dict, "aspectMode", aspectMode_P.Python_Proxy);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaled
     (self         : access Inst; w_P : int; h_P : int;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class    := null;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaled");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict := Dict_New;
      if aspectMode_P /= null then
         Dict_SetItemString (Dict, "aspectMode", aspectMode_P.Python_Proxy);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaled;
   function scaledToHeight
     (self : access Inst; h_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledToHeight");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (h_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledToHeight;
   function scaledToWidth
     (self : access Inst; w_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scaledToWidth");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledToWidth;
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Tuple_SetItem (Args, 2, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if exposed_P /= null then
         Dict_SetItemString (Dict, "exposed", exposed_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end scroll;
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : UNION_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect_NoneType :=
        null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scroll");
      Args   := Tuple_New (6);
      Tuple_SetItem (Args, 0, Long_FromLong (dx_P));
      Tuple_SetItem (Args, 1, Long_FromLong (dy_P));
      Tuple_SetItem (Args, 2, Long_FromLong (x_P));
      Tuple_SetItem (Args, 3, Long_FromLong (y_P));
      Tuple_SetItem (Args, 4, Long_FromLong (width_P));
      Tuple_SetItem (Args, 5, Long_FromLong (height_P));
      Dict := Dict_New;
      if exposed_P /= null then
         Dict_SetItemString (Dict, "exposed", exposed_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end scroll;
   procedure setDevicePixelRatio (self : access Inst; scaleFactor_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevicePixelRatio");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (scaleFactor_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDevicePixelRatio;
   procedure setMask (self : access Inst; arg_1_P : UNION_QtAda6_QtGui_QBitmap_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMask");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setMask;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   procedure swap (self : access Inst; other_P : UNION_QtAda6_QtGui_QPixmap_QtAda6_QtGui_QImage_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function toImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "toImage");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end toImage;
   function transformed
     (self   : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformed;
   function trueMatrix
     (m_P : access QtAda6.QtGui.QTransform.Inst'Class; w_P : int; h_P : int)
      return access QtAda6.QtGui.QTransform.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTransform.Class := new QtAda6.QtGui.QTransform.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixmap");
      Method := Object_GetAttrString (Class, "trueMatrix");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (w_P));
      Tuple_SetItem (Args, 2, Long_FromLong (h_P));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end trueMatrix;
   function width (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "width");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end width;
end QtAda6.QtGui.QPixmap;
