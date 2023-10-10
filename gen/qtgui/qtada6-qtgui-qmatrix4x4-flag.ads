-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmatrix4x4-flag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QMatrix4x4.Flag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Identity    : QMatrix4x4.Flag.Class;-- 0x0
   Translation : QMatrix4x4.Flag.Class;-- 0x1
   Scale       : QMatrix4x4.Flag.Class;-- 0x2
   Rotation2D  : QMatrix4x4.Flag.Class;-- 0x4
   Rotation    : QMatrix4x4.Flag.Class;-- 0x8
   Perspective : QMatrix4x4.Flag.Class;-- 0x10
   General     : QMatrix4x4.Flag.Class;-- 0x1f
end QtAda6.QtGui.QMatrix4x4.Flag;
