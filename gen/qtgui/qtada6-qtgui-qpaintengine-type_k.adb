-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpaintengine-type_k.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtGui.QPaintEngine.Type_K is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function X11 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "X11"));
   end X11;
   function Windows return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Windows"));
   end Windows;
   function QuickDraw return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QuickDraw"));
   end QuickDraw;
   function CoreGraphics return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CoreGraphics"));
   end CoreGraphics;
   function MacPrinter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MacPrinter"));
   end MacPrinter;
   function QWindowSystem return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QWindowSystem"));
   end QWindowSystem;
   function OpenGL return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenGL"));
   end OpenGL;
   function Picture return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Picture"));
   end Picture;
   function SVG return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SVG"));
   end SVG;
   function Raster return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Raster"));
   end Raster;
   function Direct3D return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Direct3D"));
   end Direct3D;
   function Pdf return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Pdf"));
   end Pdf;
   function OpenVG return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenVG"));
   end OpenVG;
   function OpenGL2 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "OpenGL2"));
   end OpenGL2;
   function PaintBuffer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PaintBuffer"));
   end PaintBuffer;
   function Blitter return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Blitter"));
   end Blitter;
   function Direct2D return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Direct2D"));
   end Direct2D;
   function User return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "User"));
   end User;
   function MaxUser return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPaintEngine");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Type_K");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "MaxUser"));
   end MaxUser;
end QtAda6.QtGui.QPaintEngine.Type_K;
