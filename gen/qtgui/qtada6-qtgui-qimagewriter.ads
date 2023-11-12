-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimagewriter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QImageWriter.ImageWriterError;
limited with QtAda6.QtGui.QImageIOHandler.Transformation;
limited with QtAda6.QtGui.QImageIOHandler.ImageOption;
limited with QtAda6.QtGui.QImage;
package QtAda6.QtGui.QImageWriter is
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type List_QtAda6_QtCore_QByteArray is access Any;
   type Union_QtAda6_QtGui_QImage_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : Union_QtAda6_QtCore_QByteArray_bytes)
      return Class;
   function Create (fileName_P : str; format_P : Union_QtAda6_QtCore_QByteArray_bytes) return Class;
   function canWrite (self : access Inst) return bool;
   function compression (self : access Inst) return int;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function error_F (self : access Inst) return access QtAda6.QtGui.QImageWriter.ImageWriterError.Inst'Class;
   function errorString (self : access Inst) return str;
   function fileName (self : access Inst) return str;
   function format (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function imageFormatsForMimeType
     (mimeType_P : Union_QtAda6_QtCore_QByteArray_bytes) return List_QtAda6_QtCore_QByteArray;
   function optimizedWrite (self : access Inst) return bool;
   function progressiveScanWrite (self : access Inst) return bool;
   function quality (self : access Inst) return int;
   procedure setCompression (self : access Inst; compression_P : int);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setFormat (self : access Inst; format_P : Union_QtAda6_QtCore_QByteArray_bytes);
   procedure setOptimizedWrite (self : access Inst; optimize_P : bool);
   procedure setProgressiveScanWrite (self : access Inst; progressive_P : bool);
   procedure setQuality (self : access Inst; quality_P : int);
   procedure setSubType (self : access Inst; type_K_P : Union_QtAda6_QtCore_QByteArray_bytes);
   procedure setText (self : access Inst; key_P : str; text_P : str);
   procedure setTransformation
     (self : access Inst; orientation_P : access QtAda6.QtGui.QImageIOHandler.Transformation.Inst'Class);
   function subType_K (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function supportedImageFormats return List_QtAda6_QtCore_QByteArray;
   function supportedMimeTypes return List_QtAda6_QtCore_QByteArray;
   function supportedSubTypes (self : access Inst) return List_QtAda6_QtCore_QByteArray;
   function supportsOption
     (self : access Inst; option_P : access QtAda6.QtGui.QImageIOHandler.ImageOption.Inst'Class) return bool;
   function transformation (self : access Inst) return access QtAda6.QtGui.QImageIOHandler.Transformation.Inst'Class;
   function write_F (self : access Inst; image_P : Union_QtAda6_QtGui_QImage_str) return bool;
end QtAda6.QtGui.QImageWriter;
