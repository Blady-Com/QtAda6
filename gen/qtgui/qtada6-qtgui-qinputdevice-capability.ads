-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputdevice-capability.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QInputDevice.Capability is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   None_U             : QInputDevice.Capability.Class;-- 0x0
   Position           : QInputDevice.Capability.Class;-- 0x1
   Area               : QInputDevice.Capability.Class;-- 0x2
   Pressure           : QInputDevice.Capability.Class;-- 0x4
   Velocity           : QInputDevice.Capability.Class;-- 0x8
   NormalizedPosition : QInputDevice.Capability.Class;-- 0x20
   MouseEmulation     : QInputDevice.Capability.Class;-- 0x40
   PixelScroll        : QInputDevice.Capability.Class;-- 0x80
   Scroll             : QInputDevice.Capability.Class;-- 0x100
   Hover              : QInputDevice.Capability.Class;-- 0x200
   Rotation           : QInputDevice.Capability.Class;-- 0x400
   XTilt              : QInputDevice.Capability.Class;-- 0x800
   YTilt              : QInputDevice.Capability.Class;-- 0x1000
   TangentialPressure : QInputDevice.Capability.Class;-- 0x2000
   ZPosition          : QInputDevice.Capability.Class;-- 0x4000
   All_K              : QInputDevice.Capability.Class;-- 0x7fffffff
end QtAda6.QtGui.QInputDevice.Capability;
