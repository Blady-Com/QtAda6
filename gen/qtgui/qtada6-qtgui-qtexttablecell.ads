-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtexttablecell.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextFrame.iterator;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtGui.QTextCharFormat;
package QtAda6.QtGui.QTextTableCell is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (o_P : access QtAda6.QtGui.QTextTableCell.Inst'Class) return Class;
   procedure U_copy_U;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextFrame.iterator.Inst'Class;
   function column (self : access Inst) return int;
   function columnSpan (self : access Inst) return int;
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextFrame.iterator.Inst'Class;
   function firstCursorPosition (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function firstPosition (self : access Inst) return int;
   function format (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function isValid (self : access Inst) return bool;
   function lastCursorPosition (self : access Inst) return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function lastPosition (self : access Inst) return int;
   function row (self : access Inst) return int;
   function rowSpan (self : access Inst) return int;
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   function tableCellFormatIndex (self : access Inst) return int;
end QtAda6.QtGui.QTextTableCell;
