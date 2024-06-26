-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixmap.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.Qt.ImageConversionFlag;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtCore.Qt.MaskMode;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtCore.QSizeF;
limited with QtAda6.QtGui.QImageReader;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.Qt.AspectRatioMode;
limited with QtAda6.QtCore.Qt.TransformationMode;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QPolygon;
limited with QtAda6.QtGui.QTransform;
with QtAda6.QtGui.QPaintDevice;
package QtAda6.QtGui.QPixmap is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPaintDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QSize.Inst'Class) return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QPixmap.Inst'Class) return Class;
   function Create (arg_1_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
   function Create (arg_1_P : str) return Class;
   function Create
     (fileName_P : str; format_P : bytes := null;
      flags_P    : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return Class;
   function Create
     (fileName_P : bytes; format_P : bytes := null;
      flags_P    : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return Class;
   function Create
     (fileName_P : OS.PathLike; format_P : bytes := null;
      flags_P    : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return Class;
-- function Create(image_P : access QtAda6.QtGui.QImage.Inst'Class) return Class;
-- function Create(image_P : str) return Class;
   function Create (w_P : int; h_P : int) return Class;
   function Create (xpm_P : Iterable) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function cacheKey (self : access Inst) return int;
   function convertFromImage
     (self    : access Inst; img_P : access QtAda6.QtGui.QImage.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool;
   function convertFromImage
     (self : access Inst; img_P : str; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return bool;
   function copy
     (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function copy
     (self : access Inst; x_P : int; y_P : int; width_P : int; height_P : int)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function createHeuristicMask
     (self : access Inst; clipTight_P : bool := False) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function createMaskFromColor
     (self   : access Inst; maskColor_P : access QtAda6.QtGui.QColor.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function createMaskFromColor
     (self   : access Inst; maskColor_P : access QtAda6.QtGui.QRgba64.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function createMaskFromColor
     (self : access Inst; maskColor_P : Any; mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function createMaskFromColor
     (self   : access Inst; maskColor_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function createMaskFromColor
     (self : access Inst; maskColor_P : str; mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function createMaskFromColor
     (self : access Inst; maskColor_P : int; mode_P : access QtAda6.QtCore.Qt.MaskMode.Inst'Class := null)
      return access QtAda6.QtGui.QBitmap.Inst'Class;
   function defaultDepth return int;
   function depth (self : access Inst) return int;
   function devType (self : access Inst) return int;
   function deviceIndependentSize (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   function devicePixelRatio (self : access Inst) return float;
   procedure fill (self : access Inst; fillColor_P : access QtAda6.QtGui.QColor.Inst'Class := null);
   procedure fill (self : access Inst; fillColor_P : access QtAda6.QtGui.QRgba64.Inst'Class := null);
   procedure fill (self : access Inst; fillColor_P : Any := null);
   procedure fill (self : access Inst; fillColor_P : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class := null);
   procedure fill (self : access Inst; fillColor_P : str := "");
   procedure fill (self : access Inst; fillColor_P : int := 0);
   function fromImage
     (image_P : access QtAda6.QtGui.QImage.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function fromImage
     (image_P : str; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function fromImageInPlace
     (image_P : access QtAda6.QtGui.QImage.Inst'Class;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function fromImageInPlace
     (image_P : str; flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function fromImageReader
     (imageReader_P : access QtAda6.QtGui.QImageReader.Inst'Class;
      flags_P       : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function hasAlpha (self : access Inst) return bool;
   function hasAlphaChannel (self : access Inst) return bool;
   function height (self : access Inst) return int;
   function isNull (self : access Inst) return bool;
   function isQBitmap (self : access Inst) return bool;
   function load
     (self    : access Inst; fileName_P : str; format_P : bytes := null;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool;
   function loadFromData
     (self    : access Inst; buf_P : bytes; format_P : bytes := null;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool;
   function loadFromData
     (self    : access Inst; data_P : access QtAda6.QtCore.QByteArray.Inst'Class; format_P : bytes := null;
      flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool;
-- function loadFromData(self : access Inst;data_P : bytes;format_P : bytes := null;flags_P : access QtAda6.QtCore.Qt.ImageConversionFlag.Inst'Class := null) return bool;
   function mask (self : access Inst) return access QtAda6.QtGui.QBitmap.Inst'Class;
   function metric
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function save
     (self      : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : str := "";
      quality_P : int := 0) return bool;
   function save (self : access Inst; fileName_P : str; format_P : str := ""; quality_P : int := 0) return bool;
   function scaled
     (self         : access Inst; s_P : access QtAda6.QtCore.QSize.Inst'Class;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class    := null;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function scaled
     (self         : access Inst; w_P : int; h_P : int;
      aspectMode_P : access QtAda6.QtCore.Qt.AspectRatioMode.Inst'Class    := null;
      mode_P       : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function scaledToHeight
     (self : access Inst; h_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function scaledToWidth
     (self : access Inst; w_P : int; mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : access QtAda6.QtGui.QRegion.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : access QtAda6.QtGui.QBitmap.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : access QtAda6.QtGui.QPolygon.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : access QtAda6.QtCore.QRect.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; rect_P : access QtAda6.QtCore.QRect.Inst'Class;
      exposed_P : NoneType := NoneType_default_is_not_supported);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : access QtAda6.QtGui.QRegion.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : access QtAda6.QtGui.QBitmap.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : access QtAda6.QtGui.QPolygon.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : access QtAda6.QtCore.QRect.Inst'Class := null);
   procedure scroll
     (self      : access Inst; dx_P : int; dy_P : int; x_P : int; y_P : int; width_P : int; height_P : int;
      exposed_P : NoneType := NoneType_default_is_not_supported);
   procedure setDevicePixelRatio (self : access Inst; scaleFactor_P : float);
   procedure setMask (self : access Inst; arg_1_P : access QtAda6.QtGui.QBitmap.Inst'Class);
   procedure setMask (self : access Inst; arg_1_P : str);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QPixmap.Inst'Class);
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QImage.Inst'Class);
   procedure swap (self : access Inst; other_P : str);
   function toImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   function transformed
     (self   : access Inst; arg_1_P : access QtAda6.QtGui.QTransform.Inst'Class;
      mode_P : access QtAda6.QtCore.Qt.TransformationMode.Inst'Class := null)
      return access QtAda6.QtGui.QPixmap.Inst'Class;
   function trueMatrix
     (m_P : access QtAda6.QtGui.QTransform.Inst'Class; w_P : int; h_P : int)
      return access QtAda6.QtGui.QTransform.Inst'Class;
   function width (self : access Inst) return int;
end QtAda6.QtGui.QPixmap;
