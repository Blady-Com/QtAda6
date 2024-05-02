-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpointingdevice.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QInputDevice.DeviceType;
limited with QtAda6.QtGui.QPointingDevice.PointerType;
limited with QtAda6.QtGui.QInputDevice.Capability;
limited with QtAda6.QtGui.QPointingDeviceUniqueId;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QInputDevice;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QPointingDevice is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QInputDevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   function grabChanged
     (self : access Inst)
      return access QtAda6.QtCore.Signal.Inst'
     Class;-- grabChanged(QObject*,GrabTransition,const QPointerEvent*,QEventPoint)
   function Create
     (name_P     : str; systemId_P : int; devType_P : access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class;
      pType_P    : access QtAda6.QtGui.QPointingDevice.PointerType.Inst'Class;
      caps_P     : access QtAda6.QtGui.QInputDevice.Capability.Inst'Class; maxPoints_P : int; buttonCount_P : int;
      seatName_P : str := ""; uniqueId_P : access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class := null;
      parent_P   : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function buttonCount (self : access Inst) return int;
   function maximumPoints (self : access Inst) return int;
   function pointerType_F (self : access Inst) return access QtAda6.QtGui.QPointingDevice.PointerType.Inst'Class;
   function primaryPointingDevice (seatName_P : str := "") return access QtAda6.QtGui.QPointingDevice.Inst'Class;
   procedure setCapabilities (self : access Inst; caps_P : access QtAda6.QtGui.QInputDevice.Capability.Inst'Class);
   procedure setMaximumTouchPoints (self : access Inst; c_P : int);
   procedure setType (self : access Inst; devType_P : access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class);
   function uniqueId (self : access Inst) return access QtAda6.QtGui.QPointingDeviceUniqueId.Inst'Class;
end QtAda6.QtGui.QPointingDevice;
