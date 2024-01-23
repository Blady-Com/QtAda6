-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputdevice-capability.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QInputDevice.Capability is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function None_U return Class;-- 0x0
   function Position return Class;-- 0x1
   function Area return Class;-- 0x2
   function Pressure return Class;-- 0x4
   function Velocity return Class;-- 0x8
   function NormalizedPosition return Class;-- 0x20
   function MouseEmulation return Class;-- 0x40
   function PixelScroll return Class;-- 0x80
   function Scroll return Class;-- 0x100
   function Hover return Class;-- 0x200
   function Rotation return Class;-- 0x400
   function XTilt return Class;-- 0x800
   function YTilt return Class;-- 0x1000
   function TangentialPressure return Class;-- 0x2000
   function ZPosition return Class;-- 0x4000
   function All_K return Class;-- 0x7fffffff
end QtAda6.QtGui.QInputDevice.Capability;
