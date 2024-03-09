-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextblock.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextBlock.iterator;
limited with QtAda6.QtGui.QTextBlockFormat;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextLayout;
limited with QtAda6.QtGui.QTextBlockUserData;
limited with QtAda6.QtCore.Qt.LayoutDirection;
limited with QtAda6.QtGui.QTextLayout.FormatRange;
limited with QtAda6.QtGui.QTextList;
package QtAda6.QtGui.QTextBlock is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtGui_QTextLayout_FormatRange is QtAda6.QtGui.QTextLayout.FormatRange.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (o_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return Class;
   procedure U_copy_U;
   function U_iter_U (self : access Inst) return access Object'Class;
   function begin_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.iterator.Inst'Class;
   function blockFormat (self : access Inst) return access QtAda6.QtGui.QTextBlockFormat.Inst'Class;
   function blockFormatIndex (self : access Inst) return int;
   function blockNumber (self : access Inst) return int;
   function charFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function charFormatIndex (self : access Inst) return int;
   procedure clearLayout (self : access Inst);
   function contains (self : access Inst; position_P : int) return bool;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   function end_K (self : access Inst) return access QtAda6.QtGui.QTextBlock.iterator.Inst'Class;
   function firstLineNumber (self : access Inst) return int;
   function fragmentIndex (self : access Inst) return int;
   function isValid (self : access Inst) return bool;
   function isVisible (self : access Inst) return bool;
   function layout (self : access Inst) return access QtAda6.QtGui.QTextLayout.Inst'Class;
   function length (self : access Inst) return int;
   function lineCount (self : access Inst) return int;
   function next (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function position (self : access Inst) return int;
   function previous (self : access Inst) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function revision (self : access Inst) return int;
   procedure setLineCount (self : access Inst; count_P : int);
   procedure setRevision (self : access Inst; rev_P : int);
   procedure setUserData (self : access Inst; data_P : access QtAda6.QtGui.QTextBlockUserData.Inst'Class);
   procedure setUserState (self : access Inst; state_P : int);
   procedure setVisible (self : access Inst; visible_P : bool);
   function text (self : access Inst) return str;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class;
   function textFormats (self : access Inst) return LIST_QtAda6_QtGui_QTextLayout_FormatRange;
   function textList (self : access Inst) return access QtAda6.QtGui.QTextList.Inst'Class;
   function userData (self : access Inst) return access QtAda6.QtGui.QTextBlockUserData.Inst'Class;
   function userState (self : access Inst) return int;
end QtAda6.QtGui.QTextBlock;
