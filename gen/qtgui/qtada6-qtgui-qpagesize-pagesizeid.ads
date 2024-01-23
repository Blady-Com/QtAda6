-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpagesize-pagesizeid.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPageSize.PageSizeId is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function AnsiA return Class;-- 0x0
   function Letter return Class;-- 0x0
   function Legal return Class;-- 0x1
   function Executive return Class;-- 0x2
   function A0 return Class;-- 0x3
   function A1 return Class;-- 0x4
   function A2 return Class;-- 0x5
   function A3 return Class;-- 0x6
   function A4 return Class;-- 0x7
   function A5 return Class;-- 0x8
   function A6 return Class;-- 0x9
   function A7 return Class;-- 0xa
   function A8 return Class;-- 0xb
   function A9 return Class;-- 0xc
   function A10 return Class;-- 0xd
   function B0 return Class;-- 0xe
   function B1 return Class;-- 0xf
   function B2 return Class;-- 0x10
   function B3 return Class;-- 0x11
   function B4 return Class;-- 0x12
   function B5 return Class;-- 0x13
   function B6 return Class;-- 0x14
   function B7 return Class;-- 0x15
   function B8 return Class;-- 0x16
   function B9 return Class;-- 0x17
   function B10 return Class;-- 0x18
   function C5E return Class;-- 0x19
   function EnvelopeC5 return Class;-- 0x19
   function Comm10E return Class;-- 0x1a
   function Envelope10 return Class;-- 0x1a
   function DLE return Class;-- 0x1b
   function EnvelopeDL return Class;-- 0x1b
   function Folio return Class;-- 0x1c
   function AnsiB return Class;-- 0x1d
   function Ledger return Class;-- 0x1d
   function Tabloid return Class;-- 0x1e
   function Custom return Class;-- 0x1f
   function A3Extra return Class;-- 0x20
   function A4Extra return Class;-- 0x21
   function A4Plus return Class;-- 0x22
   function A4Small return Class;-- 0x23
   function A5Extra return Class;-- 0x24
   function B5Extra return Class;-- 0x25
   function JisB0 return Class;-- 0x26
   function JisB1 return Class;-- 0x27
   function JisB2 return Class;-- 0x28
   function JisB3 return Class;-- 0x29
   function JisB4 return Class;-- 0x2a
   function JisB5 return Class;-- 0x2b
   function JisB6 return Class;-- 0x2c
   function JisB7 return Class;-- 0x2d
   function JisB8 return Class;-- 0x2e
   function JisB9 return Class;-- 0x2f
   function JisB10 return Class;-- 0x30
   function AnsiC return Class;-- 0x31
   function AnsiD return Class;-- 0x32
   function AnsiE return Class;-- 0x33
   function LegalExtra return Class;-- 0x34
   function LetterExtra return Class;-- 0x35
   function LetterPlus return Class;-- 0x36
   function LetterSmall return Class;-- 0x37
   function TabloidExtra return Class;-- 0x38
   function ArchA return Class;-- 0x39
   function ArchB return Class;-- 0x3a
   function ArchC return Class;-- 0x3b
   function ArchD return Class;-- 0x3c
   function ArchE return Class;-- 0x3d
   function Imperial7x9 return Class;-- 0x3e
   function Imperial8x10 return Class;-- 0x3f
   function Imperial9x11 return Class;-- 0x40
   function Imperial9x12 return Class;-- 0x41
   function Imperial10x11 return Class;-- 0x42
   function Imperial10x13 return Class;-- 0x43
   function Imperial10x14 return Class;-- 0x44
   function Imperial12x11 return Class;-- 0x45
   function Imperial15x11 return Class;-- 0x46
   function ExecutiveStandard return Class;-- 0x47
   function Note return Class;-- 0x48
   function Quarto return Class;-- 0x49
   function Statement return Class;-- 0x4a
   function SuperA return Class;-- 0x4b
   function SuperB return Class;-- 0x4c
   function Postcard return Class;-- 0x4d
   function DoublePostcard return Class;-- 0x4e
   function Prc16K return Class;-- 0x4f
   function Prc32K return Class;-- 0x50
   function Prc32KBig return Class;-- 0x51
   function FanFoldUS return Class;-- 0x52
   function FanFoldGerman return Class;-- 0x53
   function FanFoldGermanLegal return Class;-- 0x54
   function EnvelopeB4 return Class;-- 0x55
   function EnvelopeB5 return Class;-- 0x56
   function EnvelopeB6 return Class;-- 0x57
   function EnvelopeC0 return Class;-- 0x58
   function EnvelopeC1 return Class;-- 0x59
   function EnvelopeC2 return Class;-- 0x5a
   function EnvelopeC3 return Class;-- 0x5b
   function EnvelopeC4 return Class;-- 0x5c
   function EnvelopeC6 return Class;-- 0x5d
   function EnvelopeC65 return Class;-- 0x5e
   function EnvelopeC7 return Class;-- 0x5f
   function Envelope9 return Class;-- 0x60
   function Envelope11 return Class;-- 0x61
   function Envelope12 return Class;-- 0x62
   function Envelope14 return Class;-- 0x63
   function EnvelopeMonarch return Class;-- 0x64
   function EnvelopePersonal return Class;-- 0x65
   function EnvelopeChou3 return Class;-- 0x66
   function EnvelopeChou4 return Class;-- 0x67
   function EnvelopeInvite return Class;-- 0x68
   function EnvelopeItalian return Class;-- 0x69
   function EnvelopeKaku2 return Class;-- 0x6a
   function EnvelopeKaku3 return Class;-- 0x6b
   function EnvelopePrc1 return Class;-- 0x6c
   function EnvelopePrc2 return Class;-- 0x6d
   function EnvelopePrc3 return Class;-- 0x6e
   function EnvelopePrc4 return Class;-- 0x6f
   function EnvelopePrc5 return Class;-- 0x70
   function EnvelopePrc6 return Class;-- 0x71
   function EnvelopePrc7 return Class;-- 0x72
   function EnvelopePrc8 return Class;-- 0x73
   function EnvelopePrc9 return Class;-- 0x74
   function EnvelopePrc10 return Class;-- 0x75
   function EnvelopeYou4 return Class;-- 0x76
   function LastPageSize return Class;-- 0x76
end QtAda6.QtGui.QPageSize.PageSizeId;
