-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpaintengine-dirtyflag.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPaintEngine.DirtyFlag is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function DirtyPen return Class;-- 0x1
   function DirtyBrush return Class;-- 0x2
   function DirtyBrushOrigin return Class;-- 0x4
   function DirtyFont return Class;-- 0x8
   function DirtyBackground return Class;-- 0x10
   function DirtyBackgroundMode return Class;-- 0x20
   function DirtyTransform return Class;-- 0x40
   function DirtyClipRegion return Class;-- 0x80
   function DirtyClipPath return Class;-- 0x100
   function DirtyHints return Class;-- 0x200
   function DirtyCompositionMode return Class;-- 0x400
   function DirtyClipEnabled return Class;-- 0x800
   function DirtyOpacity return Class;-- 0x1000
   function AllDirty return Class;-- 0xffff
end QtAda6.QtGui.QPaintEngine.DirtyFlag;
