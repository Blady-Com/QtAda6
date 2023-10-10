-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpixelformat-byteorder.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QPixelFormat.ByteOrder is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   LittleEndian        : QPixelFormat.ByteOrder.Class;-- 0x0
   BigEndian           : QPixelFormat.ByteOrder.Class;-- 0x1
   CurrentSystemEndian : QPixelFormat.ByteOrder.Class;-- 0x2
end QtAda6.QtGui.QPixelFormat.ByteOrder;
