-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdatetimeedit.adb
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
with QtAda6.QtWidgets.QAbstractSpinBox;
with QtAda6.QtCore.QDate;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QDateTime;
with QtAda6.QtCore.QTime;
with QtAda6.QtCore.QMetaType.Type_K;
with QtAda6.QtCore.QCalendar;
with QtAda6.QtWidgets.QCalendarWidget;
with QtAda6.QtWidgets.QDateTimeEdit.Section;
with QtAda6.QtCore.QEvent;
with QtAda6.QtGui.QFocusEvent;
with QtAda6.QtWidgets.QStyleOptionSpinBox;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QPaintEvent;
with QtAda6.QtCore.Qt.TimeSpec;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag;
with QtAda6.QtGui.QWheelEvent;
package body QtAda6.QtWidgets.QDateTimeEdit is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function dateChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "dateChanged"));
   end dateChanged;
   function dateTimeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "dateTimeChanged"));
   end dateTimeChanged;
   function timeChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "timeChanged"));
   end timeChanged;
   function Create
     (d_P : access QtAda6.QtCore.QDate.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if d_P /= null then d_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (dt_P : access QtAda6.QtCore.QDateTime.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if dt_P /= null then dt_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (t_P : access QtAda6.QtCore.QTime.Inst'Class; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
      return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if t_P /= null then t_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (val_P    : Any; parserType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDateTimeEdit");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if val_P /= null then val_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if parserType_P /= null then parserType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function calendar (self : access Inst) return access QtAda6.QtCore.QCalendar.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QCalendar.Class := new QtAda6.QtCore.QCalendar.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "calendar");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end calendar;
   function calendarPopup (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "calendarPopup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end calendarPopup;
   function calendarWidget (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QCalendarWidget.Class := new QtAda6.QtWidgets.QCalendarWidget.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "calendarWidget");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end calendarWidget;
   procedure clear (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clear;
   procedure clearMaximumDate (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMaximumDate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMaximumDate;
   procedure clearMaximumDateTime (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMaximumDateTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMaximumDateTime;
   procedure clearMaximumTime (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMaximumTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMaximumTime;
   procedure clearMinimumDate (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMinimumDate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMinimumDate;
   procedure clearMinimumDateTime (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMinimumDateTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMinimumDateTime;
   procedure clearMinimumTime (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMinimumTime");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMinimumTime;
   function currentSection (self : access Inst) return access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QDateTimeEdit.Section.Class := new QtAda6.QtWidgets.QDateTimeEdit.Section.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "currentSection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentSection;
   function currentSectionIndex (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentSectionIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentSectionIndex;
   function date (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "date");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end date;
   function dateTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "dateTime");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dateTime;
   function dateTimeFromText (self : access Inst; text_P : str) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateTimeFromText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dateTimeFromText;
   function displayFormat (self : access Inst) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "displayFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end displayFormat;
   function displayedSections (self : access Inst) return access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QDateTimeEdit.Section.Class := new QtAda6.QtWidgets.QDateTimeEdit.Section.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "displayedSections");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end displayedSections;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function fixup (self : access Inst; input_P : str) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "fixup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (input_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end fixup;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusInEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end focusInEvent;
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "focusNextPrevChild");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (next_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end focusNextPrevChild;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSpinBox.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "initStyleOption");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if option_P /= null then option_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end initStyleOption;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   function maximumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumDate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumDate;
   function maximumDateTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumDateTime");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumDateTime;
   function maximumTime (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumTime");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumTime;
   function minimumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumDate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumDate;
   function minimumDateTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QDateTime.Class := new QtAda6.QtCore.QDateTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumDateTime");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumDateTime;
   function minimumTime (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumTime");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumTime;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end paintEvent;
   function sectionAt
     (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QDateTimeEdit.Section.Class := new QtAda6.QtWidgets.QDateTimeEdit.Section.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sectionAt;
   function sectionCount (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end sectionCount;
   function sectionText
     (self : access Inst; section_P : access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class) return str
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "sectionText");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if section_P /= null then section_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end sectionText;
   procedure setCalendar (self : access Inst; calendar_P : access QtAda6.QtCore.QCalendar.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCalendar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if calendar_P /= null then calendar_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCalendar;
   procedure setCalendarPopup (self : access Inst; enable_P : bool) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCalendarPopup");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setCalendarPopup;
   procedure setCalendarWidget
     (self : access Inst; calendarWidget_P : access QtAda6.QtWidgets.QCalendarWidget.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCalendarWidget");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if calendarWidget_P /= null then calendarWidget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCalendarWidget;
   procedure setCurrentSection
     (self : access Inst; section_P : access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if section_P /= null then section_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentSection;
   procedure setCurrentSectionIndex (self : access Inst; index_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentSectionIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentSectionIndex;
   procedure setDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if date_P /= null then date_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDate;
   procedure setDateRange
     (self : access Inst; min_P : access QtAda6.QtCore.QDate.Inst'Class; max_P : access QtAda6.QtCore.QDate.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if min_P /= null then min_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if max_P /= null then max_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDateRange;
   procedure setDateTime (self : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dateTime_P /= null then dateTime_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDateTime;
   procedure setDateTimeRange
     (self  : access Inst; min_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      max_P : access QtAda6.QtCore.QDateTime.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateTimeRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if min_P /= null then min_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if max_P /= null then max_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDateTimeRange;
   procedure setDisplayFormat (self : access Inst; format_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDisplayFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (format_P));
      Result := Object_CallObject (Method, Args, True);
   end setDisplayFormat;
   procedure setMaximumDate (self : access Inst; max_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if max_P /= null then max_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumDate;
   procedure setMaximumDateTime (self : access Inst; dt_P : access QtAda6.QtCore.QDateTime.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumDateTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dt_P /= null then dt_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumDateTime;
   procedure setMaximumTime (self : access Inst; max_P : access QtAda6.QtCore.QTime.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if max_P /= null then max_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMaximumTime;
   procedure setMinimumDate (self : access Inst; min_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if min_P /= null then min_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumDate;
   procedure setMinimumDateTime (self : access Inst; dt_P : access QtAda6.QtCore.QDateTime.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumDateTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dt_P /= null then dt_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumDateTime;
   procedure setMinimumTime (self : access Inst; min_P : access QtAda6.QtCore.QTime.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if min_P /= null then min_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMinimumTime;
   procedure setSelectedSection
     (self : access Inst; section_P : access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectedSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if section_P /= null then section_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSelectedSection;
   procedure setTime (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if time_P /= null then time_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTime;
   procedure setTimeRange
     (self : access Inst; min_P : access QtAda6.QtCore.QTime.Inst'Class; max_P : access QtAda6.QtCore.QTime.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimeRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if min_P /= null then min_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if max_P /= null then max_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTimeRange;
   procedure setTimeSpec (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTimeSpec");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if spec_P /= null then spec_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setTimeSpec;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   procedure stepBy (self : access Inst; steps_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "stepBy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (steps_P));
      Result := Object_CallObject (Method, Args, True);
   end stepBy;
   function stepEnabled (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag.Class :=
        new QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "stepEnabled");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end stepEnabled;
   function textFromDateTime (self : access Inst; dt_P : access QtAda6.QtCore.QDateTime.Inst'Class) return str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textFromDateTime");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if dt_P /= null then dt_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end textFromDateTime;
   function time (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QTime.Class := new QtAda6.QtCore.QTime.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "time");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end time;
   function timeSpec (self : access Inst) return access QtAda6.QtCore.Qt.TimeSpec.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.TimeSpec.Class := new QtAda6.QtCore.Qt.TimeSpec.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "timeSpec");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end timeSpec;
   function validate (self : access Inst; input_P : str; pos_P : int) return access Object'Class is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "validate");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (input_P));
      Tuple_SetItem (Args, 1, Long_FromLong (pos_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end validate;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "wheelEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if event_P /= null then event_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end wheelEvent;
end QtAda6.QtWidgets.QDateTimeEdit;
