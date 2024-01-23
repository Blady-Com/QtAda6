-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qrasterwindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QWindow;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtGui.QPaintDeviceWindow;
package QtAda6.QtGui.QRasterWindow is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QPaintDeviceWindow.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (parent_P : access QtAda6.QtGui.QWindow.Inst'Class := null) return Class;
   function metric
     (self : access Inst; metric_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   function redirected
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPaintDevice.Inst'Class;
end QtAda6.QtGui.QRasterWindow;
