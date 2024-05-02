-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfontcombobox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtWidgets.QFontComboBox.FontFilter;
limited with QtAda6.QtGui.QFontDatabase.WritingSystem;
limited with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QComboBox;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QFontComboBox is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QComboBox.Inst with null record;
   type SEQUENCE_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function currentFontChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentFontChanged(QFont)
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function fontFilters (self : access Inst) return access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class;
   function sampleTextForFont (self : access Inst; fontFamily_P : str) return str;
   function sampleTextForSystem
     (self : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str;
   procedure setCurrentFont (self : access Inst; f_P : access QtAda6.QtGui.QFont.Inst'Class);
   procedure setCurrentFont (self : access Inst; f_P : str);
   procedure setCurrentFont (self : access Inst; f_P : SEQUENCE_str);
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : access QtAda6.QtGui.QFont.Inst'Class);
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : str);
   procedure setDisplayFont (self : access Inst; fontFamily_P : str; font_P : SEQUENCE_str);
   procedure setFontFilters
     (self : access Inst; filters_P : access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class);
   procedure setSampleTextForFont (self : access Inst; fontFamily_P : str; sampleText_P : str);
   procedure setSampleTextForSystem
     (self         : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class;
      sampleText_P : str);
   procedure setWritingSystem
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function writingSystem (self : access Inst) return access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class;
end QtAda6.QtWidgets.QFontComboBox;
