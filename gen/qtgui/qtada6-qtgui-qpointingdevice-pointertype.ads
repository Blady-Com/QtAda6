-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpointingdevice-pointertype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QPointingDevice.PointerType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Unknown         : QPointingDevice.PointerType.Class;-- 0x0
   Generic_K       : QPointingDevice.PointerType.Class;-- 0x1
   Finger          : QPointingDevice.PointerType.Class;-- 0x2
   Pen             : QPointingDevice.PointerType.Class;-- 0x4
   Eraser          : QPointingDevice.PointerType.Class;-- 0x8
   Cursor          : QPointingDevice.PointerType.Class;-- 0x10
   AllPointerTypes : QPointingDevice.PointerType.Class;-- 0x7fff
end QtAda6.QtGui.QPointingDevice.PointerType;
