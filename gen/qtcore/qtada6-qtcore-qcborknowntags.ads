-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcborknowntags.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QCborKnownTags is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   DateTimeString    : QCborKnownTags.Class;-- 0x0
   UnixTime_t        : QCborKnownTags.Class;-- 0x1
   PositiveBignum    : QCborKnownTags.Class;-- 0x2
   NegativeBignum    : QCborKnownTags.Class;-- 0x3
   Decimal           : QCborKnownTags.Class;-- 0x4
   Bigfloat          : QCborKnownTags.Class;-- 0x5
   COSE_Encrypt0     : QCborKnownTags.Class;-- 0x10
   COSE_Mac0         : QCborKnownTags.Class;-- 0x11
   COSE_Sign1        : QCborKnownTags.Class;-- 0x12
   ExpectedBase64url : QCborKnownTags.Class;-- 0x15
   ExpectedBase64    : QCborKnownTags.Class;-- 0x16
   ExpectedBase16    : QCborKnownTags.Class;-- 0x17
   EncodedCbor       : QCborKnownTags.Class;-- 0x18
   Url               : QCborKnownTags.Class;-- 0x20
   Base64url         : QCborKnownTags.Class;-- 0x21
   Base64            : QCborKnownTags.Class;-- 0x22
   RegularExpression : QCborKnownTags.Class;-- 0x23
   MimeMessage       : QCborKnownTags.Class;-- 0x24
   Uuid              : QCborKnownTags.Class;-- 0x25
   COSE_Encrypt      : QCborKnownTags.Class;-- 0x60
   COSE_Mac          : QCborKnownTags.Class;-- 0x61
   COSE_Sign         : QCborKnownTags.Class;-- 0x62
   Signature         : QCborKnownTags.Class;-- 0xd9f7
end QtAda6.QtCore.QCborKnownTags;
