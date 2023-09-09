-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qiodevicebase-openmodeflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QIODeviceBase.OpenModeFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NotOpen      : QIODeviceBase.OpenModeFlag.Class;-- 0x0
   ReadOnly     : QIODeviceBase.OpenModeFlag.Class;-- 0x1
   WriteOnly    : QIODeviceBase.OpenModeFlag.Class;-- 0x2
   ReadWrite    : QIODeviceBase.OpenModeFlag.Class;-- 0x3
   Append       : QIODeviceBase.OpenModeFlag.Class;-- 0x4
   Truncate     : QIODeviceBase.OpenModeFlag.Class;-- 0x8
   Text         : QIODeviceBase.OpenModeFlag.Class;-- 0x10
   Unbuffered   : QIODeviceBase.OpenModeFlag.Class;-- 0x20
   NewOnly      : QIODeviceBase.OpenModeFlag.Class;-- 0x40
   ExistingOnly : QIODeviceBase.OpenModeFlag.Class;-- 0x80
end QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
