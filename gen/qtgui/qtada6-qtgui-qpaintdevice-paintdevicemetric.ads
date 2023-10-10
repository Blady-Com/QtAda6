-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintdevice-paintdevicemetric.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPaintDevice.PaintDeviceMetric is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   PdmWidth                  : QPaintDevice.PaintDeviceMetric.Class;-- 0x1
   PdmHeight                 : QPaintDevice.PaintDeviceMetric.Class;-- 0x2
   PdmWidthMM                : QPaintDevice.PaintDeviceMetric.Class;-- 0x3
   PdmHeightMM               : QPaintDevice.PaintDeviceMetric.Class;-- 0x4
   PdmNumColors              : QPaintDevice.PaintDeviceMetric.Class;-- 0x5
   PdmDepth                  : QPaintDevice.PaintDeviceMetric.Class;-- 0x6
   PdmDpiX                   : QPaintDevice.PaintDeviceMetric.Class;-- 0x7
   PdmDpiY                   : QPaintDevice.PaintDeviceMetric.Class;-- 0x8
   PdmPhysicalDpiX           : QPaintDevice.PaintDeviceMetric.Class;-- 0x9
   PdmPhysicalDpiY           : QPaintDevice.PaintDeviceMetric.Class;-- 0xa
   PdmDevicePixelRatio       : QPaintDevice.PaintDeviceMetric.Class;-- 0xb
   PdmDevicePixelRatioScaled : QPaintDevice.PaintDeviceMetric.Class;-- 0xc
end QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
