-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qcalendarwidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QCalendar;
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtGui.QTextCharFormat;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.Qt.DayOfWeek;
limited with QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QResizeEvent;
limited with QtAda6.QtWidgets.QCalendarWidget.SelectionMode;
limited with QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QCalendarWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtWidgets.QWidget.Inst with null record;
   type DICT_QtAda6_QtCore_QDate_QtAda6_QtGui_QTextCharFormat is record
      C0 : access QtAda6.QtCore.QDate.Inst'Class;
      C1 : access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   end record;
   procedure Finalize (Self : in out Class);
   function activated (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- activated(QDate)
   function clicked (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- clicked(QDate)
   function currentPageChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentPageChanged(int,int)
   function selectionChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- selectionChanged()
   function Create (parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null) return Class;
   function calendar (self : access Inst) return access QtAda6.QtCore.QCalendar.Inst'Class;
   function dateEditAcceptDelay (self : access Inst) return int;
   function dateTextFormat (self : access Inst) return DICT_QtAda6_QtCore_QDate_QtAda6_QtGui_QTextCharFormat;
   function dateTextFormat
     (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class)
      return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function eventFilter
     (self    : access Inst; watched_P : access QtAda6.QtCore.QObject.Inst'Class;
      event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function firstDayOfWeek (self : access Inst) return access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class;
   function headerTextFormat (self : access Inst) return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function horizontalHeaderFormat_F
     (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat.Inst'Class;
   function isDateEditEnabled (self : access Inst) return bool;
   function isGridVisible (self : access Inst) return bool;
   function isNavigationBarVisible (self : access Inst) return bool;
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function maximumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function minimumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function minimumSizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   function monthShown (self : access Inst) return int;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintCell
     (self   : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class;
      rect_P : access QtAda6.QtCore.QRect.Inst'Class; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure resizeEvent (self : access Inst; event_P : access QtAda6.QtGui.QResizeEvent.Inst'Class);
   function selectedDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function selectionMode_F
     (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.SelectionMode.Inst'Class;
   procedure setCalendar (self : access Inst; calendar_P : access QtAda6.QtCore.QCalendar.Inst'Class);
   procedure setCurrentPage (self : access Inst; year_P : int; month_P : int);
   procedure setDateEditAcceptDelay (self : access Inst; delay_K_P : int);
   procedure setDateEditEnabled (self : access Inst; enable_P : bool);
   procedure setDateRange
     (self : access Inst; min_P : access QtAda6.QtCore.QDate.Inst'Class; max_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setDateTextFormat
     (self     : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class;
      format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure setFirstDayOfWeek (self : access Inst; dayOfWeek_P : access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class);
   procedure setGridVisible (self : access Inst; show_P : bool);
   procedure setHeaderTextFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure setHorizontalHeaderFormat
     (self : access Inst; format_P : access QtAda6.QtWidgets.QCalendarWidget.HorizontalHeaderFormat.Inst'Class);
   procedure setMaximumDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setMinimumDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setNavigationBarVisible (self : access Inst; visible_P : bool);
   procedure setSelectedDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setSelectionMode
     (self : access Inst; mode_P : access QtAda6.QtWidgets.QCalendarWidget.SelectionMode.Inst'Class);
   procedure setVerticalHeaderFormat
     (self : access Inst; format_P : access QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat.Inst'Class);
   procedure setWeekdayTextFormat
     (self     : access Inst; dayOfWeek_P : access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class;
      format_P : access QtAda6.QtGui.QTextCharFormat.Inst'Class);
   procedure showNextMonth (self : access Inst);
   procedure showNextYear (self : access Inst);
   procedure showPreviousMonth (self : access Inst);
   procedure showPreviousYear (self : access Inst);
   procedure showSelectedDate (self : access Inst);
   procedure showToday (self : access Inst);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure updateCell (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure updateCells (self : access Inst);
   function verticalHeaderFormat_F
     (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.VerticalHeaderFormat.Inst'Class;
   function weekdayTextFormat
     (self : access Inst; dayOfWeek_P : access QtAda6.QtCore.Qt.DayOfWeek.Inst'Class)
      return access QtAda6.QtGui.QTextCharFormat.Inst'Class;
   function yearShown (self : access Inst) return int;
end QtAda6.QtWidgets.QCalendarWidget;
