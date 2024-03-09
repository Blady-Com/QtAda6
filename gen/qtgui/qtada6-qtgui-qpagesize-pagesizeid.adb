-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpagesize-pagesizeid.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QPageSize.PageSizeId is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnsiA return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnsiA"));
   end AnsiA;
   function Letter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Letter"));
   end Letter;
   function Legal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Legal"));
   end Legal;
   function Executive return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Executive"));
   end Executive;
   function A0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A0"));
   end A0;
   function A1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A1"));
   end A1;
   function A2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A2"));
   end A2;
   function A3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A3"));
   end A3;
   function A4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A4"));
   end A4;
   function A5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A5"));
   end A5;
   function A6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A6"));
   end A6;
   function A7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A7"));
   end A7;
   function A8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A8"));
   end A8;
   function A9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A9"));
   end A9;
   function A10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A10"));
   end A10;
   function B0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B0"));
   end B0;
   function B1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B1"));
   end B1;
   function B2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B2"));
   end B2;
   function B3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B3"));
   end B3;
   function B4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B4"));
   end B4;
   function B5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B5"));
   end B5;
   function B6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B6"));
   end B6;
   function B7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B7"));
   end B7;
   function B8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B8"));
   end B8;
   function B9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B9"));
   end B9;
   function B10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B10"));
   end B10;
   function C5E return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "C5E"));
   end C5E;
   function EnvelopeC5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC5"));
   end EnvelopeC5;
   function Comm10E return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Comm10E"));
   end Comm10E;
   function Envelope10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Envelope10"));
   end Envelope10;
   function DLE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DLE"));
   end DLE;
   function EnvelopeDL return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeDL"));
   end EnvelopeDL;
   function Folio return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Folio"));
   end Folio;
   function AnsiB return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnsiB"));
   end AnsiB;
   function Ledger return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ledger"));
   end Ledger;
   function Tabloid return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tabloid"));
   end Tabloid;
   function Custom return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Custom"));
   end Custom;
   function A3Extra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A3Extra"));
   end A3Extra;
   function A4Extra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A4Extra"));
   end A4Extra;
   function A4Plus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A4Plus"));
   end A4Plus;
   function A4Small return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A4Small"));
   end A4Small;
   function A5Extra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "A5Extra"));
   end A5Extra;
   function B5Extra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "B5Extra"));
   end B5Extra;
   function JisB0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB0"));
   end JisB0;
   function JisB1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB1"));
   end JisB1;
   function JisB2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB2"));
   end JisB2;
   function JisB3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB3"));
   end JisB3;
   function JisB4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB4"));
   end JisB4;
   function JisB5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB5"));
   end JisB5;
   function JisB6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB6"));
   end JisB6;
   function JisB7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB7"));
   end JisB7;
   function JisB8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB8"));
   end JisB8;
   function JisB9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB9"));
   end JisB9;
   function JisB10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JisB10"));
   end JisB10;
   function AnsiC return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnsiC"));
   end AnsiC;
   function AnsiD return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnsiD"));
   end AnsiD;
   function AnsiE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnsiE"));
   end AnsiE;
   function LegalExtra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LegalExtra"));
   end LegalExtra;
   function LetterExtra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LetterExtra"));
   end LetterExtra;
   function LetterPlus return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LetterPlus"));
   end LetterPlus;
   function LetterSmall return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LetterSmall"));
   end LetterSmall;
   function TabloidExtra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TabloidExtra"));
   end TabloidExtra;
   function ArchA return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ArchA"));
   end ArchA;
   function ArchB return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ArchB"));
   end ArchB;
   function ArchC return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ArchC"));
   end ArchC;
   function ArchD return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ArchD"));
   end ArchD;
   function ArchE return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ArchE"));
   end ArchE;
   function Imperial7x9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial7x9"));
   end Imperial7x9;
   function Imperial8x10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial8x10"));
   end Imperial8x10;
   function Imperial9x11 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial9x11"));
   end Imperial9x11;
   function Imperial9x12 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial9x12"));
   end Imperial9x12;
   function Imperial10x11 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial10x11"));
   end Imperial10x11;
   function Imperial10x13 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial10x13"));
   end Imperial10x13;
   function Imperial10x14 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial10x14"));
   end Imperial10x14;
   function Imperial12x11 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial12x11"));
   end Imperial12x11;
   function Imperial15x11 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Imperial15x11"));
   end Imperial15x11;
   function ExecutiveStandard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExecutiveStandard"));
   end ExecutiveStandard;
   function Note return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Note"));
   end Note;
   function Quarto return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Quarto"));
   end Quarto;
   function Statement return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Statement"));
   end Statement;
   function SuperA return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SuperA"));
   end SuperA;
   function SuperB return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SuperB"));
   end SuperB;
   function Postcard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Postcard"));
   end Postcard;
   function DoublePostcard return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DoublePostcard"));
   end DoublePostcard;
   function Prc16K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Prc16K"));
   end Prc16K;
   function Prc32K return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Prc32K"));
   end Prc32K;
   function Prc32KBig return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Prc32KBig"));
   end Prc32KBig;
   function FanFoldUS return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FanFoldUS"));
   end FanFoldUS;
   function FanFoldGerman return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FanFoldGerman"));
   end FanFoldGerman;
   function FanFoldGermanLegal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FanFoldGermanLegal"));
   end FanFoldGermanLegal;
   function EnvelopeB4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeB4"));
   end EnvelopeB4;
   function EnvelopeB5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeB5"));
   end EnvelopeB5;
   function EnvelopeB6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeB6"));
   end EnvelopeB6;
   function EnvelopeC0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC0"));
   end EnvelopeC0;
   function EnvelopeC1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC1"));
   end EnvelopeC1;
   function EnvelopeC2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC2"));
   end EnvelopeC2;
   function EnvelopeC3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC3"));
   end EnvelopeC3;
   function EnvelopeC4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC4"));
   end EnvelopeC4;
   function EnvelopeC6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC6"));
   end EnvelopeC6;
   function EnvelopeC65 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC65"));
   end EnvelopeC65;
   function EnvelopeC7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeC7"));
   end EnvelopeC7;
   function Envelope9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Envelope9"));
   end Envelope9;
   function Envelope11 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Envelope11"));
   end Envelope11;
   function Envelope12 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Envelope12"));
   end Envelope12;
   function Envelope14 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Envelope14"));
   end Envelope14;
   function EnvelopeMonarch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeMonarch"));
   end EnvelopeMonarch;
   function EnvelopePersonal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePersonal"));
   end EnvelopePersonal;
   function EnvelopeChou3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeChou3"));
   end EnvelopeChou3;
   function EnvelopeChou4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeChou4"));
   end EnvelopeChou4;
   function EnvelopeInvite return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeInvite"));
   end EnvelopeInvite;
   function EnvelopeItalian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeItalian"));
   end EnvelopeItalian;
   function EnvelopeKaku2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeKaku2"));
   end EnvelopeKaku2;
   function EnvelopeKaku3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeKaku3"));
   end EnvelopeKaku3;
   function EnvelopePrc1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc1"));
   end EnvelopePrc1;
   function EnvelopePrc2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc2"));
   end EnvelopePrc2;
   function EnvelopePrc3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc3"));
   end EnvelopePrc3;
   function EnvelopePrc4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc4"));
   end EnvelopePrc4;
   function EnvelopePrc5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc5"));
   end EnvelopePrc5;
   function EnvelopePrc6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc6"));
   end EnvelopePrc6;
   function EnvelopePrc7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc7"));
   end EnvelopePrc7;
   function EnvelopePrc8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc8"));
   end EnvelopePrc8;
   function EnvelopePrc9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc9"));
   end EnvelopePrc9;
   function EnvelopePrc10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopePrc10"));
   end EnvelopePrc10;
   function EnvelopeYou4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EnvelopeYou4"));
   end EnvelopeYou4;
   function LastPageSize return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPageSize");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastPageSize"));
   end LastPageSize;
end QtAda6.QtGui.QPageSize.PageSizeId;
