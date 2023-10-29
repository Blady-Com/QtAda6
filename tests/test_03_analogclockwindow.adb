with QtAda6.QtCore.QTime;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QWindow;

with Interfaces.C; use Interfaces.C;

package body Test_03_AnalogClockWindow is

   procedure Finalize (Self : in out Class) is
   begin
      QtAda6.QtGui.QPolygon.Finalize (Self.a_hour_hand);
      QtAda6.QtGui.QPolygon.Finalize (Self.a_minute_hand);
      QtAda6.QtGui.QColor.Finalize (Self.a_hour_color);
      QtAda6.QtGui.QColor.Finalize (Self.a_minute_color);
--        QtAda6.QtGui.QRasterWindow.Finalize (QtAda6.QtGui.QRasterWindow.Class (Self));
   end Finalize;

   function Create return Class is
   begin
         --          super().__init__()
      return Self : constant Class :=
--            new Inst'(QtAda6.QtGui.QRasterWindow.Inst_Access (QtAda6.QtGui.QRasterWindow.Create).all with others => <>) do
         new Inst do
--           Self.setTitle ("Analog Clock");
--           Self.resize (200, 200);

--              self.a_timer := QtAda6.QtCore.QTimer.Create(self);
--              self.a_timer.timeout.connect(self.update);
--              self.a_timer.start(1000);

         Self.a_hour_hand :=
           QtAda6.QtGui.QPolygon.Create
             ((QtAda6.QtCore.QPoint.Create (7, 8), QtAda6.QtCore.QPoint.Create (-7, 8),
               QtAda6.QtCore.QPoint.Create (0, -40)));
         Self.a_minute_hand :=
           QtAda6.QtGui.QPolygon.Create
             ((QtAda6.QtCore.QPoint.Create (7, 8), QtAda6.QtCore.QPoint.Create (-7, 8),
               QtAda6.QtCore.QPoint.Create (0, -70)));

         Self.a_hour_color   := QtAda6.QtGui.QColor.Create (127, 0, 127);
         Self.a_minute_color := QtAda6.QtGui.QColor.Create (0, 127, 127, 191);
      end return;
   end Create;

   procedure paintEvent (self : access Inst; e : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
--           p : QtAda6.QtGui.QPainter.Class := QtAda6.QtGui.QPainter.Create (QtAda6.QtGui.QWindow.Inst_Access(self));
--           p : QtAda6.QtGui.QPainter.Class := QtAda6.QtGui.QPainter.Create(new QtAda6.QtGui.QWindow.Inst'(python_proxy => self.Python_Proxy));
      p : QtAda6.QtGui.QPainter.Class;
   begin
      p := QtAda6.QtGui.QPainter.Create (new QtAda6.QtGui.QWindow.Inst'(Python_Proxy => self.Python_Proxy));
      self.render (p);
   end paintEvent;

   procedure render (Self : access Inst; p : access QtAda6.QtGui.QPainter.Inst'Class) is
      l_width, l_heigth : QtAda6.int;
      l_side            : QtAda6.float;
      l_time            : QtAda6.QtCore.QTime.Class;
   begin
--        l_width  := Self.width;
--        l_heigth := Self.height;
      l_width  := 200;
      l_heigth := 200;
         --          p.fillRect(0, 0, l_width, l_heigth, QGradient.NightFade);
      p.fillRect (0, 0, l_width, l_heigth, 16#AC# * 256 * 256 + 16#93# * 256 + 16#D4#);

         --          p.setRenderHint(QPainter.Antialiasing);
      p.translate (QtAda6.float (l_width) / 2.0, QtAda6.float (l_heigth) / 2.0);

      l_side := QtAda6.float (QtAda6.int'Min (l_width, l_heigth));
      p.scale (l_side / 200.0, l_side / 200.0);
         --          p.setPen(Qt.NoPen);
      p.setPen (0);
      p.setBrush (Self.a_hour_color);
      l_time := QtAda6.QtCore.QTime.currentTime;

      p.save;
      p.rotate (30.0 * ((QtAda6.float (l_time.hour) + QtAda6.float (l_time.minute) / 60.0)));
      p.drawConvexPolygon (Self.a_hour_hand);
      p.restore;
      p.setPen (Self.a_hour_color);

      for i in 0 .. 12 - 1 loop
         p.drawLine (88, 0, 96, 0);
         p.rotate (30.0);
      end loop;

         --          p.setPen(Qt.NoPen);
      p.setPen (0);
      p.setBrush (Self.a_minute_color);

      p.save;
      p.rotate (6.0 * (QtAda6.float (l_time.minute) + QtAda6.float (l_time.second) / 60.0));
      p.drawConvexPolygon (Self.a_minute_hand);
      p.restore;
      p.setPen (Self.a_minute_color);

      for j in 0 .. 60 - 1 loop
         if (j mod 5) /= 0 then
            p.drawLine (92, 0, 96, 0);
         end if;
         p.rotate (6.0);
      end loop;

      QtAda6.QtCore.QTime.Finalize (l_time);
   end render;
end Test_03_AnalogClockWindow;
