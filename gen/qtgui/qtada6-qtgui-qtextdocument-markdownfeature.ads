-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextdocument-markdownfeature.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextDocument.MarkdownFeature is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function MarkdownDialectCommonMark return Class;-- 0x0
   function MarkdownNoHTML return Class;-- 0x60
   function MarkdownDialectGitHub return Class;-- 0x4f0c
end QtAda6.QtGui.QTextDocument.MarkdownFeature;
