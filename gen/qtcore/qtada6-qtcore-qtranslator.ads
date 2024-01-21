-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtranslator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QLocale.Language;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QTranslator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function filePath (self : access Inst) return str;
   function isEmpty (self : access Inst) return bool;
   function language (self : access Inst) return str;
   function load (self : access Inst; data_P : bytes; directory_P : str := "") return bool;
   function load
     (self     : access Inst; filename_P : str; directory_P : str := ""; search_delimiters_P : str := "";
      suffix_P : str := "") return bool;
   function load
     (self     : access Inst; locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language; filename_P : str;
      prefix_P : str := ""; directory_P : str := ""; suffix_P : str := "") return bool;
   function translate
     (self : access Inst; context_P : bytes; sourceText_P : bytes; disambiguation_P : bytes := ""; n_P : int := 0)
      return str;
end QtAda6.QtCore.QTranslator;
