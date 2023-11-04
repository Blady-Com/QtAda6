-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdatetimeedit.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QDate;
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QDateTime;
limited with QtAda6.QtCore.QTime;
limited with QtAda6.QtCore.QMetaType.Type_K;
limited with QtAda6.QtCore.QCalendar;
limited with QtAda6.QtWidgets.QCalendarWidget;
limited with QtAda6.QtWidgets.QDateTimeEdit.Section;
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QFocusEvent;
limited with QtAda6.QtWidgets.QStyleOptionSpinBox;
limited with QtAda6.QtGui.QKeyEvent;
limited with QtAda6.QtGui.QMouseEvent;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.Qt.TimeSpec;
limited with QtAda6.QtCore.QSize;
limited with QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag;
limited with QtAda6.QtGui.QWheelEvent;
with QtAda6.QtWidgets.QAbstractSpinBox;
package QtAda6.QtWidgets.QDateTimeEdit is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtWidgets_QWidget is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtWidgets.QAbstractSpinBox.Inst with null record;
   procedure Finalize (Self : in out Class);
   dateChanged     : ClassVar_Signal;-- dateChanged(QDate)
   dateTimeChanged : ClassVar_Signal;-- dateTimeChanged(QDateTime)
   timeChanged     : ClassVar_Signal;-- timeChanged(QTime)
   function Create
     (d_P : access QtAda6.QtCore.QDate.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create
     (dt_P : access QtAda6.QtCore.QDateTime.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create (parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create
     (t_P : access QtAda6.QtCore.QTime.Inst'Class; parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function Create
     (val_P    : Any; parserType_P : access QtAda6.QtCore.QMetaType.Type_K.Inst'Class;
      parent_P : Optional_QtAda6_QtWidgets_QWidget) return Class;
   function calendar (self : access Inst) return access QtAda6.QtCore.QCalendar.Inst'Class;
   function calendarPopup (self : access Inst) return bool;
   function calendarWidget (self : access Inst) return access QtAda6.QtWidgets.QCalendarWidget.Inst'Class;
   procedure clear (self : access Inst);
   procedure clearMaximumDate (self : access Inst);
   procedure clearMaximumDateTime (self : access Inst);
   procedure clearMaximumTime (self : access Inst);
   procedure clearMinimumDate (self : access Inst);
   procedure clearMinimumDateTime (self : access Inst);
   procedure clearMinimumTime (self : access Inst);
   function currentSection (self : access Inst) return access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class;
   function currentSectionIndex (self : access Inst) return int;
   function date (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function dateTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function dateTimeFromText (self : access Inst; text_P : str) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function displayFormat (self : access Inst) return str;
   function displayedSections (self : access Inst) return access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class;
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   function fixup (self : access Inst; input_P : str) return str;
   procedure focusInEvent (self : access Inst; event_P : access QtAda6.QtGui.QFocusEvent.Inst'Class);
   function focusNextPrevChild (self : access Inst; next_P : bool) return bool;
   procedure initStyleOption (self : access Inst; option_P : access QtAda6.QtWidgets.QStyleOptionSpinBox.Inst'Class);
   procedure keyPressEvent (self : access Inst; event_P : access QtAda6.QtGui.QKeyEvent.Inst'Class);
   function maximumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function maximumDateTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function maximumTime (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class;
   function minimumDate (self : access Inst) return access QtAda6.QtCore.QDate.Inst'Class;
   function minimumDateTime (self : access Inst) return access QtAda6.QtCore.QDateTime.Inst'Class;
   function minimumTime (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class;
   procedure mousePressEvent (self : access Inst; event_P : access QtAda6.QtGui.QMouseEvent.Inst'Class);
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   function sectionAt
     (self : access Inst; index_P : int) return access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class;
   function sectionCount (self : access Inst) return int;
   function sectionText
     (self : access Inst; section_P : access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class) return str;
   procedure setCalendar (self : access Inst; calendar_P : access QtAda6.QtCore.QCalendar.Inst'Class);
   procedure setCalendarPopup (self : access Inst; enable_P : bool);
   procedure setCalendarWidget
     (self : access Inst; calendarWidget_P : access QtAda6.QtWidgets.QCalendarWidget.Inst'Class);
   procedure setCurrentSection
     (self : access Inst; section_P : access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class);
   procedure setCurrentSectionIndex (self : access Inst; index_P : int);
   procedure setDate (self : access Inst; date_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setDateRange
     (self : access Inst; min_P : access QtAda6.QtCore.QDate.Inst'Class; max_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setDateTime (self : access Inst; dateTime_P : access QtAda6.QtCore.QDateTime.Inst'Class);
   procedure setDateTimeRange
     (self  : access Inst; min_P : access QtAda6.QtCore.QDateTime.Inst'Class;
      max_P : access QtAda6.QtCore.QDateTime.Inst'Class);
   procedure setDisplayFormat (self : access Inst; format_P : str);
   procedure setMaximumDate (self : access Inst; max_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setMaximumDateTime (self : access Inst; dt_P : access QtAda6.QtCore.QDateTime.Inst'Class);
   procedure setMaximumTime (self : access Inst; max_P : access QtAda6.QtCore.QTime.Inst'Class);
   procedure setMinimumDate (self : access Inst; min_P : access QtAda6.QtCore.QDate.Inst'Class);
   procedure setMinimumDateTime (self : access Inst; dt_P : access QtAda6.QtCore.QDateTime.Inst'Class);
   procedure setMinimumTime (self : access Inst; min_P : access QtAda6.QtCore.QTime.Inst'Class);
   procedure setSelectedSection
     (self : access Inst; section_P : access QtAda6.QtWidgets.QDateTimeEdit.Section.Inst'Class);
   procedure setTime (self : access Inst; time_P : access QtAda6.QtCore.QTime.Inst'Class);
   procedure setTimeRange
     (self : access Inst; min_P : access QtAda6.QtCore.QTime.Inst'Class; max_P : access QtAda6.QtCore.QTime.Inst'Class);
   procedure setTimeSpec (self : access Inst; spec_P : access QtAda6.QtCore.Qt.TimeSpec.Inst'Class);
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class;
   procedure stepBy (self : access Inst; steps_P : int);
   function stepEnabled (self : access Inst) return access QtAda6.QtWidgets.QAbstractSpinBox.StepEnabledFlag.Inst'Class;
   function textFromDateTime (self : access Inst; dt_P : access QtAda6.QtCore.QDateTime.Inst'Class) return str;
   function time (self : access Inst) return access QtAda6.QtCore.QTime.Inst'Class;
   function timeSpec (self : access Inst) return access QtAda6.QtCore.Qt.TimeSpec.Inst'Class;
   function validate (self : access Inst; input_P : str; pos_P : int) return Object;
   procedure wheelEvent (self : access Inst; event_P : access QtAda6.QtGui.QWheelEvent.Inst'Class);
end QtAda6.QtWidgets.QDateTimeEdit;
