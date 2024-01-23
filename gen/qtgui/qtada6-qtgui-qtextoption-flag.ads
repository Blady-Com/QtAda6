-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextoption-flag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextOption.Flag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function ShowTabsAndSpaces return Class;-- 0x1
   function ShowLineAndParagraphSeparators return Class;-- 0x2
   function AddSpaceForLineAndParagraphSeparators return Class;-- 0x4
   function SuppressColors return Class;-- 0x8
   function ShowDocumentTerminator return Class;-- 0x10
   function IncludeTrailingSpaces return Class;-- 0x80000000
end QtAda6.QtGui.QTextOption.Flag;
