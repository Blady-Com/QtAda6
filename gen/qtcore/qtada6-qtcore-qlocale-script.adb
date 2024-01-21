-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale-script.adb
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
package body QtAda6.QtCore.QLocale.Script is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnyScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnyScript"));
   end AnyScript;
   function AdlamScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AdlamScript"));
   end AdlamScript;
   function AhomScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AhomScript"));
   end AhomScript;
   function AnatolianHieroglyphsScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AnatolianHieroglyphsScript"));
   end AnatolianHieroglyphsScript;
   function ArabicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ArabicScript"));
   end ArabicScript;
   function ArmenianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ArmenianScript"));
   end ArmenianScript;
   function AvestanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AvestanScript"));
   end AvestanScript;
   function BalineseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BalineseScript"));
   end BalineseScript;
   function BamumScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BamumScript"));
   end BamumScript;
   function BanglaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BanglaScript"));
   end BanglaScript;
   function BengaliScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BengaliScript"));
   end BengaliScript;
   function BassaVahScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BassaVahScript"));
   end BassaVahScript;
   function BatakScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BatakScript"));
   end BatakScript;
   function BhaiksukiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BhaiksukiScript"));
   end BhaiksukiScript;
   function BopomofoScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BopomofoScript"));
   end BopomofoScript;
   function BrahmiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BrahmiScript"));
   end BrahmiScript;
   function BrailleScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BrailleScript"));
   end BrailleScript;
   function BugineseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BugineseScript"));
   end BugineseScript;
   function BuhidScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BuhidScript"));
   end BuhidScript;
   function CanadianAboriginalScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CanadianAboriginalScript"));
   end CanadianAboriginalScript;
   function CarianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CarianScript"));
   end CarianScript;
   function CaucasianAlbanianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CaucasianAlbanianScript"));
   end CaucasianAlbanianScript;
   function ChakmaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ChakmaScript"));
   end ChakmaScript;
   function ChamScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ChamScript"));
   end ChamScript;
   function CherokeeScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CherokeeScript"));
   end CherokeeScript;
   function CopticScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CopticScript"));
   end CopticScript;
   function CuneiformScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CuneiformScript"));
   end CuneiformScript;
   function CypriotScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CypriotScript"));
   end CypriotScript;
   function CyrillicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CyrillicScript"));
   end CyrillicScript;
   function DeseretScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DeseretScript"));
   end DeseretScript;
   function DevanagariScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DevanagariScript"));
   end DevanagariScript;
   function DuployanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DuployanScript"));
   end DuployanScript;
   function EgyptianHieroglyphsScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EgyptianHieroglyphsScript"));
   end EgyptianHieroglyphsScript;
   function ElbasanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ElbasanScript"));
   end ElbasanScript;
   function EthiopicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "EthiopicScript"));
   end EthiopicScript;
   function FraserScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "FraserScript"));
   end FraserScript;
   function GeorgianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GeorgianScript"));
   end GeorgianScript;
   function GlagoliticScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GlagoliticScript"));
   end GlagoliticScript;
   function GothicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GothicScript"));
   end GothicScript;
   function GranthaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GranthaScript"));
   end GranthaScript;
   function GreekScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GreekScript"));
   end GreekScript;
   function GujaratiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GujaratiScript"));
   end GujaratiScript;
   function GurmukhiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "GurmukhiScript"));
   end GurmukhiScript;
   function HangulScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HangulScript"));
   end HangulScript;
   function HanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HanScript"));
   end HanScript;
   function HanunooScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HanunooScript"));
   end HanunooScript;
   function HanWithBopomofoScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HanWithBopomofoScript"));
   end HanWithBopomofoScript;
   function HatranScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HatranScript"));
   end HatranScript;
   function HebrewScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HebrewScript"));
   end HebrewScript;
   function HiraganaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HiraganaScript"));
   end HiraganaScript;
   function ImperialAramaicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ImperialAramaicScript"));
   end ImperialAramaicScript;
   function InscriptionalPahlaviScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InscriptionalPahlaviScript"));
   end InscriptionalPahlaviScript;
   function InscriptionalParthianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "InscriptionalParthianScript"));
   end InscriptionalParthianScript;
   function JamoScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JamoScript"));
   end JamoScript;
   function JapaneseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JapaneseScript"));
   end JapaneseScript;
   function JavaneseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "JavaneseScript"));
   end JavaneseScript;
   function KaithiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KaithiScript"));
   end KaithiScript;
   function KannadaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KannadaScript"));
   end KannadaScript;
   function KatakanaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KatakanaScript"));
   end KatakanaScript;
   function KayahLiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KayahLiScript"));
   end KayahLiScript;
   function KharoshthiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KharoshthiScript"));
   end KharoshthiScript;
   function KhmerScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KhmerScript"));
   end KhmerScript;
   function KhojkiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KhojkiScript"));
   end KhojkiScript;
   function KhudawadiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KhudawadiScript"));
   end KhudawadiScript;
   function KoreanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KoreanScript"));
   end KoreanScript;
   function LannaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LannaScript"));
   end LannaScript;
   function LaoScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LaoScript"));
   end LaoScript;
   function LatinScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LatinScript"));
   end LatinScript;
   function LepchaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LepchaScript"));
   end LepchaScript;
   function LimbuScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LimbuScript"));
   end LimbuScript;
   function LinearAScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LinearAScript"));
   end LinearAScript;
   function LinearBScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LinearBScript"));
   end LinearBScript;
   function LycianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LycianScript"));
   end LycianScript;
   function LydianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LydianScript"));
   end LydianScript;
   function MahajaniScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MahajaniScript"));
   end MahajaniScript;
   function MalayalamScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MalayalamScript"));
   end MalayalamScript;
   function MandaeanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MandaeanScript"));
   end MandaeanScript;
   function ManichaeanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ManichaeanScript"));
   end ManichaeanScript;
   function MarchenScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MarchenScript"));
   end MarchenScript;
   function MeiteiMayekScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MeiteiMayekScript"));
   end MeiteiMayekScript;
   function MendeKikakuiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MendeKikakuiScript"));
   end MendeKikakuiScript;
   function MendeScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MendeScript"));
   end MendeScript;
   function MeroiticCursiveScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MeroiticCursiveScript"));
   end MeroiticCursiveScript;
   function MeroiticScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MeroiticScript"));
   end MeroiticScript;
   function ModiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ModiScript"));
   end ModiScript;
   function MongolianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MongolianScript"));
   end MongolianScript;
   function MroScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MroScript"));
   end MroScript;
   function MultaniScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MultaniScript"));
   end MultaniScript;
   function MyanmarScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MyanmarScript"));
   end MyanmarScript;
   function NabataeanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NabataeanScript"));
   end NabataeanScript;
   function NewaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewaScript"));
   end NewaScript;
   function NewTaiLueScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NewTaiLueScript"));
   end NewTaiLueScript;
   function NkoScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NkoScript"));
   end NkoScript;
   function OdiaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OdiaScript"));
   end OdiaScript;
   function OriyaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OriyaScript"));
   end OriyaScript;
   function OghamScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OghamScript"));
   end OghamScript;
   function OlChikiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OlChikiScript"));
   end OlChikiScript;
   function OldHungarianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldHungarianScript"));
   end OldHungarianScript;
   function OldItalicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldItalicScript"));
   end OldItalicScript;
   function OldNorthArabianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldNorthArabianScript"));
   end OldNorthArabianScript;
   function OldPermicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldPermicScript"));
   end OldPermicScript;
   function OldPersianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldPersianScript"));
   end OldPersianScript;
   function OldSouthArabianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OldSouthArabianScript"));
   end OldSouthArabianScript;
   function OrkhonScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OrkhonScript"));
   end OrkhonScript;
   function OsageScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OsageScript"));
   end OsageScript;
   function OsmanyaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OsmanyaScript"));
   end OsmanyaScript;
   function PahawhHmongScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PahawhHmongScript"));
   end PahawhHmongScript;
   function PalmyreneScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PalmyreneScript"));
   end PalmyreneScript;
   function PauCinHauScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PauCinHauScript"));
   end PauCinHauScript;
   function PhagsPaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PhagsPaScript"));
   end PhagsPaScript;
   function PhoenicianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PhoenicianScript"));
   end PhoenicianScript;
   function PollardPhoneticScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PollardPhoneticScript"));
   end PollardPhoneticScript;
   function PsalterPahlaviScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PsalterPahlaviScript"));
   end PsalterPahlaviScript;
   function RejangScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RejangScript"));
   end RejangScript;
   function RunicScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "RunicScript"));
   end RunicScript;
   function SamaritanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SamaritanScript"));
   end SamaritanScript;
   function SaurashtraScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SaurashtraScript"));
   end SaurashtraScript;
   function SharadaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SharadaScript"));
   end SharadaScript;
   function ShavianScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ShavianScript"));
   end ShavianScript;
   function SiddhamScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SiddhamScript"));
   end SiddhamScript;
   function SignWritingScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SignWritingScript"));
   end SignWritingScript;
   function SimplifiedChineseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SimplifiedChineseScript"));
   end SimplifiedChineseScript;
   function SimplifiedHanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SimplifiedHanScript"));
   end SimplifiedHanScript;
   function SinhalaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SinhalaScript"));
   end SinhalaScript;
   function SoraSompengScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SoraSompengScript"));
   end SoraSompengScript;
   function SundaneseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SundaneseScript"));
   end SundaneseScript;
   function SylotiNagriScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SylotiNagriScript"));
   end SylotiNagriScript;
   function SyriacScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SyriacScript"));
   end SyriacScript;
   function TagalogScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TagalogScript"));
   end TagalogScript;
   function TagbanwaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TagbanwaScript"));
   end TagbanwaScript;
   function TaiLeScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TaiLeScript"));
   end TaiLeScript;
   function TaiVietScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TaiVietScript"));
   end TaiVietScript;
   function TakriScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TakriScript"));
   end TakriScript;
   function TamilScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TamilScript"));
   end TamilScript;
   function TangutScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TangutScript"));
   end TangutScript;
   function TeluguScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TeluguScript"));
   end TeluguScript;
   function ThaanaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ThaanaScript"));
   end ThaanaScript;
   function ThaiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ThaiScript"));
   end ThaiScript;
   function TibetanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TibetanScript"));
   end TibetanScript;
   function TifinaghScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TifinaghScript"));
   end TifinaghScript;
   function TirhutaScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TirhutaScript"));
   end TirhutaScript;
   function TraditionalChineseScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TraditionalChineseScript"));
   end TraditionalChineseScript;
   function TraditionalHanScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TraditionalHanScript"));
   end TraditionalHanScript;
   function UgariticScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UgariticScript"));
   end UgariticScript;
   function VaiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VaiScript"));
   end VaiScript;
   function VarangKshitiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VarangKshitiScript"));
   end VarangKshitiScript;
   function LastScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LastScript"));
   end LastScript;
   function YiScript return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Script");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YiScript"));
   end YiScript;
end QtAda6.QtCore.QLocale.Script;
