-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible-relationflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessible.RelationFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function Label return Class;-- 0x1
   function Labelled return Class;-- 0x2
   function Controller return Class;-- 0x4
   function Controlled return Class;-- 0x8
   function AllRelations return Class;-- 0xffffffff
end QtAda6.QtGui.QAccessible.RelationFlag;
