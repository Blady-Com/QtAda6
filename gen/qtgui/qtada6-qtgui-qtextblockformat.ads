-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextblockformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Qt.AlignmentFlag;
limited with QtAda6.QtGui.QTextBlockFormat.MarkerType;
limited with QtAda6.QtGui.QTextFormat.PageBreakFlag;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtGui.QTextOption.Tab;
package QtAda6.QtGui.QTextBlockFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextFormat.Inst with null record;
   subtype SEQUENCE_QtAda6_QtGui_QTextOption_Tab is QtAda6.QtGui.QTextOption.Tab.Class_Array;
   subtype LIST_QtAda6_QtGui_QTextOption_Tab is QtAda6.QtGui.QTextOption.Tab.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextBlockFormat_P : access QtAda6.QtGui.QTextBlockFormat.Inst'Class) return Class;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function bottomMargin (self : access Inst) return float;
   function headingLevel (self : access Inst) return int;
   function indent (self : access Inst) return int;
   function isValid (self : access Inst) return bool;
   function leftMargin (self : access Inst) return float;
   function lineHeight_F (self : access Inst) return float;
   function lineHeight_F (self : access Inst; scriptLineHeight_P : float; scaling_P : float) return float;
   function lineHeightType_F (self : access Inst) return int;
   function marker_F (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst'Class;
   function nonBreakableLines (self : access Inst) return bool;
   function pageBreakPolicy (self : access Inst) return access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class;
   function rightMargin (self : access Inst) return float;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setBottomMargin (self : access Inst; margin_P : float);
   procedure setHeadingLevel (self : access Inst; alevel_P : int);
   procedure setIndent (self : access Inst; indent_P : int);
   procedure setLeftMargin (self : access Inst; margin_P : float);
   procedure setLineHeight (self : access Inst; height_P : float; heightType_P : int);
   procedure setMarker (self : access Inst; marker_P : access QtAda6.QtGui.QTextBlockFormat.MarkerType.Inst'Class);
   procedure setNonBreakableLines (self : access Inst; b_P : bool);
   procedure setPageBreakPolicy
     (self : access Inst; flags_P : access QtAda6.QtGui.QTextFormat.PageBreakFlag.Inst'Class);
   procedure setRightMargin (self : access Inst; margin_P : float);
   procedure setTabPositions (self : access Inst; tabs_P : SEQUENCE_QtAda6_QtGui_QTextOption_Tab);
   procedure setTextIndent (self : access Inst; aindent_P : float);
   procedure setTopMargin (self : access Inst; margin_P : float);
   function tabPositions (self : access Inst) return LIST_QtAda6_QtGui_QTextOption_Tab;
   function textIndent (self : access Inst) return float;
   function topMargin (self : access Inst) return float;
end QtAda6.QtGui.QTextBlockFormat;
