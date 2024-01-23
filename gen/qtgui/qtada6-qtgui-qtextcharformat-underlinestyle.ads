-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextcharformat-underlinestyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextCharFormat.UnderlineStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoUnderline return Class;-- 0x0
   function SingleUnderline return Class;-- 0x1
   function DashUnderline return Class;-- 0x2
   function DotLine return Class;-- 0x3
   function DashDotLine return Class;-- 0x4
   function DashDotDotLine return Class;-- 0x5
   function WaveUnderline return Class;-- 0x6
   function SpellCheckUnderline return Class;-- 0x7
end QtAda6.QtGui.QTextCharFormat.UnderlineStyle;
