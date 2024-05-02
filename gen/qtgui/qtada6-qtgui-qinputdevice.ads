-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputdevice.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QInputDevice.DeviceType;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QInputDevice.Capability;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtGui.QInputDevice is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   subtype LIST_QtAda6_QtGui_QInputDevice is QtAda6.QtGui.QInputDevice.Class_Array;
   type LIST_str is array (Positive range <>) of str;
   procedure Finalize (Self : in out Class);
   function availableVirtualGeometryChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- availableVirtualGeometryChanged(QRect)
   function Create
     (name_P     : str; systemId_P : int; type_K_P : access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class;
      seatName_P : str := ""; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function availableVirtualGeometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function capabilities (self : access Inst) return access QtAda6.QtGui.QInputDevice.Capability.Inst'Class;
   function devices return LIST_QtAda6_QtGui_QInputDevice;
   function hasCapability
     (self : access Inst; cap_P : access QtAda6.QtGui.QInputDevice.Capability.Inst'Class) return bool;
   function name (self : access Inst) return str;
   function primaryKeyboard (seatName_P : str := "") return access QtAda6.QtGui.QInputDevice.Inst'Class;
   function seatName (self : access Inst) return str;
   function seatNames return LIST_str;
   function systemId (self : access Inst) return int;
   function type_K (self : access Inst) return access QtAda6.QtGui.QInputDevice.DeviceType.Inst'Class;
end QtAda6.QtGui.QInputDevice;
