-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfontdatabase.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QFontDatabase.WritingSystem;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtGui.QFontDatabase.SystemFont;
package QtAda6.QtGui.QFontDatabase is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QByteArray_bytes is new Any;
   type LIST_str is array (Positive range <>) of str;
   type LIST_int is array (Positive range <>) of int;
   type UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str is new Any;
   type UNION_QtAda6_QtGui_QFontInfo_QtAda6_QtGui_QFont is new Any;
   subtype LIST_QtAda6_QtGui_QFontDatabase_WritingSystem is QtAda6.QtGui.QFontDatabase.WritingSystem.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QFontDatabase_P : access QtAda6.QtGui.QFontDatabase.Inst'Class) return Class;
   procedure U_copy_U;
   function addApplicationFont (fileName_P : str) return int;
   function addApplicationFontFromData (fontData_P : UNION_QtAda6_QtCore_QByteArray_bytes) return int;
   function applicationFontFamilies (id_P : int) return LIST_str;
   function bold (family_P : str; style_P : str) return bool;
   function families
     (writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class := null) return LIST_str;
   function font (family_P : str; style_P : str; pointSize_P : int) return access QtAda6.QtGui.QFont.Inst'Class;
   function hasFamily (family_P : str) return bool;
   function isBitmapScalable (family_P : str; style_P : str := "") return bool;
   function isFixedPitch (family_P : str; style_P : str := "") return bool;
   function isPrivateFamily (family_P : str) return bool;
   function isScalable (family_P : str; style_P : str := "") return bool;
   function isSmoothlyScalable (family_P : str; style_P : str := "") return bool;
   function italic (family_P : str; style_P : str) return bool;
   function pointSizes (family_P : str; style_P : str := "") return LIST_int;
   function removeAllApplicationFonts return bool;
   function removeApplicationFont (id_P : int) return bool;
   function smoothSizes (family_P : str; style_P : str) return LIST_int;
   function standardSizes return LIST_int;
   function styleString (font_P : UNION_QtAda6_QtGui_QFont_str_SEQUENCE_str) return str;
   function styleString (fontInfo_P : UNION_QtAda6_QtGui_QFontInfo_QtAda6_QtGui_QFont) return str;
   function styles (family_P : str) return LIST_str;
   function systemFont_F
     (type_K_P : access QtAda6.QtGui.QFontDatabase.SystemFont.Inst'Class) return access QtAda6.QtGui.QFont.Inst'Class;
   function weight (family_P : str; style_P : str) return int;
   function writingSystemName (writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str;
   function writingSystemSample
     (writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str;
   function writingSystems return LIST_QtAda6_QtGui_QFontDatabase_WritingSystem;
   function writingSystems (family_P : str) return LIST_QtAda6_QtGui_QFontDatabase_WritingSystem;
end QtAda6.QtGui.QFontDatabase;
