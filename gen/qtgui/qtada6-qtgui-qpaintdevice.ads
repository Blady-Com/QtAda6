-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintdevice.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QPainter;
limited with QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
limited with QtAda6.QtGui.QPaintEngine;
limited with QtAda6.QtCore.QPoint;
package QtAda6.QtGui.QPaintDevice is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function colorCount (self : access Inst) return int;
   function depth (self : access Inst) return int;
   function devType (self : access Inst) return int;
   function devicePixelRatio (self : access Inst) return float;
   function devicePixelRatioF (self : access Inst) return float;
   function devicePixelRatioFScale return float;
   function height (self : access Inst) return int;
   function heightMM (self : access Inst) return int;
   procedure initPainter (self : access Inst; painter_P : access QtAda6.QtGui.QPainter.Inst'Class);
   function logicalDpiX (self : access Inst) return int;
   function logicalDpiY (self : access Inst) return int;
   function metric_F
     (self : access Inst; metric_P : access QtAda6.QtGui.QPaintDevice.PaintDeviceMetric.Inst'Class) return int;
   function paintEngine (self : access Inst) return access QtAda6.QtGui.QPaintEngine.Inst'Class;
   function paintingActive (self : access Inst) return bool;
   function physicalDpiX (self : access Inst) return int;
   function physicalDpiY (self : access Inst) return int;
   function redirected
     (self : access Inst; offset_P : access QtAda6.QtCore.QPoint.Inst'Class)
      return access QtAda6.QtGui.QPaintDevice.Inst'Class;
   function sharedPainter (self : access Inst) return access QtAda6.QtGui.QPainter.Inst'Class;
   function width (self : access Inst) return int;
   function widthMM (self : access Inst) return int;
end QtAda6.QtGui.QPaintDevice;
