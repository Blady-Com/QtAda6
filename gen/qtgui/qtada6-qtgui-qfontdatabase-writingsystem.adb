-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfontdatabase-writingsystem.adb
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
package body QtAda6.QtGui.QFontDatabase.WritingSystem is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Any return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Any"));
   end Any;
   function Latin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Latin"));
   end Latin;
   function Greek return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Greek"));
   end Greek;
   function Cyrillic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cyrillic"));
   end Cyrillic;
   function Armenian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Armenian"));
   end Armenian;
   function Hebrew return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hebrew"));
   end Hebrew;
   function Arabic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Arabic"));
   end Arabic;
   function Syriac return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Syriac"));
   end Syriac;
   function Thaana return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Thaana"));
   end Thaana;
   function Devanagari return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Devanagari"));
   end Devanagari;
   function Bengali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bengali"));
   end Bengali;
   function Gurmukhi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gurmukhi"));
   end Gurmukhi;
   function Gujarati return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gujarati"));
   end Gujarati;
   function Oriya return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Oriya"));
   end Oriya;
   function Tamil return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tamil"));
   end Tamil;
   function Telugu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Telugu"));
   end Telugu;
   function Kannada return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kannada"));
   end Kannada;
   function Malayalam return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malayalam"));
   end Malayalam;
   function Sinhala return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sinhala"));
   end Sinhala;
   function Thai return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Thai"));
   end Thai;
   function Lao return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lao"));
   end Lao;
   function Tibetan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tibetan"));
   end Tibetan;
   function Myanmar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Myanmar"));
   end Myanmar;
   function Georgian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Georgian"));
   end Georgian;
   function Khmer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Khmer"));
   end Khmer;
   function SimplifiedChinese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SimplifiedChinese"));
   end SimplifiedChinese;
   function TraditionalChinese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TraditionalChinese"));
   end TraditionalChinese;
   function Japanese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Japanese"));
   end Japanese;
   function Korean return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Korean"));
   end Korean;
   function Vietnamese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vietnamese"));
   end Vietnamese;
   function Other return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Other"));
   end Other;
   function Symbol return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Symbol"));
   end Symbol;
   function Ogham return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ogham"));
   end Ogham;
   function Runic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Runic"));
   end Runic;
   function Nko return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nko"));
   end Nko;
   function WritingSystemsCount return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFontDatabase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WritingSystemsCount"));
   end WritingSystemsCount;
end QtAda6.QtGui.QFontDatabase.WritingSystem;
