-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbuffer.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QMetaMethod;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with QtAda6.QtCore.QIODevice;
package QtAda6.QtCore.QBuffer is
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QIODevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (buf_P : Union_QtAda6_QtCore_QByteArray_bytes; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function atEnd (self : access Inst) return bool;
   function buffer (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function canReadLine (self : access Inst) return bool;
   procedure close (self : access Inst);
   procedure connectNotify (self : access Inst; arg_1_P : access QtAda6.QtCore.QMetaMethod.Inst'Class);
   function data (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure disconnectNotify (self : access Inst; arg_1_P : access QtAda6.QtCore.QMetaMethod.Inst'Class);
   function open
     (self : access Inst; openMode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool;
   function pos (self : access Inst) return int;
   function readData (self : access Inst; maxlen_P : int) return Object;
   function seek (self : access Inst; off_P : int) return bool;
   procedure setBuffer (self : access Inst; a_P : Union_QtAda6_QtCore_QByteArray_bytes);
   procedure setData (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes);
   function size (self : access Inst) return int;
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int;
end QtAda6.QtCore.QBuffer;
