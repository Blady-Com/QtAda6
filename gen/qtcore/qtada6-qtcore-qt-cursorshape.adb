-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-cursorshape.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.Qt.CursorShape is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function ArrowCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ArrowCursor"));
   end ArrowCursor;
   function UpArrowCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UpArrowCursor"));
   end UpArrowCursor;
   function CrossCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CrossCursor"));
   end CrossCursor;
   function WaitCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WaitCursor"));
   end WaitCursor;
   function IBeamCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "IBeamCursor"));
   end IBeamCursor;
   function SizeVerCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SizeVerCursor"));
   end SizeVerCursor;
   function SizeHorCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SizeHorCursor"));
   end SizeHorCursor;
   function SizeBDiagCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SizeBDiagCursor"));
   end SizeBDiagCursor;
   function SizeFDiagCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SizeFDiagCursor"));
   end SizeFDiagCursor;
   function SizeAllCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SizeAllCursor"));
   end SizeAllCursor;
   function BlankCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BlankCursor"));
   end BlankCursor;
   function SplitVCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SplitVCursor"));
   end SplitVCursor;
   function SplitHCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SplitHCursor"));
   end SplitHCursor;
   function PointingHandCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PointingHandCursor"));
   end PointingHandCursor;
   function ForbiddenCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ForbiddenCursor"));
   end ForbiddenCursor;
   function WhatsThisCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "WhatsThisCursor"));
   end WhatsThisCursor;
   function BusyCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BusyCursor"));
   end BusyCursor;
   function OpenHandCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenHandCursor"));
   end OpenHandCursor;
   function ClosedHandCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ClosedHandCursor"));
   end ClosedHandCursor;
   function DragCopyCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragCopyCursor"));
   end DragCopyCursor;
   function DragMoveCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragMoveCursor"));
   end DragMoveCursor;
   function DragLinkCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DragLinkCursor"));
   end DragLinkCursor;
   function LastCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "LastCursor"));
   end LastCursor;
   function BitmapCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BitmapCursor"));
   end BitmapCursor;
   function CustomCursor return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "CursorShape");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CustomCursor"));
   end CustomCursor;
end QtAda6.QtCore.Qt.CursorShape;
