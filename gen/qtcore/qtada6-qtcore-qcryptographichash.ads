-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcryptographichash.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCryptographicHash.Algorithm;
limited with QtAda6.QtCore.QIODevice;
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QCryptographicHash is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   procedure Finalize (Self : in out Class);
   function Create (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class) return Class;
   procedure addData (self : access Inst; data_P : bytes);
   procedure addData (self : access Inst; data_P : UNION_QtAda6_QtCore_QByteArray_bytes);
   function addData (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool;
   function algorithm_F (self : access Inst) return access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class;
   function hash
     (data_P   : UNION_QtAda6_QtCore_QByteArray_bytes;
      method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function hashLength (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class) return int;
   procedure reset (self : access Inst);
   function result (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function resultView (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function supportsAlgorithm (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class) return bool;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCryptographicHash.Inst'Class);
end QtAda6.QtCore.QCryptographicHash;
