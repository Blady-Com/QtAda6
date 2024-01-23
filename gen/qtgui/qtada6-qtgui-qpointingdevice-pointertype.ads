-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpointingdevice-pointertype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPointingDevice.PointerType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function Unknown return Class;-- 0x0
   function Generic_K return Class;-- 0x1
   function Finger return Class;-- 0x2
   function Pen return Class;-- 0x4
   function Eraser return Class;-- 0x8
   function Cursor return Class;-- 0x10
   function AllPointerTypes return Class;-- 0x7fff
end QtAda6.QtGui.QPointingDevice.PointerType;
