-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdatetimeedit-section.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QDateTimeEdit.Section is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NoSection"));
   end NoSection;
   function AmPmSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AmPmSection"));
   end AmPmSection;
   function MSecSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MSecSection"));
   end MSecSection;
   function SecondSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SecondSection"));
   end SecondSection;
   function MinuteSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MinuteSection"));
   end MinuteSection;
   function HourSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "HourSection"));
   end HourSection;
   function TimeSections_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "TimeSections_Mask"));
   end TimeSections_Mask;
   function DaySection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DaySection"));
   end DaySection;
   function MonthSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MonthSection"));
   end MonthSection;
   function YearSection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "YearSection"));
   end YearSection;
   function DateSections_Mask return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Section");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DateSections_Mask"));
   end DateSections_Mask;
end QtAda6.QtWidgets.QDateTimeEdit.Section;
