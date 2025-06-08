with QtAda6.QtCore.QTime;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QGradient.Preset;
with QtAda6.QtCore.Qt.PenStyle;
with QtAda6.QtGui.QPainter.RenderHint;

with Interfaces.C; use Interfaces.C;

with Py; use Py;
with Py.Proxy_Module;
with Proxy_Class;

package body Test_03_AnalogClockWindow is

   package Test_03_Proxy_Class is new Proxy_Class ("AnalogClockWindow", Inst, Inst_Access);

   function Test_03_paint_Event (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Test_03_paint_Event);

   function Test_03_paint_Event (Self : Object; Args : Object; Keywords : Object) return Object is
   begin
      Test_03_Proxy_Class.Get_Ada_Self (Keywords).paintEvent (null);
      return py.Proxy_Module.No_Value;
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Test_03_paint_Event;

   procedure Finalize (Self : in out Class) is
   begin
      QtAda6.QtGui.QPolygon.Finalize (Self.a_hour_hand);
      QtAda6.QtGui.QPolygon.Finalize (Self.a_minute_hand);
      QtAda6.QtGui.QColor.Finalize (Self.a_hour_color);
      QtAda6.QtGui.QColor.Finalize (Self.a_minute_color);
      QtAda6.QtCore.QTimer.Finalize (Self.a_timer);
      QtAda6.QtGui.QRasterWindow.Finalize (QtAda6.QtGui.QRasterWindow.Class (Self));
   end Finalize;

   function Create return Class is
      Python_Class : constant Handle :=
        Test_03_Proxy_Class.Derive_Class ("PySide6.QtGui", "QRasterWindow", ["paintEvent"]);
      Python_update : Handle;
      CB            : QtAda6.Any;
   begin
      Test_03_Proxy_Class.Set (Test_03_paint_Event'Access);

      return Self : constant Class := new Inst do
         Test_03_Proxy_Class.Init (Inst_Access (Self), Python_Class, True);

         Self.setTitle ("Analog Clock");
         Self.resize (200, 200);

         Python_update := Object_GetAttrString (Self.Python_Proxy, "update");
         CB            := new qtada6.Object'(Python_Proxy => Python_update);
         Self.a_timer  := QtAda6.QtCore.QTimer.Create (Self);
         Self.a_timer.timeout.U_get_U.connect (CB);
         Self.a_timer.start (1_000);
         QtAda6.Finalize (CB);

         Self.a_hour_hand :=
           QtAda6.QtGui.QPolygon.Create
             (QtAda6.QtCore.QPoint.Class_Array'
                (QtAda6.QtCore.QPoint.Create (7, 8), QtAda6.QtCore.QPoint.Create (-7, 8),
                 QtAda6.QtCore.QPoint.Create (0, -40)));
         Self.a_minute_hand :=
           QtAda6.QtGui.QPolygon.Create
             (QtAda6.QtCore.QPoint.Class_Array'
                (QtAda6.QtCore.QPoint.Create (7, 8), QtAda6.QtCore.QPoint.Create (-7, 8),
                 QtAda6.QtCore.QPoint.Create (0, -70)));

         Self.a_hour_color   := QtAda6.QtGui.QColor.Create (127, 0, 127, 255);
         Self.a_minute_color := QtAda6.QtGui.QColor.Create (0, 127, 127, 191);
      end return;
   end Create;

   procedure paintEvent (self : access Inst; e : access QtAda6.QtGui.QPaintEvent.Inst'Class) is
      w : QtAda6.QtGui.QWindow.Class  := new QtAda6.QtGui.QWindow.Inst'(Python_Proxy => self.Python_Proxy);
      p : QtAda6.QtGui.QPainter.Class := QtAda6.QtGui.QPainter.Create (w);
   begin
      self.render (p);
      QtAda6.QtGui.QPainter.Finalize (p);
      QtAda6.QtGui.QWindow.Finalize (w);
   end paintEvent;

   procedure render (Self : access Inst; p : access QtAda6.QtGui.QPainter.Inst'Class) is
      l_width, l_heigth : QtAda6.int;
      l_side            : QtAda6.float;
      l_time            : QtAda6.QtCore.QTime.Class;
   begin
      l_width  := Self.width;
      l_heigth := Self.height;
      p.fillRect (0, 0, l_width, l_heigth, QtAda6.QtGui.QGradient.Preset.NightFade);

      p.setRenderHint (QtAda6.QtGui.QPainter.RenderHint.Antialiasing);
      p.translate (QtAda6.float (l_width) / 2.0, QtAda6.float (l_heigth) / 2.0);

      l_side := QtAda6.float (QtAda6.int'Min (l_width, l_heigth));
      p.scale (l_side / 200.0, l_side / 200.0);

      p.setPen (QtAda6.QtCore.Qt.PenStyle.NoPen);
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

      p.setPen (QtAda6.QtCore.Qt.PenStyle.NoPen);
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
