-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborstreamreader.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QCborSimpleType;
limited with QtAda6.QtCore.QCborError;
limited with QtAda6.QtCore.QCborStreamReader.Type_K;
limited with QtAda6.QtCore.QCborStringResultByteArray;
limited with QtAda6.QtCore.QCborStringResultString;
limited with QtAda6.QtCore.QCborTag;
package QtAda6.QtCore.QCborStreamReader is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (data_P : bytes; len_P : int) return Class;
   function Create (data_P : bytearray; len_P : int) return Class;
   function Create (data_P : UNION_QtAda6_QtCore_QByteArray_bytes) return Class;
   function Create (device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return Class;
   procedure addData (self : access Inst; data_P : bytes; len_P : int);
   procedure addData (self : access Inst; data_P : bytearray; len_P : int);
   procedure addData (self : access Inst; data_P : UNION_QtAda6_QtCore_QByteArray_bytes);
   procedure clear (self : access Inst);
   function containerDepth (self : access Inst) return int;
   function currentOffset (self : access Inst) return int;
   function currentStringChunkSize (self : access Inst) return int;
   function device (self : access Inst) return access QtAda6.QtCore.QIODevice.Inst'Class;
   function enterContainer (self : access Inst) return bool;
   function hasNext (self : access Inst) return bool;
   function isArray (self : access Inst) return bool;
   function isBool (self : access Inst) return bool;
   function isByteArray (self : access Inst) return bool;
   function isContainer (self : access Inst) return bool;
   function isDouble (self : access Inst) return bool;
   function isFalse (self : access Inst) return bool;
   function isFloat (self : access Inst) return bool;
   function isFloat16 (self : access Inst) return bool;
   function isInteger (self : access Inst) return bool;
   function isInvalid (self : access Inst) return bool;
   function isLengthKnown (self : access Inst) return bool;
   function isMap (self : access Inst) return bool;
   function isNegativeInteger (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isSimpleType (self : access Inst) return bool;
   function isSimpleType (self : access Inst; st_P : access QtAda6.QtCore.QCborSimpleType.Inst'Class) return bool;
   function isString (self : access Inst) return bool;
   function isTag (self : access Inst) return bool;
   function isTrue (self : access Inst) return bool;
   function isUndefined (self : access Inst) return bool;
   function isUnsignedInteger (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function lastError (self : access Inst) return access QtAda6.QtCore.QCborError.Inst'Class;
   function leaveContainer (self : access Inst) return bool;
   function length (self : access Inst) return int;
   function next (self : access Inst; maxRecursion_P : int := 0) return bool;
   function parentContainerType (self : access Inst) return access QtAda6.QtCore.QCborStreamReader.Type_K.Inst'Class;
   function readByteArray (self : access Inst) return access QtAda6.QtCore.QCborStringResultByteArray.Inst'Class;
   function readString (self : access Inst) return access QtAda6.QtCore.QCborStringResultString.Inst'Class;
   procedure reparse (self : access Inst);
   procedure reset (self : access Inst);
   procedure setDevice (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class);
   function toBool (self : access Inst) return bool;
   function toDouble (self : access Inst) return float;
   function toFloat (self : access Inst) return float;
   function toInteger (self : access Inst) return int;
   function toSimpleType (self : access Inst) return access QtAda6.QtCore.QCborSimpleType.Inst'Class;
   function toTag (self : access Inst) return access QtAda6.QtCore.QCborTag.Inst'Class;
   function toUnsignedInteger (self : access Inst) return int;
   function type_K_F (self : access Inst) return access QtAda6.QtCore.QCborStreamReader.Type_K.Inst'Class;
end QtAda6.QtCore.QCborStreamReader;
