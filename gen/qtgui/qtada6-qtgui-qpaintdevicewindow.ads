-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintdevicewindow.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QEvent;
limited with QtAda6.QtGui.QExposeEvent;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtGui.QPaintEvent;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QRegion;
limited with QtAda6.QtGui.QBitmap;
limited with QtAda6.QtGui.QPolygon;
with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QPaintDevice;
package QtAda6.QtGui.QPaintDeviceWindow is
   type Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtGui.QWindow.Inst
--  and QtAda6.QtGui.QPaintDevice.Inst
   with null record;
   procedure Finalize (Self : in out Class);
   function event (self : access Inst; event_P : access QtAda6.QtCore.QEvent.Inst'Class) return bool;
   procedure exposeEvent (self : access Inst; arg_1_P : access QtAda6.QtGui.QExposeEvent.Inst'Class);
   function metric
     (self : access Inst; metric_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   procedure paintEvent (self : access Inst; event_P : access QtAda6.QtGui.QPaintEvent.Inst'Class);
   procedure update (self : access Inst);
   procedure update (self : access Inst; rect_P : access QtAda6.QtCore.QRect.Inst'Class);
   procedure update
     (self     : access Inst;
      region_P : Union_QtAda6_QtGui_QRegion_QtAda6_QtGui_QBitmap_QtAda6_QtGui_QPolygon_QtAda6_QtCore_QRect);
end QtAda6.QtGui.QPaintDeviceWindow;
