-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpagesize-pagesizeid.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPageSize.PageSizeId is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnsiA              : QPageSize.PageSizeId.Class;-- 0x0
   Letter             : QPageSize.PageSizeId.Class;-- 0x0
   Legal              : QPageSize.PageSizeId.Class;-- 0x1
   Executive          : QPageSize.PageSizeId.Class;-- 0x2
   A0                 : QPageSize.PageSizeId.Class;-- 0x3
   A1                 : QPageSize.PageSizeId.Class;-- 0x4
   A2                 : QPageSize.PageSizeId.Class;-- 0x5
   A3                 : QPageSize.PageSizeId.Class;-- 0x6
   A4                 : QPageSize.PageSizeId.Class;-- 0x7
   A5                 : QPageSize.PageSizeId.Class;-- 0x8
   A6                 : QPageSize.PageSizeId.Class;-- 0x9
   A7                 : QPageSize.PageSizeId.Class;-- 0xa
   A8                 : QPageSize.PageSizeId.Class;-- 0xb
   A9                 : QPageSize.PageSizeId.Class;-- 0xc
   A10                : QPageSize.PageSizeId.Class;-- 0xd
   B0                 : QPageSize.PageSizeId.Class;-- 0xe
   B1                 : QPageSize.PageSizeId.Class;-- 0xf
   B2                 : QPageSize.PageSizeId.Class;-- 0x10
   B3                 : QPageSize.PageSizeId.Class;-- 0x11
   B4                 : QPageSize.PageSizeId.Class;-- 0x12
   B5                 : QPageSize.PageSizeId.Class;-- 0x13
   B6                 : QPageSize.PageSizeId.Class;-- 0x14
   B7                 : QPageSize.PageSizeId.Class;-- 0x15
   B8                 : QPageSize.PageSizeId.Class;-- 0x16
   B9                 : QPageSize.PageSizeId.Class;-- 0x17
   B10                : QPageSize.PageSizeId.Class;-- 0x18
   C5E                : QPageSize.PageSizeId.Class;-- 0x19
   EnvelopeC5         : QPageSize.PageSizeId.Class;-- 0x19
   Comm10E            : QPageSize.PageSizeId.Class;-- 0x1a
   Envelope10         : QPageSize.PageSizeId.Class;-- 0x1a
   DLE                : QPageSize.PageSizeId.Class;-- 0x1b
   EnvelopeDL         : QPageSize.PageSizeId.Class;-- 0x1b
   Folio              : QPageSize.PageSizeId.Class;-- 0x1c
   AnsiB              : QPageSize.PageSizeId.Class;-- 0x1d
   Ledger             : QPageSize.PageSizeId.Class;-- 0x1d
   Tabloid            : QPageSize.PageSizeId.Class;-- 0x1e
   Custom             : QPageSize.PageSizeId.Class;-- 0x1f
   A3Extra            : QPageSize.PageSizeId.Class;-- 0x20
   A4Extra            : QPageSize.PageSizeId.Class;-- 0x21
   A4Plus             : QPageSize.PageSizeId.Class;-- 0x22
   A4Small            : QPageSize.PageSizeId.Class;-- 0x23
   A5Extra            : QPageSize.PageSizeId.Class;-- 0x24
   B5Extra            : QPageSize.PageSizeId.Class;-- 0x25
   JisB0              : QPageSize.PageSizeId.Class;-- 0x26
   JisB1              : QPageSize.PageSizeId.Class;-- 0x27
   JisB2              : QPageSize.PageSizeId.Class;-- 0x28
   JisB3              : QPageSize.PageSizeId.Class;-- 0x29
   JisB4              : QPageSize.PageSizeId.Class;-- 0x2a
   JisB5              : QPageSize.PageSizeId.Class;-- 0x2b
   JisB6              : QPageSize.PageSizeId.Class;-- 0x2c
   JisB7              : QPageSize.PageSizeId.Class;-- 0x2d
   JisB8              : QPageSize.PageSizeId.Class;-- 0x2e
   JisB9              : QPageSize.PageSizeId.Class;-- 0x2f
   JisB10             : QPageSize.PageSizeId.Class;-- 0x30
   AnsiC              : QPageSize.PageSizeId.Class;-- 0x31
   AnsiD              : QPageSize.PageSizeId.Class;-- 0x32
   AnsiE              : QPageSize.PageSizeId.Class;-- 0x33
   LegalExtra         : QPageSize.PageSizeId.Class;-- 0x34
   LetterExtra        : QPageSize.PageSizeId.Class;-- 0x35
   LetterPlus         : QPageSize.PageSizeId.Class;-- 0x36
   LetterSmall        : QPageSize.PageSizeId.Class;-- 0x37
   TabloidExtra       : QPageSize.PageSizeId.Class;-- 0x38
   ArchA              : QPageSize.PageSizeId.Class;-- 0x39
   ArchB              : QPageSize.PageSizeId.Class;-- 0x3a
   ArchC              : QPageSize.PageSizeId.Class;-- 0x3b
   ArchD              : QPageSize.PageSizeId.Class;-- 0x3c
   ArchE              : QPageSize.PageSizeId.Class;-- 0x3d
   Imperial7x9        : QPageSize.PageSizeId.Class;-- 0x3e
   Imperial8x10       : QPageSize.PageSizeId.Class;-- 0x3f
   Imperial9x11       : QPageSize.PageSizeId.Class;-- 0x40
   Imperial9x12       : QPageSize.PageSizeId.Class;-- 0x41
   Imperial10x11      : QPageSize.PageSizeId.Class;-- 0x42
   Imperial10x13      : QPageSize.PageSizeId.Class;-- 0x43
   Imperial10x14      : QPageSize.PageSizeId.Class;-- 0x44
   Imperial12x11      : QPageSize.PageSizeId.Class;-- 0x45
   Imperial15x11      : QPageSize.PageSizeId.Class;-- 0x46
   ExecutiveStandard  : QPageSize.PageSizeId.Class;-- 0x47
   Note               : QPageSize.PageSizeId.Class;-- 0x48
   Quarto             : QPageSize.PageSizeId.Class;-- 0x49
   Statement          : QPageSize.PageSizeId.Class;-- 0x4a
   SuperA             : QPageSize.PageSizeId.Class;-- 0x4b
   SuperB             : QPageSize.PageSizeId.Class;-- 0x4c
   Postcard           : QPageSize.PageSizeId.Class;-- 0x4d
   DoublePostcard     : QPageSize.PageSizeId.Class;-- 0x4e
   Prc16K             : QPageSize.PageSizeId.Class;-- 0x4f
   Prc32K             : QPageSize.PageSizeId.Class;-- 0x50
   Prc32KBig          : QPageSize.PageSizeId.Class;-- 0x51
   FanFoldUS          : QPageSize.PageSizeId.Class;-- 0x52
   FanFoldGerman      : QPageSize.PageSizeId.Class;-- 0x53
   FanFoldGermanLegal : QPageSize.PageSizeId.Class;-- 0x54
   EnvelopeB4         : QPageSize.PageSizeId.Class;-- 0x55
   EnvelopeB5         : QPageSize.PageSizeId.Class;-- 0x56
   EnvelopeB6         : QPageSize.PageSizeId.Class;-- 0x57
   EnvelopeC0         : QPageSize.PageSizeId.Class;-- 0x58
   EnvelopeC1         : QPageSize.PageSizeId.Class;-- 0x59
   EnvelopeC2         : QPageSize.PageSizeId.Class;-- 0x5a
   EnvelopeC3         : QPageSize.PageSizeId.Class;-- 0x5b
   EnvelopeC4         : QPageSize.PageSizeId.Class;-- 0x5c
   EnvelopeC6         : QPageSize.PageSizeId.Class;-- 0x5d
   EnvelopeC65        : QPageSize.PageSizeId.Class;-- 0x5e
   EnvelopeC7         : QPageSize.PageSizeId.Class;-- 0x5f
   Envelope9          : QPageSize.PageSizeId.Class;-- 0x60
   Envelope11         : QPageSize.PageSizeId.Class;-- 0x61
   Envelope12         : QPageSize.PageSizeId.Class;-- 0x62
   Envelope14         : QPageSize.PageSizeId.Class;-- 0x63
   EnvelopeMonarch    : QPageSize.PageSizeId.Class;-- 0x64
   EnvelopePersonal   : QPageSize.PageSizeId.Class;-- 0x65
   EnvelopeChou3      : QPageSize.PageSizeId.Class;-- 0x66
   EnvelopeChou4      : QPageSize.PageSizeId.Class;-- 0x67
   EnvelopeInvite     : QPageSize.PageSizeId.Class;-- 0x68
   EnvelopeItalian    : QPageSize.PageSizeId.Class;-- 0x69
   EnvelopeKaku2      : QPageSize.PageSizeId.Class;-- 0x6a
   EnvelopeKaku3      : QPageSize.PageSizeId.Class;-- 0x6b
   EnvelopePrc1       : QPageSize.PageSizeId.Class;-- 0x6c
   EnvelopePrc2       : QPageSize.PageSizeId.Class;-- 0x6d
   EnvelopePrc3       : QPageSize.PageSizeId.Class;-- 0x6e
   EnvelopePrc4       : QPageSize.PageSizeId.Class;-- 0x6f
   EnvelopePrc5       : QPageSize.PageSizeId.Class;-- 0x70
   EnvelopePrc6       : QPageSize.PageSizeId.Class;-- 0x71
   EnvelopePrc7       : QPageSize.PageSizeId.Class;-- 0x72
   EnvelopePrc8       : QPageSize.PageSizeId.Class;-- 0x73
   EnvelopePrc9       : QPageSize.PageSizeId.Class;-- 0x74
   EnvelopePrc10      : QPageSize.PageSizeId.Class;-- 0x75
   EnvelopeYou4       : QPageSize.PageSizeId.Class;-- 0x76
   LastPageSize       : QPageSize.PageSizeId.Class;-- 0x76
end QtAda6.QtGui.QPageSize.PageSizeId;
