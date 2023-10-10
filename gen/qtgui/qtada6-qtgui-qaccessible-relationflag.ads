-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-relationflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QAccessible.RelationFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Label        : QAccessible.RelationFlag.Class;-- 0x1
   Labelled     : QAccessible.RelationFlag.Class;-- 0x2
   Controller   : QAccessible.RelationFlag.Class;-- 0x4
   Controlled   : QAccessible.RelationFlag.Class;-- 0x8
   AllRelations : QAccessible.RelationFlag.Class;-- 0xffffffff
end QtAda6.QtGui.QAccessible.RelationFlag;
