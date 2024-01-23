-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qmatrix4x4-flag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QMatrix4x4.Flag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function Identity return Class;-- 0x0
   function Translation return Class;-- 0x1
   function Scale return Class;-- 0x2
   function Rotation2D return Class;-- 0x4
   function Rotation return Class;-- 0x8
   function Perspective return Class;-- 0x10
   function General return Class;-- 0x1f
end QtAda6.QtGui.QMatrix4x4.Flag;
