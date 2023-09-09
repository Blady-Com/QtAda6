-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcryptographichash-algorithm.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QCryptographicHash.Algorithm is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Md4          : QCryptographicHash.Algorithm.Class;-- 0x0
   Md5          : QCryptographicHash.Algorithm.Class;-- 0x1
   Sha1         : QCryptographicHash.Algorithm.Class;-- 0x2
   Sha224       : QCryptographicHash.Algorithm.Class;-- 0x3
   Sha256       : QCryptographicHash.Algorithm.Class;-- 0x4
   Sha384       : QCryptographicHash.Algorithm.Class;-- 0x5
   Sha512       : QCryptographicHash.Algorithm.Class;-- 0x6
   Keccak_224   : QCryptographicHash.Algorithm.Class;-- 0x7
   Keccak_256   : QCryptographicHash.Algorithm.Class;-- 0x8
   Keccak_384   : QCryptographicHash.Algorithm.Class;-- 0x9
   Keccak_512   : QCryptographicHash.Algorithm.Class;-- 0xa
   RealSha3_224 : QCryptographicHash.Algorithm.Class;-- 0xb
   Sha3_224     : QCryptographicHash.Algorithm.Class;-- 0xb
   RealSha3_256 : QCryptographicHash.Algorithm.Class;-- 0xc
   Sha3_256     : QCryptographicHash.Algorithm.Class;-- 0xc
   RealSha3_384 : QCryptographicHash.Algorithm.Class;-- 0xd
   Sha3_384     : QCryptographicHash.Algorithm.Class;-- 0xd
   RealSha3_512 : QCryptographicHash.Algorithm.Class;-- 0xe
   Sha3_512     : QCryptographicHash.Algorithm.Class;-- 0xe
   Blake2b_160  : QCryptographicHash.Algorithm.Class;-- 0xf
   Blake2b_256  : QCryptographicHash.Algorithm.Class;-- 0x10
   Blake2b_384  : QCryptographicHash.Algorithm.Class;-- 0x11
   Blake2b_512  : QCryptographicHash.Algorithm.Class;-- 0x12
   Blake2s_128  : QCryptographicHash.Algorithm.Class;-- 0x13
   Blake2s_160  : QCryptographicHash.Algorithm.Class;-- 0x14
   Blake2s_224  : QCryptographicHash.Algorithm.Class;-- 0x15
   Blake2s_256  : QCryptographicHash.Algorithm.Class;-- 0x16
end QtAda6.QtCore.QCryptographicHash.Algorithm;
