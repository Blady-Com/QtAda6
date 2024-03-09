-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsurface-surfacetype.adb
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
package body QtAda6.QtGui.QSurface.SurfaceType is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function RasterSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RasterSurface"));
   end RasterSurface;
   function OpenGLSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OpenGLSurface"));
   end OpenGLSurface;
   function RasterGLSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "RasterGLSurface"));
   end RasterGLSurface;
   function OpenVGSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OpenVGSurface"));
   end OpenVGSurface;
   function VulkanSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "VulkanSurface"));
   end VulkanSurface;
   function MetalSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MetalSurface"));
   end MetalSurface;
   function Direct3DSurface return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Direct3DSurface"));
   end Direct3DSurface;
end QtAda6.QtGui.QSurface.SurfaceType;
