-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfiledevice-permission.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QFileDevice.Permission is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function ExeOther return Class;-- 0x1
   function WriteOther return Class;-- 0x2
   function ReadOther return Class;-- 0x4
   function ExeGroup return Class;-- 0x10
   function WriteGroup return Class;-- 0x20
   function ReadGroup return Class;-- 0x40
   function ExeUser return Class;-- 0x100
   function WriteUser return Class;-- 0x200
   function ReadUser return Class;-- 0x400
   function ExeOwner return Class;-- 0x1000
   function WriteOwner return Class;-- 0x2000
   function ReadOwner return Class;-- 0x4000
end QtAda6.QtCore.QFileDevice.Permission;
