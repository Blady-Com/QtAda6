-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextoption-flag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QTextOption.Flag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ShowTabsAndSpaces                     : QTextOption.Flag.Class;-- 0x1
   ShowLineAndParagraphSeparators        : QTextOption.Flag.Class;-- 0x2
   AddSpaceForLineAndParagraphSeparators : QTextOption.Flag.Class;-- 0x4
   SuppressColors                        : QTextOption.Flag.Class;-- 0x8
   ShowDocumentTerminator                : QTextOption.Flag.Class;-- 0x10
   IncludeTrailingSpaces                 : QTextOption.Flag.Class;-- 0x80000000
end QtAda6.QtGui.QTextOption.Flag;
