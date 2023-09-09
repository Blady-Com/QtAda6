-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt-cursorshape.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.Qt.CursorShape is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   ArrowCursor        : Qt.CursorShape.Class;-- 0x0
   UpArrowCursor      : Qt.CursorShape.Class;-- 0x1
   CrossCursor        : Qt.CursorShape.Class;-- 0x2
   WaitCursor         : Qt.CursorShape.Class;-- 0x3
   IBeamCursor        : Qt.CursorShape.Class;-- 0x4
   SizeVerCursor      : Qt.CursorShape.Class;-- 0x5
   SizeHorCursor      : Qt.CursorShape.Class;-- 0x6
   SizeBDiagCursor    : Qt.CursorShape.Class;-- 0x7
   SizeFDiagCursor    : Qt.CursorShape.Class;-- 0x8
   SizeAllCursor      : Qt.CursorShape.Class;-- 0x9
   BlankCursor        : Qt.CursorShape.Class;-- 0xa
   SplitVCursor       : Qt.CursorShape.Class;-- 0xb
   SplitHCursor       : Qt.CursorShape.Class;-- 0xc
   PointingHandCursor : Qt.CursorShape.Class;-- 0xd
   ForbiddenCursor    : Qt.CursorShape.Class;-- 0xe
   WhatsThisCursor    : Qt.CursorShape.Class;-- 0xf
   BusyCursor         : Qt.CursorShape.Class;-- 0x10
   OpenHandCursor     : Qt.CursorShape.Class;-- 0x11
   ClosedHandCursor   : Qt.CursorShape.Class;-- 0x12
   DragCopyCursor     : Qt.CursorShape.Class;-- 0x13
   DragMoveCursor     : Qt.CursorShape.Class;-- 0x14
   DragLinkCursor     : Qt.CursorShape.Class;-- 0x15
   LastCursor         : Qt.CursorShape.Class;-- 0x15
   BitmapCursor       : Qt.CursorShape.Class;-- 0x18
   CustomCursor       : Qt.CursorShape.Class;-- 0x19
end QtAda6.QtCore.Qt.CursorShape;
