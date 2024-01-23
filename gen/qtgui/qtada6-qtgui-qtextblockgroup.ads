-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextblockgroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
with QtAda6.QtGui.QTextObject;
with QtAda6.QtGui.QTextBlock;
package QtAda6.QtGui.QTextBlockGroup is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextObject.Inst with null record;
   subtype LIST_QtAda6_QtGui_QTextBlock is QtAda6.QtGui.QTextBlock.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   procedure blockFormatChanged (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   procedure blockInserted (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   function blockList (self : access Inst) return LIST_QtAda6_QtGui_QTextBlock;
   procedure blockRemoved (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
end QtAda6.QtGui.QTextBlockGroup;
