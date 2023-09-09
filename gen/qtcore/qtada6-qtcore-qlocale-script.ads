-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale-script.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QLocale.Script is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   AnyScript                   : QLocale.Script.Class;-- 0x0
   AdlamScript                 : QLocale.Script.Class;-- 0x1
   AhomScript                  : QLocale.Script.Class;-- 0x2
   AnatolianHieroglyphsScript  : QLocale.Script.Class;-- 0x3
   ArabicScript                : QLocale.Script.Class;-- 0x4
   ArmenianScript              : QLocale.Script.Class;-- 0x5
   AvestanScript               : QLocale.Script.Class;-- 0x6
   BalineseScript              : QLocale.Script.Class;-- 0x7
   BamumScript                 : QLocale.Script.Class;-- 0x8
   BanglaScript                : QLocale.Script.Class;-- 0x9
   BengaliScript               : QLocale.Script.Class;-- 0x9
   BassaVahScript              : QLocale.Script.Class;-- 0xa
   BatakScript                 : QLocale.Script.Class;-- 0xb
   BhaiksukiScript             : QLocale.Script.Class;-- 0xc
   BopomofoScript              : QLocale.Script.Class;-- 0xd
   BrahmiScript                : QLocale.Script.Class;-- 0xe
   BrailleScript               : QLocale.Script.Class;-- 0xf
   BugineseScript              : QLocale.Script.Class;-- 0x10
   BuhidScript                 : QLocale.Script.Class;-- 0x11
   CanadianAboriginalScript    : QLocale.Script.Class;-- 0x12
   CarianScript                : QLocale.Script.Class;-- 0x13
   CaucasianAlbanianScript     : QLocale.Script.Class;-- 0x14
   ChakmaScript                : QLocale.Script.Class;-- 0x15
   ChamScript                  : QLocale.Script.Class;-- 0x16
   CherokeeScript              : QLocale.Script.Class;-- 0x17
   CopticScript                : QLocale.Script.Class;-- 0x18
   CuneiformScript             : QLocale.Script.Class;-- 0x19
   CypriotScript               : QLocale.Script.Class;-- 0x1a
   CyrillicScript              : QLocale.Script.Class;-- 0x1b
   DeseretScript               : QLocale.Script.Class;-- 0x1c
   DevanagariScript            : QLocale.Script.Class;-- 0x1d
   DuployanScript              : QLocale.Script.Class;-- 0x1e
   EgyptianHieroglyphsScript   : QLocale.Script.Class;-- 0x1f
   ElbasanScript               : QLocale.Script.Class;-- 0x20
   EthiopicScript              : QLocale.Script.Class;-- 0x21
   FraserScript                : QLocale.Script.Class;-- 0x22
   GeorgianScript              : QLocale.Script.Class;-- 0x23
   GlagoliticScript            : QLocale.Script.Class;-- 0x24
   GothicScript                : QLocale.Script.Class;-- 0x25
   GranthaScript               : QLocale.Script.Class;-- 0x26
   GreekScript                 : QLocale.Script.Class;-- 0x27
   GujaratiScript              : QLocale.Script.Class;-- 0x28
   GurmukhiScript              : QLocale.Script.Class;-- 0x29
   HangulScript                : QLocale.Script.Class;-- 0x2a
   HanScript                   : QLocale.Script.Class;-- 0x2b
   HanunooScript               : QLocale.Script.Class;-- 0x2c
   HanWithBopomofoScript       : QLocale.Script.Class;-- 0x2d
   HatranScript                : QLocale.Script.Class;-- 0x2e
   HebrewScript                : QLocale.Script.Class;-- 0x2f
   HiraganaScript              : QLocale.Script.Class;-- 0x30
   ImperialAramaicScript       : QLocale.Script.Class;-- 0x31
   InscriptionalPahlaviScript  : QLocale.Script.Class;-- 0x32
   InscriptionalParthianScript : QLocale.Script.Class;-- 0x33
   JamoScript                  : QLocale.Script.Class;-- 0x34
   JapaneseScript              : QLocale.Script.Class;-- 0x35
   JavaneseScript              : QLocale.Script.Class;-- 0x36
   KaithiScript                : QLocale.Script.Class;-- 0x37
   KannadaScript               : QLocale.Script.Class;-- 0x38
   KatakanaScript              : QLocale.Script.Class;-- 0x39
   KayahLiScript               : QLocale.Script.Class;-- 0x3a
   KharoshthiScript            : QLocale.Script.Class;-- 0x3b
   KhmerScript                 : QLocale.Script.Class;-- 0x3c
   KhojkiScript                : QLocale.Script.Class;-- 0x3d
   KhudawadiScript             : QLocale.Script.Class;-- 0x3e
   KoreanScript                : QLocale.Script.Class;-- 0x3f
   LannaScript                 : QLocale.Script.Class;-- 0x40
   LaoScript                   : QLocale.Script.Class;-- 0x41
   LatinScript                 : QLocale.Script.Class;-- 0x42
   LepchaScript                : QLocale.Script.Class;-- 0x43
   LimbuScript                 : QLocale.Script.Class;-- 0x44
   LinearAScript               : QLocale.Script.Class;-- 0x45
   LinearBScript               : QLocale.Script.Class;-- 0x46
   LycianScript                : QLocale.Script.Class;-- 0x47
   LydianScript                : QLocale.Script.Class;-- 0x48
   MahajaniScript              : QLocale.Script.Class;-- 0x49
   MalayalamScript             : QLocale.Script.Class;-- 0x4a
   MandaeanScript              : QLocale.Script.Class;-- 0x4b
   ManichaeanScript            : QLocale.Script.Class;-- 0x4c
   MarchenScript               : QLocale.Script.Class;-- 0x4d
   MeiteiMayekScript           : QLocale.Script.Class;-- 0x4e
   MendeKikakuiScript          : QLocale.Script.Class;-- 0x4f
   MendeScript                 : QLocale.Script.Class;-- 0x4f
   MeroiticCursiveScript       : QLocale.Script.Class;-- 0x50
   MeroiticScript              : QLocale.Script.Class;-- 0x51
   ModiScript                  : QLocale.Script.Class;-- 0x52
   MongolianScript             : QLocale.Script.Class;-- 0x53
   MroScript                   : QLocale.Script.Class;-- 0x54
   MultaniScript               : QLocale.Script.Class;-- 0x55
   MyanmarScript               : QLocale.Script.Class;-- 0x56
   NabataeanScript             : QLocale.Script.Class;-- 0x57
   NewaScript                  : QLocale.Script.Class;-- 0x58
   NewTaiLueScript             : QLocale.Script.Class;-- 0x59
   NkoScript                   : QLocale.Script.Class;-- 0x5a
   OdiaScript                  : QLocale.Script.Class;-- 0x5b
   OriyaScript                 : QLocale.Script.Class;-- 0x5b
   OghamScript                 : QLocale.Script.Class;-- 0x5c
   OlChikiScript               : QLocale.Script.Class;-- 0x5d
   OldHungarianScript          : QLocale.Script.Class;-- 0x5e
   OldItalicScript             : QLocale.Script.Class;-- 0x5f
   OldNorthArabianScript       : QLocale.Script.Class;-- 0x60
   OldPermicScript             : QLocale.Script.Class;-- 0x61
   OldPersianScript            : QLocale.Script.Class;-- 0x62
   OldSouthArabianScript       : QLocale.Script.Class;-- 0x63
   OrkhonScript                : QLocale.Script.Class;-- 0x64
   OsageScript                 : QLocale.Script.Class;-- 0x65
   OsmanyaScript               : QLocale.Script.Class;-- 0x66
   PahawhHmongScript           : QLocale.Script.Class;-- 0x67
   PalmyreneScript             : QLocale.Script.Class;-- 0x68
   PauCinHauScript             : QLocale.Script.Class;-- 0x69
   PhagsPaScript               : QLocale.Script.Class;-- 0x6a
   PhoenicianScript            : QLocale.Script.Class;-- 0x6b
   PollardPhoneticScript       : QLocale.Script.Class;-- 0x6c
   PsalterPahlaviScript        : QLocale.Script.Class;-- 0x6d
   RejangScript                : QLocale.Script.Class;-- 0x6e
   RunicScript                 : QLocale.Script.Class;-- 0x6f
   SamaritanScript             : QLocale.Script.Class;-- 0x70
   SaurashtraScript            : QLocale.Script.Class;-- 0x71
   SharadaScript               : QLocale.Script.Class;-- 0x72
   ShavianScript               : QLocale.Script.Class;-- 0x73
   SiddhamScript               : QLocale.Script.Class;-- 0x74
   SignWritingScript           : QLocale.Script.Class;-- 0x75
   SimplifiedChineseScript     : QLocale.Script.Class;-- 0x76
   SimplifiedHanScript         : QLocale.Script.Class;-- 0x76
   SinhalaScript               : QLocale.Script.Class;-- 0x77
   SoraSompengScript           : QLocale.Script.Class;-- 0x78
   SundaneseScript             : QLocale.Script.Class;-- 0x79
   SylotiNagriScript           : QLocale.Script.Class;-- 0x7a
   SyriacScript                : QLocale.Script.Class;-- 0x7b
   TagalogScript               : QLocale.Script.Class;-- 0x7c
   TagbanwaScript              : QLocale.Script.Class;-- 0x7d
   TaiLeScript                 : QLocale.Script.Class;-- 0x7e
   TaiVietScript               : QLocale.Script.Class;-- 0x7f
   TakriScript                 : QLocale.Script.Class;-- 0x80
   TamilScript                 : QLocale.Script.Class;-- 0x81
   TangutScript                : QLocale.Script.Class;-- 0x82
   TeluguScript                : QLocale.Script.Class;-- 0x83
   ThaanaScript                : QLocale.Script.Class;-- 0x84
   ThaiScript                  : QLocale.Script.Class;-- 0x85
   TibetanScript               : QLocale.Script.Class;-- 0x86
   TifinaghScript              : QLocale.Script.Class;-- 0x87
   TirhutaScript               : QLocale.Script.Class;-- 0x88
   TraditionalChineseScript    : QLocale.Script.Class;-- 0x89
   TraditionalHanScript        : QLocale.Script.Class;-- 0x89
   UgariticScript              : QLocale.Script.Class;-- 0x8a
   VaiScript                   : QLocale.Script.Class;-- 0x8b
   VarangKshitiScript          : QLocale.Script.Class;-- 0x8c
   LastScript                  : QLocale.Script.Class;-- 0x8d
   YiScript                    : QLocale.Script.Class;-- 0x8d
end QtAda6.QtCore.QLocale.Script;
