-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qsurfaceformat-renderabletype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QSurfaceFormat.RenderableType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   DefaultRenderableType : QSurfaceFormat.RenderableType.Class;-- 0x0
   OpenGL                : QSurfaceFormat.RenderableType.Class;-- 0x1
   OpenGLES              : QSurfaceFormat.RenderableType.Class;-- 0x2
   OpenVG                : QSurfaceFormat.RenderableType.Class;-- 0x4
end QtAda6.QtGui.QSurfaceFormat.RenderableType;
