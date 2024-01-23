-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextitem-renderflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextItem.RenderFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function RightToLeft return Class;-- 0x1
   function Overline return Class;-- 0x10
   function Underline return Class;-- 0x20
   function StrikeOut return Class;-- 0x40
   function Dummy return Class;-- 0xffffffff
end QtAda6.QtGui.QTextItem.RenderFlag;
