-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputdevice-devicetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QInputDevice.DeviceType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function Unknown return Class;-- 0x0
   function Mouse return Class;-- 0x1
   function TouchScreen return Class;-- 0x2
   function TouchPad return Class;-- 0x4
   function Puck return Class;-- 0x8
   function Stylus return Class;-- 0x10
   function Airbrush return Class;-- 0x20
   function Keyboard return Class;-- 0x1000
   function AllDevices return Class;-- 0x7fffffff
end QtAda6.QtGui.QInputDevice.DeviceType;
