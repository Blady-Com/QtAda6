-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpalette-colorgroup.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPalette.ColorGroup is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Active       : QPalette.ColorGroup.Class;-- 0x0
   Normal       : QPalette.ColorGroup.Class;-- 0x0
   Disabled     : QPalette.ColorGroup.Class;-- 0x1
   Inactive     : QPalette.ColorGroup.Class;-- 0x2
   NColorGroups : QPalette.ColorGroup.Class;-- 0x3
   Current      : QPalette.ColorGroup.Class;-- 0x4
   All_K        : QPalette.ColorGroup.Class;-- 0x5
end QtAda6.QtGui.QPalette.ColorGroup;
