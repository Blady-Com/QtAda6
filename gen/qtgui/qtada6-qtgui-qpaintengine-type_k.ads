-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPaintEngine.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function X11 return Class;-- 0x0
   function Windows return Class;-- 0x1
   function QuickDraw return Class;-- 0x2
   function CoreGraphics return Class;-- 0x3
   function MacPrinter return Class;-- 0x4
   function QWindowSystem return Class;-- 0x5
   function OpenGL return Class;-- 0x6
   function Picture return Class;-- 0x7
   function SVG return Class;-- 0x8
   function Raster return Class;-- 0x9
   function Direct3D return Class;-- 0xa
   function Pdf return Class;-- 0xb
   function OpenVG return Class;-- 0xc
   function OpenGL2 return Class;-- 0xd
   function PaintBuffer return Class;-- 0xe
   function Blitter return Class;-- 0xf
   function Direct2D return Class;-- 0x10
   function User return Class;-- 0x32
   function MaxUser return Class;-- 0x64
end QtAda6.QtGui.QPaintEngine.Type_K;
