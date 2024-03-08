-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocale-language.adb
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
package body QtAda6.QtCore.QLocale.Language is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AnyLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnyLanguage"));
   end AnyLanguage;
   function C return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "C"));
   end C;
   function Abkhazian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Abkhazian"));
   end Abkhazian;
   function Afar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Afar"));
   end Afar;
   function Afrikaans return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Afrikaans"));
   end Afrikaans;
   function Aghem return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Aghem"));
   end Aghem;
   function Akan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Akan"));
   end Akan;
   function Akkadian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Akkadian"));
   end Akkadian;
   function Akoose return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Akoose"));
   end Akoose;
   function Albanian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Albanian"));
   end Albanian;
   function AmericanSignLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AmericanSignLanguage"));
   end AmericanSignLanguage;
   function Amharic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Amharic"));
   end Amharic;
   function AncientEgyptian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AncientEgyptian"));
   end AncientEgyptian;
   function AncientGreek return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AncientGreek"));
   end AncientGreek;
   function Arabic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Arabic"));
   end Arabic;
   function Aragonese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Aragonese"));
   end Aragonese;
   function Aramaic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Aramaic"));
   end Aramaic;
   function Armenian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Armenian"));
   end Armenian;
   function Assamese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Assamese"));
   end Assamese;
   function Asturian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Asturian"));
   end Asturian;
   function Asu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Asu"));
   end Asu;
   function Atsam return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Atsam"));
   end Atsam;
   function Avaric return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Avaric"));
   end Avaric;
   function Avestan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Avestan"));
   end Avestan;
   function Aymara return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Aymara"));
   end Aymara;
   function Azerbaijani return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Azerbaijani"));
   end Azerbaijani;
   function Bafia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bafia"));
   end Bafia;
   function Balinese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Balinese"));
   end Balinese;
   function Bambara return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bambara"));
   end Bambara;
   function Bamun return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bamun"));
   end Bamun;
   function Bangla return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bangla"));
   end Bangla;
   function Bengali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bengali"));
   end Bengali;
   function Basaa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Basaa"));
   end Basaa;
   function Bashkir return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bashkir"));
   end Bashkir;
   function Basque return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Basque"));
   end Basque;
   function BatakToba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BatakToba"));
   end BatakToba;
   function Belarusian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Belarusian"));
   end Belarusian;
   function Byelorussian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Byelorussian"));
   end Byelorussian;
   function Bemba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bemba"));
   end Bemba;
   function Bena return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bena"));
   end Bena;
   function Bhojpuri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bhojpuri"));
   end Bhojpuri;
   function Bislama return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bislama"));
   end Bislama;
   function Blin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Blin"));
   end Blin;
   function Bodo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bodo"));
   end Bodo;
   function Bosnian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bosnian"));
   end Bosnian;
   function Breton return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Breton"));
   end Breton;
   function Buginese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Buginese"));
   end Buginese;
   function Bulgarian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bulgarian"));
   end Bulgarian;
   function Burmese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Burmese"));
   end Burmese;
   function Cantonese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cantonese"));
   end Cantonese;
   function Catalan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Catalan"));
   end Catalan;
   function Cebuano return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cebuano"));
   end Cebuano;
   function CentralAtlasTamazight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CentralAtlasTamazight"));
   end CentralAtlasTamazight;
   function CentralMoroccoTamazight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CentralMoroccoTamazight"));
   end CentralMoroccoTamazight;
   function CentralKurdish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CentralKurdish"));
   end CentralKurdish;
   function Chakma return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chakma"));
   end Chakma;
   function Chamorro return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chamorro"));
   end Chamorro;
   function Chechen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chechen"));
   end Chechen;
   function Cherokee return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cherokee"));
   end Cherokee;
   function Chickasaw return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chickasaw"));
   end Chickasaw;
   function Chiga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chiga"));
   end Chiga;
   function Chinese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chinese"));
   end Chinese;
   function Church return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Church"));
   end Church;
   function Chuvash return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chuvash"));
   end Chuvash;
   function Colognian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Colognian"));
   end Colognian;
   function Coptic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Coptic"));
   end Coptic;
   function Cornish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cornish"));
   end Cornish;
   function Corsican return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Corsican"));
   end Corsican;
   function Cree return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cree"));
   end Cree;
   function Croatian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Croatian"));
   end Croatian;
   function Czech return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Czech"));
   end Czech;
   function Danish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Danish"));
   end Danish;
   function Divehi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Divehi"));
   end Divehi;
   function Dogri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Dogri"));
   end Dogri;
   function Duala return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Duala"));
   end Duala;
   function Dutch return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Dutch"));
   end Dutch;
   function Bhutani return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bhutani"));
   end Bhutani;
   function Dzongkha return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Dzongkha"));
   end Dzongkha;
   function Embu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Embu"));
   end Embu;
   function English return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "English"));
   end English;
   function Erzya return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Erzya"));
   end Erzya;
   function Esperanto return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Esperanto"));
   end Esperanto;
   function Estonian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Estonian"));
   end Estonian;
   function Ewe return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ewe"));
   end Ewe;
   function Ewondo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ewondo"));
   end Ewondo;
   function Faroese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Faroese"));
   end Faroese;
   function Fijian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fijian"));
   end Fijian;
   function Filipino return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Filipino"));
   end Filipino;
   function Finnish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Finnish"));
   end Finnish;
   function French return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "French"));
   end French;
   function Friulian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Friulian"));
   end Friulian;
   function Fulah return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fulah"));
   end Fulah;
   function Gaelic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gaelic"));
   end Gaelic;
   function Ga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ga"));
   end Ga;
   function Galician return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Galician"));
   end Galician;
   function Ganda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ganda"));
   end Ganda;
   function Geez return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Geez"));
   end Geez;
   function Georgian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Georgian"));
   end Georgian;
   function German return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "German"));
   end German;
   function Gothic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gothic"));
   end Gothic;
   function Greek return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Greek"));
   end Greek;
   function Guarani return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Guarani"));
   end Guarani;
   function Gujarati return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gujarati"));
   end Gujarati;
   function Gusii return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Gusii"));
   end Gusii;
   function Haitian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Haitian"));
   end Haitian;
   function Hausa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hausa"));
   end Hausa;
   function Hawaiian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hawaiian"));
   end Hawaiian;
   function Hebrew return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hebrew"));
   end Hebrew;
   function Herero return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Herero"));
   end Herero;
   function Hindi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hindi"));
   end Hindi;
   function HiriMotu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HiriMotu"));
   end HiriMotu;
   function Hungarian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Hungarian"));
   end Hungarian;
   function Icelandic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Icelandic"));
   end Icelandic;
   function Ido return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ido"));
   end Ido;
   function Igbo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Igbo"));
   end Igbo;
   function InariSami return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InariSami"));
   end InariSami;
   function Indonesian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Indonesian"));
   end Indonesian;
   function Ingush return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ingush"));
   end Ingush;
   function Interlingua return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Interlingua"));
   end Interlingua;
   function Interlingue return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Interlingue"));
   end Interlingue;
   function Inuktitut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Inuktitut"));
   end Inuktitut;
   function Inupiak return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Inupiak"));
   end Inupiak;
   function Inupiaq return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Inupiaq"));
   end Inupiaq;
   function Irish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Irish"));
   end Irish;
   function Italian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Italian"));
   end Italian;
   function Japanese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Japanese"));
   end Japanese;
   function Javanese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Javanese"));
   end Javanese;
   function Jju return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Jju"));
   end Jju;
   function JolaFonyi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "JolaFonyi"));
   end JolaFonyi;
   function Kabuverdianu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kabuverdianu"));
   end Kabuverdianu;
   function Kabyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kabyle"));
   end Kabyle;
   function Kako return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kako"));
   end Kako;
   function Greenlandic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Greenlandic"));
   end Greenlandic;
   function Kalaallisut return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kalaallisut"));
   end Kalaallisut;
   function Kalenjin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kalenjin"));
   end Kalenjin;
   function Kamba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kamba"));
   end Kamba;
   function Kannada return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kannada"));
   end Kannada;
   function Kanuri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kanuri"));
   end Kanuri;
   function Kashmiri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kashmiri"));
   end Kashmiri;
   function Kazakh return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kazakh"));
   end Kazakh;
   function Kenyang return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kenyang"));
   end Kenyang;
   function Cambodian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cambodian"));
   end Cambodian;
   function Khmer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Khmer"));
   end Khmer;
   function Kiche return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kiche"));
   end Kiche;
   function Kikuyu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kikuyu"));
   end Kikuyu;
   function Kinyarwanda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kinyarwanda"));
   end Kinyarwanda;
   function Komi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Komi"));
   end Komi;
   function Kongo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kongo"));
   end Kongo;
   function Konkani return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Konkani"));
   end Konkani;
   function Korean return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Korean"));
   end Korean;
   function Koro return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Koro"));
   end Koro;
   function KoyraboroSenni return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "KoyraboroSenni"));
   end KoyraboroSenni;
   function KoyraChiini return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "KoyraChiini"));
   end KoyraChiini;
   function Kpelle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kpelle"));
   end Kpelle;
   function Kuanyama return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kuanyama"));
   end Kuanyama;
   function Kwanyama return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kwanyama"));
   end Kwanyama;
   function Kurdish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kurdish"));
   end Kurdish;
   function Kwasio return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kwasio"));
   end Kwasio;
   function Kirghiz return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kirghiz"));
   end Kirghiz;
   function Kyrgyz return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kyrgyz"));
   end Kyrgyz;
   function Lakota return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lakota"));
   end Lakota;
   function Langi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Langi"));
   end Langi;
   function Lao return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lao"));
   end Lao;
   function Latin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Latin"));
   end Latin;
   function Latvian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Latvian"));
   end Latvian;
   function Lezghian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lezghian"));
   end Lezghian;
   function Limburgish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Limburgish"));
   end Limburgish;
   function Lingala return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lingala"));
   end Lingala;
   function LiteraryChinese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LiteraryChinese"));
   end LiteraryChinese;
   function Lithuanian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lithuanian"));
   end Lithuanian;
   function Lojban return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Lojban"));
   end Lojban;
   function LowerSorbian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LowerSorbian"));
   end LowerSorbian;
   function LowGerman return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LowGerman"));
   end LowGerman;
   function LubaKatanga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LubaKatanga"));
   end LubaKatanga;
   function LuleSami return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LuleSami"));
   end LuleSami;
   function Luo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Luo"));
   end Luo;
   function Luxembourgish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Luxembourgish"));
   end Luxembourgish;
   function Luyia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Luyia"));
   end Luyia;
   function Macedonian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Macedonian"));
   end Macedonian;
   function Machame return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Machame"));
   end Machame;
   function Maithili return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Maithili"));
   end Maithili;
   function MakhuwaMeetto return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MakhuwaMeetto"));
   end MakhuwaMeetto;
   function Makonde return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Makonde"));
   end Makonde;
   function Malagasy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malagasy"));
   end Malagasy;
   function Malayalam return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malayalam"));
   end Malayalam;
   function Malay return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Malay"));
   end Malay;
   function Maltese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Maltese"));
   end Maltese;
   function Mandingo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mandingo"));
   end Mandingo;
   function Manipuri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Manipuri"));
   end Manipuri;
   function Manx return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Manx"));
   end Manx;
   function Maori return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Maori"));
   end Maori;
   function Mapuche return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mapuche"));
   end Mapuche;
   function Marathi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Marathi"));
   end Marathi;
   function Marshallese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Marshallese"));
   end Marshallese;
   function Masai return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Masai"));
   end Masai;
   function Mazanderani return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mazanderani"));
   end Mazanderani;
   function Mende return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mende"));
   end Mende;
   function Meru return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Meru"));
   end Meru;
   function Meta return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Meta"));
   end Meta;
   function Mohawk return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mohawk"));
   end Mohawk;
   function Mongolian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mongolian"));
   end Mongolian;
   function Morisyen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Morisyen"));
   end Morisyen;
   function Mundang return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Mundang"));
   end Mundang;
   function Muscogee return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Muscogee"));
   end Muscogee;
   function Nama return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nama"));
   end Nama;
   function NauruLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NauruLanguage"));
   end NauruLanguage;
   function Navaho return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Navaho"));
   end Navaho;
   function Navajo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Navajo"));
   end Navajo;
   function Ndonga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ndonga"));
   end Ndonga;
   function Nepali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nepali"));
   end Nepali;
   function Newari return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Newari"));
   end Newari;
   function Ngiemboon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ngiemboon"));
   end Ngiemboon;
   function Ngomba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ngomba"));
   end Ngomba;
   function NigerianPidgin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NigerianPidgin"));
   end NigerianPidgin;
   function Nko return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nko"));
   end Nko;
   function NorthernLuri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthernLuri"));
   end NorthernLuri;
   function NorthernSami return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthernSami"));
   end NorthernSami;
   function NorthernSotho return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthernSotho"));
   end NorthernSotho;
   function NorthNdebele return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthNdebele"));
   end NorthNdebele;
   function NorwegianBokmal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorwegianBokmal"));
   end NorwegianBokmal;
   function NorwegianNynorsk return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorwegianNynorsk"));
   end NorwegianNynorsk;
   function Nuer return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nuer"));
   end Nuer;
   function Chewa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Chewa"));
   end Chewa;
   function Nyanja return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nyanja"));
   end Nyanja;
   function Nyankole return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nyankole"));
   end Nyankole;
   function Occitan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Occitan"));
   end Occitan;
   function Odia return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Odia"));
   end Odia;
   function Oriya return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Oriya"));
   end Oriya;
   function Ojibwa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ojibwa"));
   end Ojibwa;
   function OldIrish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldIrish"));
   end OldIrish;
   function OldNorse return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldNorse"));
   end OldNorse;
   function OldPersian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldPersian"));
   end OldPersian;
   function Afan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Afan"));
   end Afan;
   function Oromo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Oromo"));
   end Oromo;
   function Osage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Osage"));
   end Osage;
   function Ossetic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ossetic"));
   end Ossetic;
   function Pahlavi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pahlavi"));
   end Pahlavi;
   function Palauan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Palauan"));
   end Palauan;
   function Pali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pali"));
   end Pali;
   function Papiamento return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Papiamento"));
   end Papiamento;
   function Pashto return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pashto"));
   end Pashto;
   function Persian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Persian"));
   end Persian;
   function Phoenician return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Phoenician"));
   end Phoenician;
   function Polish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Polish"));
   end Polish;
   function Portuguese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Portuguese"));
   end Portuguese;
   function Prussian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Prussian"));
   end Prussian;
   function Punjabi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Punjabi"));
   end Punjabi;
   function Quechua return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Quechua"));
   end Quechua;
   function Romanian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Romanian"));
   end Romanian;
   function RhaetoRomance return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RhaetoRomance"));
   end RhaetoRomance;
   function Romansh return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Romansh"));
   end Romansh;
   function Rombo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rombo"));
   end Rombo;
   function Kurundi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kurundi"));
   end Kurundi;
   function Rundi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rundi"));
   end Rundi;
   function Russian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Russian"));
   end Russian;
   function Rwa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rwa"));
   end Rwa;
   function Saho return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Saho"));
   end Saho;
   function Sakha return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sakha"));
   end Sakha;
   function Samburu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Samburu"));
   end Samburu;
   function Samoan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Samoan"));
   end Samoan;
   function Sango return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sango"));
   end Sango;
   function Sangu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sangu"));
   end Sangu;
   function Sanskrit return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sanskrit"));
   end Sanskrit;
   function Santali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Santali"));
   end Santali;
   function Sardinian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sardinian"));
   end Sardinian;
   function Saurashtra return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Saurashtra"));
   end Saurashtra;
   function Sena return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sena"));
   end Sena;
   function Serbian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Serbian"));
   end Serbian;
   function Shambala return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Shambala"));
   end Shambala;
   function Shona return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Shona"));
   end Shona;
   function SichuanYi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SichuanYi"));
   end SichuanYi;
   function Sicilian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sicilian"));
   end Sicilian;
   function Sidamo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sidamo"));
   end Sidamo;
   function Silesian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Silesian"));
   end Silesian;
   function Sindhi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sindhi"));
   end Sindhi;
   function Sinhala return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sinhala"));
   end Sinhala;
   function SkoltSami return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SkoltSami"));
   end SkoltSami;
   function Slovak return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Slovak"));
   end Slovak;
   function Slovenian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Slovenian"));
   end Slovenian;
   function Soga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Soga"));
   end Soga;
   function Somali return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Somali"));
   end Somali;
   function SouthernKurdish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthernKurdish"));
   end SouthernKurdish;
   function SouthernSami return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthernSami"));
   end SouthernSami;
   function SouthernSotho return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthernSotho"));
   end SouthernSotho;
   function SouthNdebele return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SouthNdebele"));
   end SouthNdebele;
   function Spanish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Spanish"));
   end Spanish;
   function StandardMoroccanTamazight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "StandardMoroccanTamazight"));
   end StandardMoroccanTamazight;
   function Sundanese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Sundanese"));
   end Sundanese;
   function Swahili return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Swahili"));
   end Swahili;
   function Swati return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Swati"));
   end Swati;
   function Swedish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Swedish"));
   end Swedish;
   function SwissGerman return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SwissGerman"));
   end SwissGerman;
   function Syriac return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Syriac"));
   end Syriac;
   function Tachelhit return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tachelhit"));
   end Tachelhit;
   function Tahitian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tahitian"));
   end Tahitian;
   function TaiDam return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TaiDam"));
   end TaiDam;
   function Taita return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Taita"));
   end Taita;
   function Tajik return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tajik"));
   end Tajik;
   function Tamil return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tamil"));
   end Tamil;
   function Taroko return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Taroko"));
   end Taroko;
   function Tasawaq return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tasawaq"));
   end Tasawaq;
   function Tatar return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tatar"));
   end Tatar;
   function Telugu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Telugu"));
   end Telugu;
   function Teso return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Teso"));
   end Teso;
   function Thai return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Thai"));
   end Thai;
   function Tibetan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tibetan"));
   end Tibetan;
   function Tigre return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tigre"));
   end Tigre;
   function Tigrinya return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tigrinya"));
   end Tigrinya;
   function TokelauLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TokelauLanguage"));
   end TokelauLanguage;
   function TokPisin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TokPisin"));
   end TokPisin;
   function Tongan return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tongan"));
   end Tongan;
   function Tsonga return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tsonga"));
   end Tsonga;
   function Tswana return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tswana"));
   end Tswana;
   function Turkish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Turkish"));
   end Turkish;
   function Turkmen return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Turkmen"));
   end Turkmen;
   function TuvaluLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TuvaluLanguage"));
   end TuvaluLanguage;
   function Tyap return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Tyap"));
   end Tyap;
   function Ugaritic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ugaritic"));
   end Ugaritic;
   function Ukrainian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ukrainian"));
   end Ukrainian;
   function UpperSorbian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UpperSorbian"));
   end UpperSorbian;
   function Urdu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Urdu"));
   end Urdu;
   function Uighur return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uighur"));
   end Uighur;
   function Uigur return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uigur"));
   end Uigur;
   function Uyghur return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uyghur"));
   end Uyghur;
   function Uzbek return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Uzbek"));
   end Uzbek;
   function Vai return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vai"));
   end Vai;
   function Venda return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Venda"));
   end Venda;
   function Vietnamese return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vietnamese"));
   end Vietnamese;
   function Volapuk return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Volapuk"));
   end Volapuk;
   function Vunjo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Vunjo"));
   end Vunjo;
   function Walloon return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Walloon"));
   end Walloon;
   function Walser return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Walser"));
   end Walser;
   function Warlpiri return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Warlpiri"));
   end Warlpiri;
   function Welsh return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Welsh"));
   end Welsh;
   function WesternBalochi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WesternBalochi"));
   end WesternBalochi;
   function Frisian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Frisian"));
   end Frisian;
   function WesternFrisian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WesternFrisian"));
   end WesternFrisian;
   function Walamo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Walamo"));
   end Walamo;
   function Wolaytta return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Wolaytta"));
   end Wolaytta;
   function Wolof return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Wolof"));
   end Wolof;
   function Xhosa return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Xhosa"));
   end Xhosa;
   function Yangben return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Yangben"));
   end Yangben;
   function Yiddish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Yiddish"));
   end Yiddish;
   function Yoruba return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Yoruba"));
   end Yoruba;
   function Zarma return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Zarma"));
   end Zarma;
   function Zhuang return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Zhuang"));
   end Zhuang;
   function Zulu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Zulu"));
   end Zulu;
   function Kaingang return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Kaingang"));
   end Kaingang;
   function Nheengatu return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Nheengatu"));
   end Nheengatu;
   function Haryanvi return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Haryanvi"));
   end Haryanvi;
   function NorthernFrisian return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NorthernFrisian"));
   end NorthernFrisian;
   function Rajasthani return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Rajasthani"));
   end Rajasthani;
   function Moksha return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Moksha"));
   end Moksha;
   function TokiPona return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TokiPona"));
   end TokiPona;
   function Pijin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pijin"));
   end Pijin;
   function LastLanguage return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LastLanguage"));
   end LastLanguage;
   function Obolo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocale");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Obolo"));
   end Obolo;
end QtAda6.QtCore.QLocale.Language;
