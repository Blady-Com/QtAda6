-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextdocumentfragment.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtGui.QTextDocument.MarkdownFeature;
package QtAda6.QtGui.QTextDocumentFragment is
   type Optional_QtAda6_QtGui_QTextDocument is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (document_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function Create (range_K_P : access QtAda6.QtGui.QTextCursor.Inst'Class) return Class;
   function Create (rhs_P : access QtAda6.QtGui.QTextDocumentFragment.Inst'Class) return Class;
   procedure U_copy_U;
   function fromHtml
     (html_P : str; resourceProvider_P : Optional_QtAda6_QtGui_QTextDocument)
      return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class;
   function fromMarkdown
     (markdown_P : str; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class)
      return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class;
   function fromPlainText (plainText_P : str) return access QtAda6.QtGui.QTextDocumentFragment.Inst'Class;
   function isEmpty (self : access Inst) return bool;
   function toHtml (self : access Inst) return str;
   function toMarkdown
     (self : access Inst; features_P : access QtAda6.QtGui.QTextDocument.MarkdownFeature.Inst'Class) return str;
   function toPlainText (self : access Inst) return str;
   function toRawText (self : access Inst) return str;
end QtAda6.QtGui.QTextDocumentFragment;
