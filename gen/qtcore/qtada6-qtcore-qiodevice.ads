-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qiodevice.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
limited with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QIODeviceBase;
package QtAda6.QtCore.QIODevice is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtCore.QIODeviceBase.Inst
   with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function aboutToClose (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- aboutToClose()
   function bytesWritten (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- bytesWritten(qlonglong)
   function channelBytesWritten
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- channelBytesWritten(int,qlonglong)
   function channelReadyRead (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- channelReadyRead(int)
   function readChannelFinished
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- readChannelFinished()
   function readyRead (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- readyRead()
   function Create return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function atEnd (self : access Inst) return bool;
   function bytesAvailable (self : access Inst) return int;
   function bytesToWrite (self : access Inst) return int;
   function canReadLine (self : access Inst) return bool;
   procedure close (self : access Inst);
   procedure commitTransaction (self : access Inst);
   function currentReadChannel (self : access Inst) return int;
   function currentWriteChannel (self : access Inst) return int;
   function errorString (self : access Inst) return str;
   function getChar (self : access Inst) return bool;
   function isOpen (self : access Inst) return bool;
   function isReadable (self : access Inst) return bool;
   function isSequential (self : access Inst) return bool;
   function isTextModeEnabled (self : access Inst) return bool;
   function isTransactionStarted (self : access Inst) return bool;
   function isWritable (self : access Inst) return bool;
   function open (self : access Inst; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool;
   function openMode (self : access Inst) return access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class;
   function peek (self : access Inst; maxlen_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function pos (self : access Inst) return int;
   function putChar (self : access Inst; c_P : int) return bool;
   function read (self : access Inst; maxlen_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function readAll (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function readChannelCount (self : access Inst) return int;
   function readData (self : access Inst; maxlen_P : int) return access Object'Class;
   function readLine (self : access Inst; maxlen_P : int := 0) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function readLineData (self : access Inst; maxlen_P : int) return access Object'Class;
   function reset (self : access Inst) return bool;
   procedure rollbackTransaction (self : access Inst);
   function seek (self : access Inst; pos_P : int) return bool;
   procedure setCurrentReadChannel (self : access Inst; channel_P : int);
   procedure setCurrentWriteChannel (self : access Inst; channel_P : int);
   procedure setErrorString (self : access Inst; errorString_P : str);
   procedure setOpenMode (self : access Inst; openMode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class);
   procedure setTextModeEnabled (self : access Inst; enabled_P : bool);
   function size (self : access Inst) return int;
   function skip (self : access Inst; maxSize_P : int) return int;
   function skipData (self : access Inst; maxSize_P : int) return int;
   procedure startTransaction (self : access Inst);
   procedure ungetChar (self : access Inst; c_P : int);
   function waitForBytesWritten (self : access Inst; msecs_P : int) return bool;
   function waitForReadyRead (self : access Inst; msecs_P : int) return bool;
   function write (self : access Inst; data_P : UNION_QtAda6_QtCore_QByteArray_bytes) return int;
   function writeChannelCount (self : access Inst) return int;
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int;
end QtAda6.QtCore.QIODevice;
