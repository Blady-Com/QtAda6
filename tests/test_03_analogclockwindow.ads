with QtAda6.QtCore.QTimer;
with QtAda6.QtGui.QRasterWindow;
with QtAda6.QtGui.QPainter;
with QtAda6.QtGui.QPolygon;
with QtAda6.QtGui.QColor;
with QtAda6.QtGui.QPaintEvent;

package Test_03_AnalogClockWindow is

   type Inst is new QtAda6.QtGui.QRasterWindow.Inst with record
      a_timer        : QtAda6.QtCore.QTimer.Class;
      a_hour_hand    : QtAda6.QtGui.QPolygon.Class;
      a_minute_hand  : QtAda6.QtGui.QPolygon.Class;
      a_hour_color   : QtAda6.QtGui.QColor.Class;
      a_minute_color : QtAda6.QtGui.QColor.Class;
   end record;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;

   procedure Finalize (Self : in out Class);

   function Create return Class;

   procedure paintEvent (self : access Inst; e : access QtAda6.QtGui.QPaintEvent.Inst'Class);

   procedure render (Self : access Inst; p : access QtAda6.QtGui.QPainter.Inst'Class);

end Test_03_AnalogClockWindow;
