-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-cursorshape.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.Qt.CursorShape is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function ArrowCursor return Class;-- 0x0
   function UpArrowCursor return Class;-- 0x1
   function CrossCursor return Class;-- 0x2
   function WaitCursor return Class;-- 0x3
   function IBeamCursor return Class;-- 0x4
   function SizeVerCursor return Class;-- 0x5
   function SizeHorCursor return Class;-- 0x6
   function SizeBDiagCursor return Class;-- 0x7
   function SizeFDiagCursor return Class;-- 0x8
   function SizeAllCursor return Class;-- 0x9
   function BlankCursor return Class;-- 0xa
   function SplitVCursor return Class;-- 0xb
   function SplitHCursor return Class;-- 0xc
   function PointingHandCursor return Class;-- 0xd
   function ForbiddenCursor return Class;-- 0xe
   function WhatsThisCursor return Class;-- 0xf
   function BusyCursor return Class;-- 0x10
   function OpenHandCursor return Class;-- 0x11
   function ClosedHandCursor return Class;-- 0x12
   function DragCopyCursor return Class;-- 0x13
   function DragMoveCursor return Class;-- 0x14
   function DragLinkCursor return Class;-- 0x15
   function LastCursor return Class;-- 0x15
   function BitmapCursor return Class;-- 0x18
   function CustomCursor return Class;-- 0x19
end QtAda6.QtCore.Qt.CursorShape;
