-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlocale-script.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QLocale.Script is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function AnyScript return Class;-- 0x0
   function AdlamScript return Class;-- 0x1
   function AhomScript return Class;-- 0x2
   function AnatolianHieroglyphsScript return Class;-- 0x3
   function ArabicScript return Class;-- 0x4
   function ArmenianScript return Class;-- 0x5
   function AvestanScript return Class;-- 0x6
   function BalineseScript return Class;-- 0x7
   function BamumScript return Class;-- 0x8
   function BanglaScript return Class;-- 0x9
   function BengaliScript return Class;-- 0x9
   function BassaVahScript return Class;-- 0xa
   function BatakScript return Class;-- 0xb
   function BhaiksukiScript return Class;-- 0xc
   function BopomofoScript return Class;-- 0xd
   function BrahmiScript return Class;-- 0xe
   function BrailleScript return Class;-- 0xf
   function BugineseScript return Class;-- 0x10
   function BuhidScript return Class;-- 0x11
   function CanadianAboriginalScript return Class;-- 0x12
   function CarianScript return Class;-- 0x13
   function CaucasianAlbanianScript return Class;-- 0x14
   function ChakmaScript return Class;-- 0x15
   function ChamScript return Class;-- 0x16
   function CherokeeScript return Class;-- 0x17
   function CopticScript return Class;-- 0x18
   function CuneiformScript return Class;-- 0x19
   function CypriotScript return Class;-- 0x1a
   function CyrillicScript return Class;-- 0x1b
   function DeseretScript return Class;-- 0x1c
   function DevanagariScript return Class;-- 0x1d
   function DuployanScript return Class;-- 0x1e
   function EgyptianHieroglyphsScript return Class;-- 0x1f
   function ElbasanScript return Class;-- 0x20
   function EthiopicScript return Class;-- 0x21
   function FraserScript return Class;-- 0x22
   function GeorgianScript return Class;-- 0x23
   function GlagoliticScript return Class;-- 0x24
   function GothicScript return Class;-- 0x25
   function GranthaScript return Class;-- 0x26
   function GreekScript return Class;-- 0x27
   function GujaratiScript return Class;-- 0x28
   function GurmukhiScript return Class;-- 0x29
   function HangulScript return Class;-- 0x2a
   function HanScript return Class;-- 0x2b
   function HanunooScript return Class;-- 0x2c
   function HanWithBopomofoScript return Class;-- 0x2d
   function HatranScript return Class;-- 0x2e
   function HebrewScript return Class;-- 0x2f
   function HiraganaScript return Class;-- 0x30
   function ImperialAramaicScript return Class;-- 0x31
   function InscriptionalPahlaviScript return Class;-- 0x32
   function InscriptionalParthianScript return Class;-- 0x33
   function JamoScript return Class;-- 0x34
   function JapaneseScript return Class;-- 0x35
   function JavaneseScript return Class;-- 0x36
   function KaithiScript return Class;-- 0x37
   function KannadaScript return Class;-- 0x38
   function KatakanaScript return Class;-- 0x39
   function KayahLiScript return Class;-- 0x3a
   function KharoshthiScript return Class;-- 0x3b
   function KhmerScript return Class;-- 0x3c
   function KhojkiScript return Class;-- 0x3d
   function KhudawadiScript return Class;-- 0x3e
   function KoreanScript return Class;-- 0x3f
   function LannaScript return Class;-- 0x40
   function LaoScript return Class;-- 0x41
   function LatinScript return Class;-- 0x42
   function LepchaScript return Class;-- 0x43
   function LimbuScript return Class;-- 0x44
   function LinearAScript return Class;-- 0x45
   function LinearBScript return Class;-- 0x46
   function LycianScript return Class;-- 0x47
   function LydianScript return Class;-- 0x48
   function MahajaniScript return Class;-- 0x49
   function MalayalamScript return Class;-- 0x4a
   function MandaeanScript return Class;-- 0x4b
   function ManichaeanScript return Class;-- 0x4c
   function MarchenScript return Class;-- 0x4d
   function MeiteiMayekScript return Class;-- 0x4e
   function MendeKikakuiScript return Class;-- 0x4f
   function MendeScript return Class;-- 0x4f
   function MeroiticCursiveScript return Class;-- 0x50
   function MeroiticScript return Class;-- 0x51
   function ModiScript return Class;-- 0x52
   function MongolianScript return Class;-- 0x53
   function MroScript return Class;-- 0x54
   function MultaniScript return Class;-- 0x55
   function MyanmarScript return Class;-- 0x56
   function NabataeanScript return Class;-- 0x57
   function NewaScript return Class;-- 0x58
   function NewTaiLueScript return Class;-- 0x59
   function NkoScript return Class;-- 0x5a
   function OdiaScript return Class;-- 0x5b
   function OriyaScript return Class;-- 0x5b
   function OghamScript return Class;-- 0x5c
   function OlChikiScript return Class;-- 0x5d
   function OldHungarianScript return Class;-- 0x5e
   function OldItalicScript return Class;-- 0x5f
   function OldNorthArabianScript return Class;-- 0x60
   function OldPermicScript return Class;-- 0x61
   function OldPersianScript return Class;-- 0x62
   function OldSouthArabianScript return Class;-- 0x63
   function OrkhonScript return Class;-- 0x64
   function OsageScript return Class;-- 0x65
   function OsmanyaScript return Class;-- 0x66
   function PahawhHmongScript return Class;-- 0x67
   function PalmyreneScript return Class;-- 0x68
   function PauCinHauScript return Class;-- 0x69
   function PhagsPaScript return Class;-- 0x6a
   function PhoenicianScript return Class;-- 0x6b
   function PollardPhoneticScript return Class;-- 0x6c
   function PsalterPahlaviScript return Class;-- 0x6d
   function RejangScript return Class;-- 0x6e
   function RunicScript return Class;-- 0x6f
   function SamaritanScript return Class;-- 0x70
   function SaurashtraScript return Class;-- 0x71
   function SharadaScript return Class;-- 0x72
   function ShavianScript return Class;-- 0x73
   function SiddhamScript return Class;-- 0x74
   function SignWritingScript return Class;-- 0x75
   function SimplifiedChineseScript return Class;-- 0x76
   function SimplifiedHanScript return Class;-- 0x76
   function SinhalaScript return Class;-- 0x77
   function SoraSompengScript return Class;-- 0x78
   function SundaneseScript return Class;-- 0x79
   function SylotiNagriScript return Class;-- 0x7a
   function SyriacScript return Class;-- 0x7b
   function TagalogScript return Class;-- 0x7c
   function TagbanwaScript return Class;-- 0x7d
   function TaiLeScript return Class;-- 0x7e
   function TaiVietScript return Class;-- 0x7f
   function TakriScript return Class;-- 0x80
   function TamilScript return Class;-- 0x81
   function TangutScript return Class;-- 0x82
   function TeluguScript return Class;-- 0x83
   function ThaanaScript return Class;-- 0x84
   function ThaiScript return Class;-- 0x85
   function TibetanScript return Class;-- 0x86
   function TifinaghScript return Class;-- 0x87
   function TirhutaScript return Class;-- 0x88
   function TraditionalChineseScript return Class;-- 0x89
   function TraditionalHanScript return Class;-- 0x89
   function UgariticScript return Class;-- 0x8a
   function VaiScript return Class;-- 0x8b
   function VarangKshitiScript return Class;-- 0x8c
   function LastScript return Class;-- 0x8d
   function YiScript return Class;-- 0x8d
end QtAda6.QtCore.QLocale.Script;
