-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextblockgroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextBlock;
with QtAda6.QtGui.QTextObject;
package QtAda6.QtGui.QTextBlockGroup is
   type List_QtAda6_QtGui_QTextBlock is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QTextObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   procedure blockFormatChanged (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   procedure blockInserted (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   function blockList (self : access Inst) return List_QtAda6_QtGui_QTextBlock;
   procedure blockRemoved (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
end QtAda6.QtGui.QTextBlockGroup;
