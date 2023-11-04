-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdatetimeedit-section.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtWidgets.QDateTimeEdit.Section is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoSection         : QDateTimeEdit.Section.Class;-- 0x0
   AmPmSection       : QDateTimeEdit.Section.Class;-- 0x1
   MSecSection       : QDateTimeEdit.Section.Class;-- 0x2
   SecondSection     : QDateTimeEdit.Section.Class;-- 0x4
   MinuteSection     : QDateTimeEdit.Section.Class;-- 0x8
   HourSection       : QDateTimeEdit.Section.Class;-- 0x10
   TimeSections_Mask : QDateTimeEdit.Section.Class;-- 0x1f
   DaySection        : QDateTimeEdit.Section.Class;-- 0x100
   MonthSection      : QDateTimeEdit.Section.Class;-- 0x200
   YearSection       : QDateTimeEdit.Section.Class;-- 0x400
   DateSections_Mask : QDateTimeEdit.Section.Class;-- 0x700
end QtAda6.QtWidgets.QDateTimeEdit.Section;
