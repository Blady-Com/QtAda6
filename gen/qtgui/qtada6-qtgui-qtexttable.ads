-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtexttable.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtGui.QTextTableCell;
limited with QtAda6.QtGui.QTextTableFormat;
with QtAda6.QtGui.QTextFrame;
package QtAda6.QtGui.QTextTable is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextFrame.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   procedure appendColumns (self : access Inst; count_P : int);
   procedure appendRows (self : access Inst; count_P : int);
   function cellAt
     (self : access Inst; c_P : access QtAda6.QtGui.QTextCursor.Inst'Class)
      return access QtAda6.QtGui.QTextTableCell.Inst'Class;
   function cellAt (self : access Inst; position_P : int) return access QtAda6.QtGui.QTextTableCell.Inst'Class;
   function cellAt (self : access Inst; row_P : int; col_P : int) return access QtAda6.QtGui.QTextTableCell.Inst'Class;
   function columns (self : access Inst) return int;
   function format (self : access Inst) return access QtAda6.QtGui.QTextTableFormat.Inst'Class;
   procedure insertColumns (self : access Inst; pos_P : int; num_P : int);
   procedure insertRows (self : access Inst; pos_P : int; num_P : int);
   procedure mergeCells (self : access Inst; cursor_P : access QtAda6.QtGui.QTextCursor.Inst'Class);
   procedure mergeCells (self : access Inst; row_P : int; col_P : int; numRows_P : int; numCols_P : int);
   procedure removeColumns (self : access Inst; pos_P : int; num_P : int);
   procedure removeRows (self : access Inst; pos_P : int; num_P : int);
   procedure resize (self : access Inst; rows_P : int; cols_P : int);
   function rowEnd
     (self : access Inst; c_P : access QtAda6.QtGui.QTextCursor.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function rowStart
     (self : access Inst; c_P : access QtAda6.QtGui.QTextCursor.Inst'Class)
      return access QtAda6.QtGui.QTextCursor.Inst'Class;
   function rows (self : access Inst) return int;
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextTableFormat.Inst'Class);
   procedure splitCell (self : access Inst; row_P : int; col_P : int; numRows_P : int; numCols_P : int);
end QtAda6.QtGui.QTextTable;
