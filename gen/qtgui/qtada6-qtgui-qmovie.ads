-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmovie.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QMovie.CacheMode;
limited with QtAda6.QtGui.QImage;
limited with QtAda6.QtGui.QPixmap;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QImageReader.ImageReaderError;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMovie.MovieState;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QMovie is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   type UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int is new Any;
   subtype LIST_QtAda6_QtCore_QByteArray is QtAda6.QtCore.QByteArray.Class_Array;
   procedure Finalize (Self : in out Class);
   function error
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- error(QImageReader::ImageReaderError)
   function finished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- finished()
   function frameChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- frameChanged(int)
   function resized (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- resized(QSize)
   function started (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- started()
   function stateChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- stateChanged(QMovie::MovieState)
   function updated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- updated(QRect)
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create
     (fileName_P : str; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null;
      parent_P   : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
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
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int);
   procedure setCacheMode (self : access Inst; mode_P : access QtAda6.QtGui.QMovie.CacheMode.Inst'Class);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setFormat (self : access Inst; format_P : UNION_QtAda6_QtCore_QByteArray_bytes);
   procedure setPaused (self : access Inst; paused_P : bool);
   procedure setScaledSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class);
   procedure setSpeed (self : access Inst; percentSpeed_P : int);
   function speed (self : access Inst) return int;
   procedure start (self : access Inst);
   function state (self : access Inst) return access QtAda6.QtGui.QMovie.MovieState.Inst'Class;
   procedure stop (self : access Inst);
   function supportedFormats return LIST_QtAda6_QtCore_QByteArray;
end QtAda6.QtGui.QMovie;
