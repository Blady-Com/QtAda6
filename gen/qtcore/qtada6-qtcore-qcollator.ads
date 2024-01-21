-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcollator.ads
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
limited with QtAda6.QtCore.Qt.CaseSensitivity;
limited with QtAda6.QtCore.QCollatorSortKey;
package QtAda6.QtCore.QCollator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (arg_1_P : access QtAda6.QtCore.QCollator.Inst'Class) return Class;
   function Create (locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language) return Class;
   function U_call_U (self : access Inst; s1_P : str; s2_P : str) return bool;
   function caseSensitivity (self : access Inst) return access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class;
   function compare (self : access Inst; s1_P : bytes; len1_P : int; s2_P : bytes; len2_P : int) return int;
   function compare (self : access Inst; s1_P : str; s2_P : str) return int;
   function defaultCompare (s1_P : str; s2_P : str) return int;
   function defaultSortKey (key_P : str) return access QtAda6.QtCore.QCollatorSortKey.Inst'Class;
   function ignorePunctuation (self : access Inst) return bool;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   function numericMode (self : access Inst) return bool;
   procedure setCaseSensitivity (self : access Inst; cs_P : access QtAda6.QtCore.Qt.CaseSensitivity.Inst'Class);
   procedure setIgnorePunctuation (self : access Inst; on_P : bool);
   procedure setLocale (self : access Inst; locale_P : UNION_QtAda6_QtCore_QLocaleQtAda6_QtCore_QLocale_Language);
   procedure setNumericMode (self : access Inst; on_P : bool);
   function sortKey (self : access Inst; string_P : str) return access QtAda6.QtCore.QCollatorSortKey.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCollator.Inst'Class);
end QtAda6.QtCore.QCollator;
