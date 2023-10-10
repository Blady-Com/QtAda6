-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimage.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QImage.Format;
limited with OS.PathLike;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtGui.QColorTransform;
limited with QtAda6.QtGui.QColorSpace;
limited with QtAda6.QtCore.Qt.ImageConversionFlag;
limited with QtAda6.QtGui.QColorSpace.NamedColorSpace;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtCore.Qt.MaskMode;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QImage.InvertMode;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtGui.QPixelFormat;
limited with QtAda6.QtCore.Qt.AspectRatioMode;
limited with QtAda6.QtCore.Qt.TransformationMode;
limited with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QPaintDevice;
package QtAda6.QtGui.QImage is
   type Union_QtAda6_QtGui_QImage_str is access Any;
   type Optional_Callable is access Any;
   type Optional_int is access Any;
   type Union_str_bytes_os_PathLike is access Any;
   type Optional_bytes is access Any;
   type List_int is access Any;
   type Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace is access Any;
   type Sequence_int is access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type List_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QPaintDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (arg_1_P : str; arg_2_P : int; arg_3_P : int; arg_4_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return Class;
   function Create
     (arg_1_P : str; arg_2_P : int; arg_3_P : int; arg_4_P : int;
      arg_5_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return Class;
   function Create (arg_1_P : Union_QtAda6_QtGui_QImage_str) return Class;
   function Create
     (data_P        : bytes; width_P : int; height_P : int; bytesPerLine_P : int;
      format_P      : access QtAda6.QtGui.QImage.Format.Inst'Class; cleanupFunction_P : Optional_Callable;
      cleanupInfo_P : Optional_int) return Class;
   function Create
     (data_P            : bytes; width_P : int; height_P : int; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      cleanupFunction_P : Optional_Callable; cleanupInfo_P : Optional_int) return Class;
   function Create (fileName_P : Union_str_bytes_os_PathLike; format_P : Optional_bytes) return Class;
   function Create
     (size_P : access QtAda6.QtCore.QSize.Inst'Class; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class)
      return Class;
   function Create
     (width_P : int; height_P : int; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return Class;
   function Create (xpm_P : Iterable) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function allGray (self : access Inst) return bool;
   procedure applyColorTransform (self : access Inst; transform_P : access QtAda6.QtGui.QColorTransform.Inst'Class);
   function bitPlaneCount (self : access Inst) return int;
   function bits (self : access Inst) return bytes;
   function bytesPerLine (self : access Inst) return int;
   function cacheKey (self : access Inst) return int;
   function color (self : access Inst; i_P : int) return int;
   function colorCount (self : access Inst) return int;
   function colorSpace (self : access Inst) return access QtAda6.QtGui.QColorSpace.Inst'Class;
   function colorTable (self : access Inst) return List_int;
   function colorTransformed
     (self : access Inst; transform_P : access QtAda6.QtGui.QColorTransform.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function constBits (self : access Inst) return bytes;
   function constScanLine (self : access Inst; arg_1_P : int) return Object;
   procedure convertTo
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class);
   procedure convertToColorSpace
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace);
   function convertToFormat
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class; colorTable_P : Sequence_int;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function convertToFormat
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function convertToFormat_helper
     (self    : access Inst; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function convertToFormat_inplace
     (self    : access Inst; format_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return bool;
   function convertedTo
     (self    : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function convertedToColorSpace
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function copy
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function copy
     (self : access Inst; x_P : int; y_P : int; w_P : int; h_P : int) return access QtAda6.QtGui.QImage.Inst'Class;
   function createAlphaMask
     (self : access Inst; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function createHeuristicMask (self : access Inst; clipTight_P : bool) return access QtAda6.QtGui.QImage.Inst'Class;
   function createMaskFromColor
     (self : access Inst; color_P : int; mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function depth (self : access Inst) return int;
   procedure detachMetadata (self : access Inst; invalidateCache_P : bool);
   function devType (self : access Inst) return int;
   function deviceIndependentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function devicePixelRatio (self : access Inst) return float;
   function dotsPerMeterX (self : access Inst) return int;
   function dotsPerMeterY (self : access Inst) return int;
   procedure fill (self : access Inst; color_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class);
   procedure fill
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure fill (self : access Inst; pixel_P : int);
   function format_F (self : access Inst) return access QtAda6.QtGui.QImage.Format.Inst'Class;
   function fromData
     (data_P : Union_QtAda6_QtCore_QByteArray_bytes; format_P : Optional_bytes)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function hasAlphaChannel (self : access Inst) return bool;
   function height (self : access Inst) return int;
   procedure invertPixels (self : access Inst; mode_P : access QtAda6.QtGui.QImage.InvertMode.Inst'Class);
   function isGrayscale (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function load
     (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : bytes) return bool;
   function load (self : access Inst; fileName_P : str; format_P : Optional_bytes) return bool;
   function loadFromData
     (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes; format_P : Optional_bytes) return bool;
   function metric
     (self : access Inst; metric_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   procedure mirror (self : access Inst; horizontally_P : bool; vertically_P : bool);
   function mirrored
     (self : access Inst; horizontally_P : bool; vertically_P : bool) return access QtAda6.QtGui.QImage.Inst'Class;
   function mirrored_helper
     (self : access Inst; horizontal_P : bool; vertical_P : bool) return access QtAda6.QtGui.QImage.Inst'Class;
   procedure mirrored_inplace (self : access Inst; horizontal_P : bool; vertical_P : bool);
   function offset (self : access Inst) return access QtAda6.QtCore.QPoint.Inst'Class;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   function pixel (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   function pixel (self : access Inst; x_P : int; y_P : int) return int;
   function pixelColor
     (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return access QtAda6.QtGui.QColor.Inst'Class;
   function pixelColor (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtGui.QColor.Inst'Class;
   function pixelFormat (self : access Inst) return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function pixelIndex (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return int;
   function pixelIndex (self : access Inst; x_P : int; y_P : int) return int;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function reinterpretAsFormat (self : access Inst; f_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return bool;
   procedure rgbSwap (self : access Inst);
   function rgbSwapped (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   function rgbSwapped_helper (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   procedure rgbSwapped_inplace (self : access Inst);
   function save
     (self      : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : Optional_bytes;
      quality_P : int) return bool;
   function save (self : access Inst; fileName_P : str; format_P : Optional_bytes; quality_P : int) return bool;
   function scaled
     (self         : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function scaled
     (self   : access Inst; w_P : int; h_P : int; aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function scaledToHeight
     (self : access Inst; h_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function scaledToWidth
     (self : access Inst; w_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class)
      return access QtAda6.QtGui.QImage.Inst'Class;
   function scanLine (self : access Inst; arg_1_P : int) return Object;
   procedure setAlphaChannel (self : access Inst; alphaChannel_P : Union_QtAda6_QtGui_QImage_str);
   procedure setColor (self : access Inst; i_P : int; c_P : int);
   procedure setColorCount (self : access Inst; arg_1_P : int);
   procedure setColorSpace
     (self : access Inst; arg_1_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace);
   procedure setColorTable (self : access Inst; colors_P : Sequence_int);
   procedure setDevicePixelRatio (self : access Inst; scaleFactor_P : float);
   procedure setDotsPerMeterX (self : access Inst; arg_1_P : int);
   procedure setDotsPerMeterY (self : access Inst; arg_1_P : int);
   procedure setOffset (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class);
   procedure setPixel (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class; index_or_rgb_P : int);
   procedure setPixel (self : access Inst; x_P : int; y_P : int; index_or_rgb_P : int);
   procedure setPixelColor
     (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class;
      c_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setPixelColor
     (self : access Inst; x_P : int; y_P : int;
      c_P  : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setText (self : access Inst; key_P : str; value_P : str);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function sizeInBytes (self : access Inst) return int;
   function smoothScaled (self : access Inst; w_P : int; h_P : int) return access QtAda6.QtGui.QImage.Inst'Class;
   procedure swap (self : access Inst; other_P : Union_QtAda6_QtGui_QImage_str);
   function text (self : access Inst; key_P : str) return str;
   function textKeys (self : access Inst) return List_str;
   function toImageFormat
     (format_P : access QtAda6.QtGui.QPixelFormat.Inst'Class) return access QtAda6.QtGui.QImage.Format.Inst'Class;
   function toPixelFormat
     (format_P : access QtAda6.QtGui.QImage.Format.Inst'Class) return access QtAda6.QtGui.QPixelFormat.Inst'Class;
   function transformed
     (self   : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class) return access QtAda6.QtGui.QImage.Inst'Class;
   function trueMatrix
     (arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class; w_P : int; h_P : int)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function valid (self : access Inst; pt_P : access QtAda6.QtCore.QPoint.Inst'Class) return bool;
   function valid (self : access Inst; x_P : int; y_P : int) return bool;
   function width (self : access Inst) return int;
end QtAda6.QtGui.QImage;
