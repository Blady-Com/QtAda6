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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PdmWidth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmWidth"));
   end PdmWidth;
   function PdmHeight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmHeight"));
   end PdmHeight;
   function PdmWidthMM return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmWidthMM"));
   end PdmWidthMM;
   function PdmHeightMM return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmHeightMM"));
   end PdmHeightMM;
   function PdmNumColors return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmNumColors"));
   end PdmNumColors;
   function PdmDepth return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmDepth"));
   end PdmDepth;
   function PdmDpiX return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmDpiX"));
   end PdmDpiX;
   function PdmDpiY return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmDpiY"));
   end PdmDpiY;
   function PdmPhysicalDpiX return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmPhysicalDpiX"));
   end PdmPhysicalDpiX;
   function PdmPhysicalDpiY return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmPhysicalDpiY"));
   end PdmPhysicalDpiY;
   function PdmDevicePixelRatio return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmDevicePixelRatio"));
   end PdmDevicePixelRatio;
   function PdmDevicePixelRatioScaled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintDevice");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "PdmDevicePixelRatioScaled"));
   end PdmDevicePixelRatioScaled;
end QtAda6.QtGui.QPaintDevice.PaintDeviceMetric;
