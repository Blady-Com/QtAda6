-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimagereader.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QImageReader.ImageReaderError;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QImage.Format;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QImageIOHandler.ImageOption;
limited with QtAda6.QtGui.QImageIOHandler.Transformation;
package QtAda6.QtGui.QImageReader is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null)
      return Class;
   function Create (fileName_P : str; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null) return Class;
   function allocationLimit return int;
   function autoDetectImageFormat (self : access Inst) return bool;
   function autoTransform (self : access Inst) return bool;
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function canRead (self : access Inst) return bool;
   function clipRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function currentImageNumber (self : access Inst) return int;
   function currentImageRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function decideFormatFromContent (self : access Inst) return bool;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function error (self : access Inst) return access QtAda6.QtGui.QImageReader.ImageReaderError.Inst'Class;
   function errorString (self : access Inst) return str;
   function fileName (self : access Inst) return str;
   function format (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function imageCount (self : access Inst) return int;
   function imageFormat
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function imageFormat (fileName_P : str) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function imageFormat (self : access Inst) return access QtAda6.QtGui.QImage.Format.Inst'Class;
   function imageFormatsForMimeType
     (mimeType_P : UNION_QtAda6_QtCore_QByteArray_bytes) return LIST_QtAda6_QtCore_QByteArray;
   function jumpToImage (self : access Inst; imageNumber_P : int) return bool;
   function jumpToNextImage (self : access Inst) return bool;
   function loopCount (self : access Inst) return int;
   function nextImageDelay (self : access Inst) return int;
   function quality (self : access Inst) return int;
   function read (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   function scaledClipRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function scaledSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setAllocationLimit (mbLimit_P : int);
   procedure setAutoDetectImageFormat (self : access Inst; enabled_P : bool);
   procedure setAutoTransform (self : access Inst; enabled_P : bool);
   procedure setBackgroundColor
     (self    : access Inst;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setClipRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setDecideFormatFromContent (self : access Inst; ignored_P : bool);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setFormat (self : access Inst; format_P : UNION_QtAda6_QtCore_QByteArray_bytes);
   procedure setQuality (self : access Inst; quality_P : int);
   procedure setScaledClipRect (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure setScaledSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function subType_K (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function supportedImageFormats return LIST_QtAda6_QtCore_QByteArray;
   function supportedMimeTypes return LIST_QtAda6_QtCore_QByteArray;
   function supportedSubTypes (self : access Inst) return LIST_QtAda6_QtCore_QByteArray;
   function supportsAnimation (self : access Inst) return bool;
   function supportsOption
     (self : access Inst; option_P : access QtAda6.QtGui.QImageIOHandler.ImageOption.Inst'Class) return bool;
   function text (self : access Inst; key_P : str) return str;
   function textKeys (self : access Inst) return LIST_str;
   function transformation (self : access Inst) return access QtAda6.QtGui.QImageIOHandler.Transformation.Inst'Class;
end QtAda6.QtGui.QImageReader;
