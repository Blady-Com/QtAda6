-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsyntaxhighlighter.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextBlock;
limited with QtAda6.QtGui.QTextBlockUserData;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QRgba64;
limited with QtAda6.QtCore.Qt.GlobalColor;
limited with QtAda6.QtGui.QFont;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QSyntaxHighlighter is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint is new Any;
   type UNION_QtAda6_QtGui_QFontstrSEQUENCE_str is new Any;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class) return Class;
   function Create (parent_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function currentBlock (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function currentBlockState (self : access Inst) return int;
   function currentBlockUserData (self : access Inst) return access QtAda6.QtGui.QTextBlockUserData.Inst'Class;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   function format (self : access Inst; pos_P : int) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   procedure highlightBlock (self : access Inst; text_P : str);
   function previousBlockState (self : access Inst) return int;
   procedure rehighlight (self : access Inst);
   procedure rehighlightBlock (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   procedure setCurrentBlockState (self : access Inst; newState_P : int);
   procedure setCurrentBlockUserData (self : access Inst; data_P : access QtAda6.QtGui.QTextBlockUserData.Inst'Class);
   procedure setDocument (self : access Inst; doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class);
   procedure setFormat
     (self    : access Inst; start_P : int; count_P : int;
      color_P : UNION_QtAda6_QtGui_QColorQtAda6_QtGui_QRgba64AnyQtAda6_QtCore_Qt_GlobalColorstrint);
   procedure setFormat
     (self : access Inst; start_P : int; count_P : int; font_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str);
   procedure setFormat
     (self : access Inst; start_P : int; count_P : int; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
end QtAda6.QtGui.QSyntaxHighlighter;
