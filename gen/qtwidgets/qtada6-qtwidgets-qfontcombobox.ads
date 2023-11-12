-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qfontcombobox.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
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
package QtAda6.QtWidgets.QFontComboBox is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Union_QtAda6_QtGui_QFont_str_Sequence_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QComboBox.Inst with null record;
   procedure Finalize (Self : in out Class);
   currentFontChanged : ClassVar_Signal;-- currentFontChanged(QFont)
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function currentFont (self : access Inst) return access QtAda6.QtGui.QFont.Inst'Class;
   function event (self : access Inst; e_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function fontFilters (self : access Inst) return access QtAda6.QtWidgets.QFontComboBox.FontFilter.Inst'Class;
   function sampleTextForFont (self : access Inst; fontFamily_P : str) return str;
   function sampleTextForSystem
     (self : access Inst; writingSystem_P : access QtAda6.QtGui.QFontDatabase.WritingSystem.Inst'Class) return str;
   procedure setCurrentFont (self : access Inst; f_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
   procedure setDisplayFont
     (self : access Inst; fontFamily_P : str; font_P : Union_QtAda6_QtGui_QFont_str_Sequence_str);
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