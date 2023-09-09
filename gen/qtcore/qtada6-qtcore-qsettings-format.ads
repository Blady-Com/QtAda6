-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsettings-format.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QSettings.Format is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NativeFormat   : QSettings.Format.Class;-- 0x0
   IniFormat      : QSettings.Format.Class;-- 0x1
   InvalidFormat  : QSettings.Format.Class;-- 0x10
   CustomFormat1  : QSettings.Format.Class;-- 0x11
   CustomFormat2  : QSettings.Format.Class;-- 0x12
   CustomFormat3  : QSettings.Format.Class;-- 0x13
   CustomFormat4  : QSettings.Format.Class;-- 0x14
   CustomFormat5  : QSettings.Format.Class;-- 0x15
   CustomFormat6  : QSettings.Format.Class;-- 0x16
   CustomFormat7  : QSettings.Format.Class;-- 0x17
   CustomFormat8  : QSettings.Format.Class;-- 0x18
   CustomFormat9  : QSettings.Format.Class;-- 0x19
   CustomFormat10 : QSettings.Format.Class;-- 0x1a
   CustomFormat11 : QSettings.Format.Class;-- 0x1b
   CustomFormat12 : QSettings.Format.Class;-- 0x1c
   CustomFormat13 : QSettings.Format.Class;-- 0x1d
   CustomFormat14 : QSettings.Format.Class;-- 0x1e
   CustomFormat15 : QSettings.Format.Class;-- 0x1f
   CustomFormat16 : QSettings.Format.Class;-- 0x20
end QtAda6.QtCore.QSettings.Format;
