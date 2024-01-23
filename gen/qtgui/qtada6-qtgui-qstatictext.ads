-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qstatictext.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QStaticText.PerformanceHint;
limited with QtAda6.QtGui.QTransform;
limited with QtAda6.QtGui.QFont;
limited with QtAda6.QtCore.Qt.TextFormat;
limited with QtAda6.QtGui.QTextOption;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtCore.QSizeF;
package QtAda6.QtGui.QStaticText is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   type UNION_QtAda6_QtGui_QTextOptionQtAda6_QtCore_Qt_AlignmentFlag is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtGui.QStaticText.Inst'Class) return Class;
   function Create (text_P : str) return Class;
   procedure U_copy_U;
   function performanceHint_F (self : access Inst) return access QtAda6.QtGui.QStaticText.PerformanceHint.Inst'Class;
   procedure prepare
     (self   : access Inst; matrix_P : access QtAda6.QtGui.QTransform.Inst'Class := null;
      font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str := null);
   procedure setPerformanceHint
     (self : access Inst; performanceHint_P : access QtAda6.QtGui.QStaticText.PerformanceHint.Inst'Class);
   procedure setText (self : access Inst; text_P : str);
   procedure setTextFormat (self : access Inst; textFormat_P : access QtAda6.QtCore.Qt.TextFormat.Inst'Class);
   procedure setTextOption
     (self : access Inst; textOption_P : UNION_QtAda6_QtGui_QTextOptionQtAda6_QtCore_Qt_AlignmentFlag);
   procedure setTextWidth (self : access Inst; textWidth_P : float);
   function size (self : access Inst) return access QtAda6.QtCore.QSizeF.Inst'Class;
   procedure swap (self : access Inst; other_P : access QtAda6.QtGui.QStaticText.Inst'Class);
   function text (self : access Inst) return str;
   function textFormat (self : access Inst) return access QtAda6.QtCore.Qt.TextFormat.Inst'Class;
   function textOption (self : access Inst) return access QtAda6.QtGui.QTextOption.Inst'Class;
   function textWidth (self : access Inst) return float;
end QtAda6.QtGui.QStaticText;
