-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-textboundarytype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessible.TextBoundaryType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function CharBoundary return Class;-- 0x0
   function WordBoundary return Class;-- 0x1
   function SentenceBoundary return Class;-- 0x2
   function ParagraphBoundary return Class;-- 0x3
   function LineBoundary return Class;-- 0x4
   function NoBoundary return Class;-- 0x5
end QtAda6.QtGui.QAccessible.TextBoundaryType;
