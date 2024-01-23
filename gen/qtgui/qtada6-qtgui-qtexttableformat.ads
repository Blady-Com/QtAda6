-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtexttableformat.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextFormat;
limited with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextFrameFormat;
with QtAda6.QtGui.QTextLength;
package QtAda6.QtGui.QTextTableFormat is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextFrameFormat.Inst with null record;
   subtype LIST_QtAda6_QtGui_QTextLength is QtAda6.QtGui.QTextLength.Class_Array;
   subtype SEQUENCE_QtAda6_QtGui_QTextLength is QtAda6.QtGui.QTextLength.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QTextTableFormat_P : access QtAda6.QtGui.QTextTableFormat.Inst'Class) return Class;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class;
   procedure U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class;
   function borderCollapse (self : access Inst) return bool;
   function cellPadding (self : access Inst) return float;
   function cellSpacing (self : access Inst) return float;
   procedure clearColumnWidthConstraints (self : access Inst);
   function columnWidthConstraints (self : access Inst) return LIST_QtAda6_QtGui_QTextLength;
   function columns (self : access Inst) return int;
   function headerRowCount (self : access Inst) return int;
   function isValid (self : access Inst) return bool;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class);
   procedure setBorderCollapse (self : access Inst; borderCollapse_P : bool);
   procedure setCellPadding (self : access Inst; padding_P : float);
   procedure setCellSpacing (self : access Inst; spacing_P : float);
   procedure setColumnWidthConstraints (self : access Inst; constraints_P : SEQUENCE_QtAda6_QtGui_QTextLength);
   procedure setColumns (self : access Inst; columns_P : int);
   procedure setHeaderRowCount (self : access Inst; count_P : int);
end QtAda6.QtGui.QTextTableFormat;
