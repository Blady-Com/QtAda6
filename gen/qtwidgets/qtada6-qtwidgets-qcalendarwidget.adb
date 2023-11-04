-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qcalendarwidget.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QCalendar;
with QtAda6.QtCore.QDate;
with QtAda6.QtGui.QTextCharFormat;
with QtAda6.QtCore.QEvent;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.DayOfWeek;
with QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat;
with QtAda6.QtGui.QKeyEvent;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QMouseEvent;
with QtAda6.QtGui.QPainter;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QResizeEvent;
with QtAda6.QtWidgets.QCalendarWidget.SelectionMode;
with QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat;
package body QtAda6.QtWidgets.QCalendarWidget is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QCalendarWidget");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function calendar (self : access Inst) return access QtAda6.QtCore.QCalendar.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCalendar.Class := new QtAda6.QtCore.QCalendar.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "calendar");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end calendar;
   function dateEditAcceptDelay (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateEditAcceptDelay");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end dateEditAcceptDelay;
   function dateTextFormat (self : access Inst) return Dict_QtAda6_QtCore_QDate_QtAda6_QtGui_QTextCharFormat is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateTextFormat");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end dateTextFormat;
   function dateTextFormat
     (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class)
      return access QtAda6.QtGui.QTextCharFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "dateTextFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dateTextFormat;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "event");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end event;
   function eventFilter
     (self    : access Inst; watched_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "eventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, watched_P.Python_Proxy);
      Tuple_SetItem (Args, 1, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end eventFilter;
   function firstDayOfWeek (self : access Inst) return access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.DayOfWeek.Class := new QtAda6.QtCore.Qt.DayOfWeek.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "firstDayOfWeek");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end firstDayOfWeek;
   function headerTextFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "headerTextFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end headerTextFormat;
   function horizontalHeaderFormat_F
     (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat.Class :=
        new QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "horizontalHeaderFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end horizontalHeaderFormat_F;
   function isDateEditEnabled (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isDateEditEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDateEditEnabled;
   function isGridVisible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isGridVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isGridVisible;
   function isNavigationBarVisible (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNavigationBarVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNavigationBarVisible;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "keyPressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end keyPressEvent;
   function maximumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumDate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumDate;
   function minimumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumDate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumDate;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSizeHint;
   function monthShown (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "monthShown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end monthShown;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mousePressEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end mousePressEvent;
   procedure paintCell
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; date_P : access QtAda6.QtCore.QDate.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "paintCell");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, painter_P.Python_Proxy);
      Tuple_SetItem (Args, 1, rect_P.Python_Proxy);
      Tuple_SetItem (Args, 2, date_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end paintCell;
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resizeEvent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, event_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end resizeEvent;
   function selectedDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QDate.Class := new QtAda6.QtCore.QDate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectedDate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectedDate;
   function selectionMode_F (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.SelectionMode.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QCalendarWidget.SelectionMode.Class :=
        new QtAda6.QtWidgets.QCalendarWidget.SelectionMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "selectionMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end selectionMode_F;
   procedure setCalendar (self : access Inst; calendar_P : access QtAda6.QtCore.QCalendar.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCalendar");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, calendar_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setCalendar;
   procedure setCurrentPage (self : access Inst; year_P : int; month_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentPage");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (year_P));
      Tuple_SetItem (Args, 1, Long_FromLong (month_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentPage;
   procedure setDateEditAcceptDelay (self : access Inst; delay_K_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateEditAcceptDelay");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (delay_K_P));
      Result := Object_CallObject (Method, Args, True);
   end setDateEditAcceptDelay;
   procedure setDateEditEnabled (self : access Inst; enable_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateEditEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (enable_P));
      Result := Object_CallObject (Method, Args, True);
   end setDateEditEnabled;
   procedure setDateRange
     (self : access Inst; min_P : access QtAda6.QtCore.QDate.Inst'Class; max_P : access QtAda6.QtCore.QDate.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateRange");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, min_P.Python_Proxy);
      Tuple_SetItem (Args, 1, max_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDateRange;
   procedure setDateTextFormat
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDateTextFormat");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setDateTextFormat;
   procedure setFirstDayOfWeek (self : access Inst; dayOfWeek_P : access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFirstDayOfWeek");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, dayOfWeek_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFirstDayOfWeek;
   procedure setGridVisible (self : access Inst; show_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGridVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (show_P));
      Result := Object_CallObject (Method, Args, True);
   end setGridVisible;
   procedure setHeaderTextFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderTextFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setHeaderTextFormat;
   procedure setHorizontalHeaderFormat
     (self : access Inst; format_P : access QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHorizontalHeaderFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setHorizontalHeaderFormat;
   procedure setMaximumDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMaximumDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setMaximumDate;
   procedure setMinimumDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMinimumDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setMinimumDate;
   procedure setNavigationBarVisible (self : access Inst; visible_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setNavigationBarVisible");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (visible_P));
      Result := Object_CallObject (Method, Args, True);
   end setNavigationBarVisible;
   procedure setSelectedDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectedDate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSelectedDate;
   procedure setSelectionMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QCalendarWidget.SelectionMode.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSelectionMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, mode_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setSelectionMode;
   procedure setVerticalHeaderFormat
     (self : access Inst; format_P : access QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setVerticalHeaderFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setVerticalHeaderFormat;
   procedure setWeekdayTextFormat
     (self     : access Inst; dayOfWeek_P : access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class;
      format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWeekdayTextFormat");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, dayOfWeek_P.Python_Proxy);
      Tuple_SetItem (Args, 1, format_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setWeekdayTextFormat;
   procedure showNextMonth (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showNextMonth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showNextMonth;
   procedure showNextYear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showNextYear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showNextYear;
   procedure showPreviousMonth (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showPreviousMonth");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showPreviousMonth;
   procedure showPreviousYear (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showPreviousYear");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showPreviousYear;
   procedure showSelectedDate (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showSelectedDate");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showSelectedDate;
   procedure showToday (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "showToday");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end showToday;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   procedure updateCell (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCell");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, date_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end updateCell;
   procedure updateCells (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "updateCells");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end updateCells;
   function verticalHeaderFormat_F
     (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat.Class :=
        new QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "verticalHeaderFormat");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end verticalHeaderFormat_F;
   function weekdayTextFormat
     (self : access Inst; dayOfWeek_P : access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class)
      return access QtAda6.QtGui.QTextCharFormat.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextCharFormat.Class := new QtAda6.QtGui.QTextCharFormat.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "weekdayTextFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, dayOfWeek_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end weekdayTextFormat;
   function yearShown (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "yearShown");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end yearShown;
end QtAda6.QtWidgets.QCalendarWidget;
