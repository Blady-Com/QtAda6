-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainter-renderhint.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QPainter.RenderHint is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Antialiasing                : QPainter.RenderHint.Class;-- 0x1
   TextAntialiasing            : QPainter.RenderHint.Class;-- 0x2
   SmoothPixmapTransform       : QPainter.RenderHint.Class;-- 0x4
   VerticalSubpixelPositioning : QPainter.RenderHint.Class;-- 0x8
   LosslessImageRendering      : QPainter.RenderHint.Class;-- 0x40
   NonCosmeticBrushPatterns    : QPainter.RenderHint.Class;-- 0x80
end QtAda6.QtGui.QPainter.RenderHint;
