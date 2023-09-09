-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qfiledevice-fileerror.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QFileDevice.FileError is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoError          : QFileDevice.FileError.Class;-- 0x0
   ReadError        : QFileDevice.FileError.Class;-- 0x1
   WriteError       : QFileDevice.FileError.Class;-- 0x2
   FatalError       : QFileDevice.FileError.Class;-- 0x3
   ResourceError    : QFileDevice.FileError.Class;-- 0x4
   OpenError        : QFileDevice.FileError.Class;-- 0x5
   AbortError       : QFileDevice.FileError.Class;-- 0x6
   TimeOutError     : QFileDevice.FileError.Class;-- 0x7
   UnspecifiedError : QFileDevice.FileError.Class;-- 0x8
   RemoveError      : QFileDevice.FileError.Class;-- 0x9
   RenameError      : QFileDevice.FileError.Class;-- 0xa
   PositionError    : QFileDevice.FileError.Class;-- 0xb
   ResizeError      : QFileDevice.FileError.Class;-- 0xc
   PermissionsError : QFileDevice.FileError.Class;-- 0xd
   CopyError        : QFileDevice.FileError.Class;-- 0xe
end QtAda6.QtCore.QFileDevice.FileError;
