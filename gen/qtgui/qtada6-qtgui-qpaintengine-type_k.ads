-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPaintEngine.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   X11           : QPaintEngine.Type_K.Class;-- 0x0
   Windows       : QPaintEngine.Type_K.Class;-- 0x1
   QuickDraw     : QPaintEngine.Type_K.Class;-- 0x2
   CoreGraphics  : QPaintEngine.Type_K.Class;-- 0x3
   MacPrinter    : QPaintEngine.Type_K.Class;-- 0x4
   QWindowSystem : QPaintEngine.Type_K.Class;-- 0x5
   OpenGL        : QPaintEngine.Type_K.Class;-- 0x6
   Picture       : QPaintEngine.Type_K.Class;-- 0x7
   SVG           : QPaintEngine.Type_K.Class;-- 0x8
   Raster        : QPaintEngine.Type_K.Class;-- 0x9
   Direct3D      : QPaintEngine.Type_K.Class;-- 0xa
   Pdf           : QPaintEngine.Type_K.Class;-- 0xb
   OpenVG        : QPaintEngine.Type_K.Class;-- 0xc
   OpenGL2       : QPaintEngine.Type_K.Class;-- 0xd
   PaintBuffer   : QPaintEngine.Type_K.Class;-- 0xe
   Blitter       : QPaintEngine.Type_K.Class;-- 0xf
   Direct2D      : QPaintEngine.Type_K.Class;-- 0x10
   User          : QPaintEngine.Type_K.Class;-- 0x32
   MaxUser       : QPaintEngine.Type_K.Class;-- 0x64
end QtAda6.QtGui.QPaintEngine.Type_K;
