-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborknowntags.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCborKnownTags is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function DateTimeString return Class;-- 0x0
   function UnixTime_t return Class;-- 0x1
   function PositiveBignum return Class;-- 0x2
   function NegativeBignum return Class;-- 0x3
   function Decimal return Class;-- 0x4
   function Bigfloat return Class;-- 0x5
   function COSE_Encrypt0 return Class;-- 0x10
   function COSE_Mac0 return Class;-- 0x11
   function COSE_Sign1 return Class;-- 0x12
   function ExpectedBase64url return Class;-- 0x15
   function ExpectedBase64 return Class;-- 0x16
   function ExpectedBase16 return Class;-- 0x17
   function EncodedCbor return Class;-- 0x18
   function Url return Class;-- 0x20
   function Base64url return Class;-- 0x21
   function Base64 return Class;-- 0x22
   function RegularExpression return Class;-- 0x23
   function MimeMessage return Class;-- 0x24
   function Uuid return Class;-- 0x25
   function COSE_Encrypt return Class;-- 0x60
   function COSE_Mac return Class;-- 0x61
   function COSE_Sign return Class;-- 0x62
   function Signature return Class;-- 0xd9f7
end QtAda6.QtCore.QCborKnownTags;
