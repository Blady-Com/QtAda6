-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpointingdevice-grabtransition.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with enum.Enum;
package QtAda6.QtGui.QPointingDevice.GrabTransition is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new enum.Enum.Inst with null record;
procedure Finalize (Self : in out Class);
GrabPassive:QPointingDevice.GrabTransition.Class;-- 0x1
UngrabPassive:QPointingDevice.GrabTransition.Class;-- 0x2
CancelGrabPassive:QPointingDevice.GrabTransition.Class;-- 0x3
OverrideGrabPassive:QPointingDevice.GrabTransition.Class;-- 0x4
GrabExclusive:QPointingDevice.GrabTransition.Class;-- 0x10
UngrabExclusive:QPointingDevice.GrabTransition.Class;-- 0x20
CancelGrabExclusive:QPointingDevice.GrabTransition.Class;-- 0x30
end QtAda6.QtGui.QPointingDevice.GrabTransition;
