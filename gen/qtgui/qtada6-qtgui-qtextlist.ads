-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextlist.ads
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
limited with QtAda6.QtGui.QTextListFormat;
with QtAda6.QtGui.QTextBlockGroup;
package QtAda6.QtGui.QTextList is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QTextBlockGroup.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   procedure add (self : access Inst; block_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   function count (self : access Inst) return int;
   function format (self : access Inst) return access QtAda6.QtGui.QTextListFormat.Inst'Class;
   function item (self : access Inst; i_P : int) return access QtAda6.QtGui.QTextBlock.Inst'Class;
   function itemNumber (self : access Inst; arg_1_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return int;
   function itemText (self : access Inst; arg_1_P : access QtAda6.QtGui.QTextBlock.Inst'Class) return str;
   procedure remove (self : access Inst; arg_1_P : access QtAda6.QtGui.QTextBlock.Inst'Class);
   procedure removeItem (self : access Inst; i_P : int);
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextListFormat.Inst'Class);
end QtAda6.QtGui.QTextList;
