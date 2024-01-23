-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintdevice-paintdevicemetric.adb
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
package body QtAda6.QtGui.QPaintDevice.PaintDeviceMetric is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PdmWidth return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmWidth"));
   end PdmWidth;
   function PdmHeight return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmHeight"));
   end PdmHeight;
   function PdmWidthMM return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmWidthMM"));
   end PdmWidthMM;
   function PdmHeightMM return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmHeightMM"));
   end PdmHeightMM;
   function PdmNumColors return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmNumColors"));
   end PdmNumColors;
   function PdmDepth return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmDepth"));
   end PdmDepth;
   function PdmDpiX return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmDpiX"));
   end PdmDpiX;
   function PdmDpiY return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmDpiY"));
   end PdmDpiY;
   function PdmPhysicalDpiX return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmPhysicalDpiX"));
   end PdmPhysicalDpiX;
   function PdmPhysicalDpiY return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmPhysicalDpiY"));
   end PdmPhysicalDpiY;
   function PdmDevicePixelRatio return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmDevicePixelRatio"));
   end PdmDevicePixelRatio;
   function PdmDevicePixelRatioScaled return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      Enum_Class   := Object_GetAttrString (Parent_Class, "PaintDeviceMetric");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PdmDevicePixelRatioScaled"));
   end PdmDevicePixelRatioScaled;
end QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
