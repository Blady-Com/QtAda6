-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qcalendar-system.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QCalendar.System is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function User return Class;-- -0x1
   function Gregorian return Class;-- 0x0
   function Julian return Class;-- 0x8
   function Milankovic return Class;-- 0x9
   function Jalali return Class;-- 0xa
   function IslamicCivil return Class;-- 0xb
   function Last return Class;-- 0xb
end QtAda6.QtCore.QCalendar.System;
