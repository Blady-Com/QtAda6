-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qrasterwindow.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPaintDevice;
package body QtAda6.QtGui.QRasterWindow is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : access QtAda6.QtGui.QWindow.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QRasterWindow");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function metric
     (self : access Inst; metric_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "metric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if metric_P /= null then metric_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end metric;
   function redirected
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPaintDevice.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QPaintDevice.Class := new QtAda6.QtGui.QPaintDevice.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "redirected");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end redirected;
end QtAda6.QtGui.QRasterWindow;
