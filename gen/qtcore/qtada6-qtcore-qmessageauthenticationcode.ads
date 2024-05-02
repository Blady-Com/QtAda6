-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmessageauthenticationcode.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCryptographicHash.Algorithm;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QIODevice;
package QtAda6.QtCore.QMessageAuthenticationCode is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class;
      key_P    : access QtAda6.QtCore.QByteArray.Inst'Class := null) return Class;
   function Create
     (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class; key_P : bytes := null) return Class;
   procedure addData (self : access Inst; data_P : bytes; length_P : int);
   procedure addData (self : access Inst; data_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure addData (self : access Inst; data_P : bytes);
   function addData (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool;
   function hash
     (message_P : access QtAda6.QtCore.QByteArray.Inst'Class; key_P : access QtAda6.QtCore.QByteArray.Inst'Class;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function hash
     (message_P : access QtAda6.QtCore.QByteArray.Inst'Class; key_P : bytes;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function hash
     (message_P : bytes; key_P : access QtAda6.QtCore.QByteArray.Inst'Class;
      method_P  : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function hash
     (message_P : bytes; key_P : bytes; method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure reset (self : access Inst);
   function result (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   procedure setKey (self : access Inst; key_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure setKey (self : access Inst; key_P : bytes);
end QtAda6.QtCore.QMessageAuthenticationCode;
