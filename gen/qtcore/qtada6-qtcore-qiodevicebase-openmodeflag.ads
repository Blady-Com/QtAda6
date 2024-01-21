-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qiodevicebase-openmodeflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QIODeviceBase.OpenModeFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NotOpen return Class;-- 0x0
   function ReadOnly return Class;-- 0x1
   function WriteOnly return Class;-- 0x2
   function ReadWrite return Class;-- 0x3
   function Append return Class;-- 0x4
   function Truncate return Class;-- 0x8
   function Text return Class;-- 0x10
   function Unbuffered return Class;-- 0x20
   function NewOnly return Class;-- 0x40
   function ExistingOnly return Class;-- 0x80
end QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
