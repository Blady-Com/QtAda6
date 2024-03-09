-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qmovie.adb
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
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QIODevice;
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QMovie.CacheMode;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QImageReader.ImageReaderError;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QMovie.MovieState;
package body QtAda6.QtGui.QMovie is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function error (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "error"));
   end error;
   function finished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "finished"));
   end finished;
   function frameChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "frameChanged"));
   end frameChanged;
   function resized (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "resized"));
   end resized;
   function started (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "started"));
   end started;
   function stateChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "stateChanged"));
   end stateChanged;
   function updated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "updated"));
   end updated;
   function Create
     (device_P : access QtAda6.QtCore.QIODevice.Inst'Class; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null;
      parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (fileName_P : str; format_P : UNION_QtAda6_QtCore_QByteArray_bytes := null;
      parent_P   : access QtAda6.QtCore.QObject.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if format_P /= null then
         Dict_SetItemString (Dict, "format", format_P.Python_Proxy);
      end if;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QColor.Class := new QtAda6.QtGui.QColor.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "backgroundColor");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end backgroundColor;
   function cacheMode_F (self : access Inst) return access QtAda6.QtGui.QMovie.CacheMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QMovie.CacheMode.Class := new QtAda6.QtGui.QMovie.CacheMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cacheMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cacheMode_F;
   function currentFrameNumber (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentFrameNumber");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end currentFrameNumber;
   function currentImage (self : access Inst) return access QtAda6.QtGui.QImage.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QImage.Class := new QtAda6.QtGui.QImage.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentImage");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentImage;
   function currentPixmap (self : access Inst) return access QtAda6.QtGui.QPixmap.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QPixmap.Class := new QtAda6.QtGui.QPixmap.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentPixmap");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentPixmap;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QIODevice.Class := new QtAda6.QtCore.QIODevice.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "device");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end device;
   function fileName (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fileName");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end fileName;
   function format (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   function frameCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "frameCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end frameCount;
   function frameRect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "frameRect");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end frameRect;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function jumpToFrame (self : access Inst; frameNumber_P : int) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "jumpToFrame");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (frameNumber_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end jumpToFrame;
   function jumpToNextFrame (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "jumpToNextFrame");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end jumpToNextFrame;
   function lastError (self : access Inst) return access QtAda6.QtGui.QImageReader.ImageReaderError.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QImageReader.ImageReaderError.Class :=
        new QtAda6.QtGui.QImageReader.ImageReaderError.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "lastError");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lastError;
   function lastErrorString (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lastErrorString");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end lastErrorString;
   function loopCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "loopCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end loopCount;
   function nextFrameDelay (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nextFrameDelay");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end nextFrameDelay;
   function scaledSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "scaledSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scaledSize;
   procedure setBackgroundColor
     (self    : access Inst;
      color_P : UNION_QtAda6_QtGui_QColor_QtAda6_QtGui_QRgba64_Any_QtAda6_QtCore_Qt_GlobalColor_str_int)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBackgroundColor");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if color_P /= null then color_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBackgroundColor;
   procedure setCacheMode (self : access Inst; mode_P : access QtAda6.QtGui.QMovie.CacheMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCacheMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCacheMode;
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDevice");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if device_P /= null then device_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDevice;
   procedure setFileName (self : access Inst; fileName_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFileName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFileName;
   procedure setFormat (self : access Inst; format_P : UNION_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFormat;
   procedure setPaused (self : access Inst; paused_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPaused");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (paused_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPaused;
   procedure setScaledSize (self : access Inst; size_P : access QtAda6.QtCore.QSize.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScaledSize");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if size_P /= null then size_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScaledSize;
   procedure setSpeed (self : access Inst; percentSpeed_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSpeed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (percentSpeed_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setSpeed;
   function speed (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "speed");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end speed;
   procedure start (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end start;
   function state (self : access Inst) return access QtAda6.QtGui.QMovie.MovieState.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QMovie.MovieState.Class := new QtAda6.QtGui.QMovie.MovieState.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state;
   procedure stop (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stop");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end stop;
   function supportedFormats return LIST_QtAda6_QtCore_QByteArray is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QMovie");
      Method := Object_GetAttrString (Class, "supportedFormats");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end supportedFormats;
end QtAda6.QtGui.QMovie;
