-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsurface-surfacetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QSurface.SurfaceType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   RasterSurface   : QSurface.SurfaceType.Class;-- 0x0
   OpenGLSurface   : QSurface.SurfaceType.Class;-- 0x1
   RasterGLSurface : QSurface.SurfaceType.Class;-- 0x2
   OpenVGSurface   : QSurface.SurfaceType.Class;-- 0x3
   VulkanSurface   : QSurface.SurfaceType.Class;-- 0x4
   MetalSurface    : QSurface.SurfaceType.Class;-- 0x5
   Direct3DSurface : QSurface.SurfaceType.Class;-- 0x6
end QtAda6.QtGui.QSurface.SurfaceType;
