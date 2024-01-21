-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfiledevice-fileerror.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QFileDevice.FileError is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoError return Class;-- 0x0
   function ReadError return Class;-- 0x1
   function WriteError return Class;-- 0x2
   function FatalError return Class;-- 0x3
   function ResourceError return Class;-- 0x4
   function OpenError return Class;-- 0x5
   function AbortError return Class;-- 0x6
   function TimeOutError return Class;-- 0x7
   function UnspecifiedError return Class;-- 0x8
   function RemoveError return Class;-- 0x9
   function RenameError return Class;-- 0xa
   function PositionError return Class;-- 0xb
   function ResizeError return Class;-- 0xc
   function PermissionsError return Class;-- 0xd
   function CopyError return Class;-- 0xe
end QtAda6.QtCore.QFileDevice.FileError;
