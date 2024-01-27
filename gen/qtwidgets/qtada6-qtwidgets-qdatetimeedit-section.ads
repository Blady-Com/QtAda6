-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdatetimeedit-section.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtWidgets.QDateTimeEdit.Section is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function NoSection return Class;-- 0x0
   function AmPmSection return Class;-- 0x1
   function MSecSection return Class;-- 0x2
   function SecondSection return Class;-- 0x4
   function MinuteSection return Class;-- 0x8
   function HourSection return Class;-- 0x10
   function TimeSections_Mask return Class;-- 0x1f
   function DaySection return Class;-- 0x100
   function MonthSection return Class;-- 0x200
   function YearSection return Class;-- 0x400
   function DateSections_Mask return Class;-- 0x700
end QtAda6.QtWidgets.QDateTimeEdit.Section;
