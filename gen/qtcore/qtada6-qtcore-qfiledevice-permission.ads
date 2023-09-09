-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfiledevice-permission.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QFileDevice.Permission is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   ExeOther   : QFileDevice.Permission.Class;-- 0x1
   WriteOther : QFileDevice.Permission.Class;-- 0x2
   ReadOther  : QFileDevice.Permission.Class;-- 0x4
   ExeGroup   : QFileDevice.Permission.Class;-- 0x10
   WriteGroup : QFileDevice.Permission.Class;-- 0x20
   ReadGroup  : QFileDevice.Permission.Class;-- 0x40
   ExeUser    : QFileDevice.Permission.Class;-- 0x100
   WriteUser  : QFileDevice.Permission.Class;-- 0x200
   ReadUser   : QFileDevice.Permission.Class;-- 0x400
   ExeOwner   : QFileDevice.Permission.Class;-- 0x1000
   WriteOwner : QFileDevice.Permission.Class;-- 0x2000
   ReadOwner  : QFileDevice.Permission.Class;-- 0x4000
end QtAda6.QtCore.QFileDevice.Permission;
