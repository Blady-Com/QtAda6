-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcryptographichash-algorithm.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.QCryptographicHash.Algorithm is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Md4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Md4"));
   end Md4;
   function Md5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Md5"));
   end Md5;
   function Sha1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha1"));
   end Sha1;
   function Sha224 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha224"));
   end Sha224;
   function Sha256 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha256"));
   end Sha256;
   function Sha384 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha384"));
   end Sha384;
   function Sha512 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha512"));
   end Sha512;
   function Keccak_224 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Keccak_224"));
   end Keccak_224;
   function Keccak_256 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Keccak_256"));
   end Keccak_256;
   function Keccak_384 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Keccak_384"));
   end Keccak_384;
   function Keccak_512 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Keccak_512"));
   end Keccak_512;
   function RealSha3_224 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RealSha3_224"));
   end RealSha3_224;
   function Sha3_224 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha3_224"));
   end Sha3_224;
   function RealSha3_256 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RealSha3_256"));
   end RealSha3_256;
   function Sha3_256 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha3_256"));
   end Sha3_256;
   function RealSha3_384 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RealSha3_384"));
   end RealSha3_384;
   function Sha3_384 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha3_384"));
   end Sha3_384;
   function RealSha3_512 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RealSha3_512"));
   end RealSha3_512;
   function Sha3_512 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sha3_512"));
   end Sha3_512;
   function Blake2b_160 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2b_160"));
   end Blake2b_160;
   function Blake2b_256 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2b_256"));
   end Blake2b_256;
   function Blake2b_384 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2b_384"));
   end Blake2b_384;
   function Blake2b_512 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2b_512"));
   end Blake2b_512;
   function Blake2s_128 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2s_128"));
   end Blake2s_128;
   function Blake2s_160 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2s_160"));
   end Blake2s_160;
   function Blake2s_224 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2s_224"));
   end Blake2s_224;
   function Blake2s_256 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blake2s_256"));
   end Blake2s_256;
end QtAda6.QtCore.QCryptographicHash.Algorithm;
