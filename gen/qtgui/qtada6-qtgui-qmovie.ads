-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmovie.ads
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
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QMovie.CacheMode;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QImageReader.ImageReaderError;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QMovie.MovieState;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QMovie is
   type ClassVar_Signal is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is access Any;
   type List_QtAda6_QtCore_QByteArray is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   error        : ClassVar_Signal;-- error(QImageReader::ImageReaderError)
   finished     : ClassVar_Signal;-- finished()
   frameChanged : ClassVar_Signal;-- frameChanged(int)
   resized      : ClassVar_Signal;-- resized(QSize)
   started      : ClassVar_Signal;-- started()
   stateChanged : ClassVar_Signal;-- stateChanged(QMovie::MovieState)
   updated      : ClassVar_Signal;-- updated(QRect)
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : Union_QtAda6_QtCore_QByteArray_bytes;
      parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create
     (fileName_P : str; format_P : Union_QtAda6_QtCore_QByteArray_bytes; parent_P : Optional_QtAda6_QtCore_QObject)
      return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function cacheMode_F (self : access Inst) return access QtAda6.QtGui.QMovie.CacheMode.Inst'Class;
   function currentFrameNumber (self : access Inst) return int;
   function currentImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class;
   function currentPixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function fileName (self : access Inst) return str;
   function format (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function frameCount (self : access Inst) return int;
   function frameRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function isValid (self : access Inst) return bool;
   function jumpToFrame (self : access Inst; frameNumber_P : int) return bool;
   function jumpToNextFrame (self : access Inst) return bool;
   function lastError (self : access Inst) return access QtAda6.QtGui.QImageReader.ImageReaderError.Inst'Class;
   function lastErrorString (self : access Inst) return str;
   function loopCount (self : access Inst) return int;
   function nextFrameDelay (self : access Inst) return int;
   function scaledSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure setBackgroundColor
     (self    : access Inst;
      color_P : Union_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setCacheMode (self : access Inst; mode_P : access QtAda6.QtGui.QMovie.CacheMode.Inst'Class);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setFormat (self : access Inst; format_P : Union_QtAda6_QtCore_QByteArray_bytes);
   procedure setPaused (self : access Inst; paused_P : bool);
   procedure setScaledSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setSpeed (self : access Inst; percentSpeed_P : int);
   function speed (self : access Inst) return int;
   procedure start (self : access Inst);
   function state_F (self : access Inst) return access QtAda6.QtGui.QMovie.MovieState.Inst'Class;
   procedure stop (self : access Inst);
   function supportedFormats return List_QtAda6_QtCore_QByteArray;
end QtAda6.QtGui.QMovie;
