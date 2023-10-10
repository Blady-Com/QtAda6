-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine-dirtyflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QPaintEngine.DirtyFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   DirtyPen             : QPaintEngine.DirtyFlag.Class;-- 0x1
   DirtyBrush           : QPaintEngine.DirtyFlag.Class;-- 0x2
   DirtyBrushOrigin     : QPaintEngine.DirtyFlag.Class;-- 0x4
   DirtyFont            : QPaintEngine.DirtyFlag.Class;-- 0x8
   DirtyBackground      : QPaintEngine.DirtyFlag.Class;-- 0x10
   DirtyBackgroundMode  : QPaintEngine.DirtyFlag.Class;-- 0x20
   DirtyTransform       : QPaintEngine.DirtyFlag.Class;-- 0x40
   DirtyClipRegion      : QPaintEngine.DirtyFlag.Class;-- 0x80
   DirtyClipPath        : QPaintEngine.DirtyFlag.Class;-- 0x100
   DirtyHints           : QPaintEngine.DirtyFlag.Class;-- 0x200
   DirtyCompositionMode : QPaintEngine.DirtyFlag.Class;-- 0x400
   DirtyClipEnabled     : QPaintEngine.DirtyFlag.Class;-- 0x800
   DirtyOpacity         : QPaintEngine.DirtyFlag.Class;-- 0x1000
   AllDirty             : QPaintEngine.DirtyFlag.Class;-- 0xffff
end QtAda6.QtGui.QPaintEngine.DirtyFlag;
