-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsettings-format.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QSettings.Format is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NativeFormat return Class;-- 0x0
   function IniFormat return Class;-- 0x1
   function InvalidFormat return Class;-- 0x10
   function CustomFormat1 return Class;-- 0x11
   function CustomFormat2 return Class;-- 0x12
   function CustomFormat3 return Class;-- 0x13
   function CustomFormat4 return Class;-- 0x14
   function CustomFormat5 return Class;-- 0x15
   function CustomFormat6 return Class;-- 0x16
   function CustomFormat7 return Class;-- 0x17
   function CustomFormat8 return Class;-- 0x18
   function CustomFormat9 return Class;-- 0x19
   function CustomFormat10 return Class;-- 0x1a
   function CustomFormat11 return Class;-- 0x1b
   function CustomFormat12 return Class;-- 0x1c
   function CustomFormat13 return Class;-- 0x1d
   function CustomFormat14 return Class;-- 0x1e
   function CustomFormat15 return Class;-- 0x1f
   function CustomFormat16 return Class;-- 0x20
end QtAda6.QtCore.QSettings.Format;
