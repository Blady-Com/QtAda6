-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextitem-renderflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QTextItem.RenderFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   RightToLeft : QTextItem.RenderFlag.Class;-- 0x1
   Overline    : QTextItem.RenderFlag.Class;-- 0x10
   Underline   : QTextItem.RenderFlag.Class;-- 0x20
   StrikeOut   : QTextItem.RenderFlag.Class;-- 0x40
   Dummy       : QTextItem.RenderFlag.Class;-- 0xffffffff
end QtAda6.QtGui.QTextItem.RenderFlag;
