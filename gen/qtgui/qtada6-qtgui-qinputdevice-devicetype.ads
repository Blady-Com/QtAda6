-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputdevice-devicetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QInputDevice.DeviceType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Unknown     : QInputDevice.DeviceType.Class;-- 0x0
   Mouse       : QInputDevice.DeviceType.Class;-- 0x1
   TouchScreen : QInputDevice.DeviceType.Class;-- 0x2
   TouchPad    : QInputDevice.DeviceType.Class;-- 0x4
   Puck        : QInputDevice.DeviceType.Class;-- 0x8
   Stylus      : QInputDevice.DeviceType.Class;-- 0x10
   Airbrush    : QInputDevice.DeviceType.Class;-- 0x20
   Keyboard    : QInputDevice.DeviceType.Class;-- 0x1000
   AllDevices  : QInputDevice.DeviceType.Class;-- 0x7fffffff
end QtAda6.QtGui.QInputDevice.DeviceType;
