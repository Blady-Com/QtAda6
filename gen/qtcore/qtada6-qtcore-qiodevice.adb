-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qiodevice.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QIODeviceBase;
with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with QtAda6.QtCore.QByteArray;
package body QtAda6.QtCore.QIODevice is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODevice");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QIODevice");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, parent_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function atEnd (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "atEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end atEnd;
   function bytesAvailable (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bytesAvailable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bytesAvailable;
   function bytesToWrite (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bytesToWrite");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end bytesToWrite;
   function canReadLine (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "canReadLine");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end canReadLine;
   procedure close (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end close;
   procedure commitTransaction (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "commitTransaction");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end commitTransaction;
   function currentReadChannel (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentReadChannel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentReadChannel;
   function currentWriteChannel (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentWriteChannel");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentWriteChannel;
   function errorString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "errorString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end errorString;
   function getChar (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getChar");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end getChar;
   function isOpen (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isOpen");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isOpen;
   function isReadable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isReadable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isReadable;
   function isSequential (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSequential");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSequential;
   function isTextModeEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTextModeEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTextModeEnabled;
   function isTransactionStarted (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isTransactionStarted");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTransactionStarted;
   function isWritable (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isWritable");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isWritable;
   function open (self : access Inst; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end open;
   function openMode (self : access Inst) return access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Class :=
        new QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "openMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end openMode;
   function peek (self : access Inst; maxlen_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "peek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end peek;
   function pos (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "pos");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end pos;
   function putChar (self : access Inst; c_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "putChar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end putChar;
   function read (self : access Inst; maxlen_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "read");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end read;
   function readAll (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readAll");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readAll;
   function readChannelCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readChannelCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end readChannelCount;
   function readData (self : access Inst; maxlen_P : int) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end readData;
   function readLine (self : access Inst; maxlen_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readLine");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readLine;
   function readLineData (self : access Inst; maxlen_P : int) return Object is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readLineData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Result := Object_CallObject (Method, Args, True);
      return (Python_Proxy => Result);
   end readLineData;
   function reset (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end reset;
   procedure rollbackTransaction (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "rollbackTransaction");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end rollbackTransaction;
   function seek (self : access Inst; pos_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "seek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end seek;
   procedure setCurrentReadChannel (self : access Inst; channel_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentReadChannel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channel_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentReadChannel;
   procedure setCurrentWriteChannel (self : access Inst; channel_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentWriteChannel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (channel_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentWriteChannel;
   procedure setErrorString (self : access Inst; errorString_P : str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setErrorString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (errorString_P));
      Result := Object_CallObject (Method, Args, True);
   end setErrorString;
   procedure setOpenMode (self : access Inst; openMode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOpenMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, openMode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setOpenMode;
   procedure setTextModeEnabled (self : access Inst; enabled_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextModeEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enabled_P));
      Result := Object_CallObject (Method, Args, True);
   end setTextModeEnabled;
   function size (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "size");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end size;
   function skip (self : access Inst; maxSize_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "skip");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxSize_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end skip;
   function skipData (self : access Inst; maxSize_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "skipData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxSize_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end skipData;
   procedure startTransaction (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startTransaction");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end startTransaction;
   procedure ungetChar (self : access Inst; c_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "ungetChar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (c_P));
      Result := Object_CallObject (Method, Args, True);
   end ungetChar;
   function waitForBytesWritten (self : access Inst; msecs_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForBytesWritten");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end waitForBytesWritten;
   function waitForReadyRead (self : access Inst; msecs_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForReadyRead");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (msecs_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end waitForReadyRead;
   function write (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "write");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end write;
   function writeChannelCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeChannelCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end writeChannelCount;
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end writeData;
end QtAda6.QtCore.QIODevice;
