-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcryptographichash-algorithm.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCryptographicHash.Algorithm is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Md4 return Class;-- 0x0
   function Md5 return Class;-- 0x1
   function Sha1 return Class;-- 0x2
   function Sha224 return Class;-- 0x3
   function Sha256 return Class;-- 0x4
   function Sha384 return Class;-- 0x5
   function Sha512 return Class;-- 0x6
   function Keccak_224 return Class;-- 0x7
   function Keccak_256 return Class;-- 0x8
   function Keccak_384 return Class;-- 0x9
   function Keccak_512 return Class;-- 0xa
   function RealSha3_224 return Class;-- 0xb
   function Sha3_224 return Class;-- 0xb
   function RealSha3_256 return Class;-- 0xc
   function Sha3_256 return Class;-- 0xc
   function RealSha3_384 return Class;-- 0xd
   function Sha3_384 return Class;-- 0xd
   function RealSha3_512 return Class;-- 0xe
   function Sha3_512 return Class;-- 0xe
   function Blake2b_160 return Class;-- 0xf
   function Blake2b_256 return Class;-- 0x10
   function Blake2b_384 return Class;-- 0x11
   function Blake2b_512 return Class;-- 0x12
   function Blake2s_128 return Class;-- 0x13
   function Blake2s_160 return Class;-- 0x14
   function Blake2s_224 return Class;-- 0x15
   function Blake2s_256 return Class;-- 0x16
end QtAda6.QtCore.QCryptographicHash.Algorithm;
