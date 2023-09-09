-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsysinfo-endian.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QSysInfo.Endian is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   BigEndian    : QSysInfo.Endian.Class;-- 0x0
   ByteOrder    : QSysInfo.Endian.Class;-- 0x1
   LittleEndian : QSysInfo.Endian.Class;-- 0x1
end QtAda6.QtCore.QSysInfo.Endian;
