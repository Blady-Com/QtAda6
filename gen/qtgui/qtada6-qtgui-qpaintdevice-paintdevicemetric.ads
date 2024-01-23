-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintdevice-paintdevicemetric.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPaintDevice.PaintDeviceMetric is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function PdmWidth return Class;-- 0x1
   function PdmHeight return Class;-- 0x2
   function PdmWidthMM return Class;-- 0x3
   function PdmHeightMM return Class;-- 0x4
   function PdmNumColors return Class;-- 0x5
   function PdmDepth return Class;-- 0x6
   function PdmDpiX return Class;-- 0x7
   function PdmDpiY return Class;-- 0x8
   function PdmPhysicalDpiX return Class;-- 0x9
   function PdmPhysicalDpiY return Class;-- 0xa
   function PdmDevicePixelRatio return Class;-- 0xb
   function PdmDevicePixelRatioScaled return Class;-- 0xc
end QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
