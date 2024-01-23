-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qimage-format.adb
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
package body QtAda6.QtGui.QImage.Format is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Format_Invalid return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_Invalid"));
   end Format_Invalid;
   function Format_Mono return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_Mono"));
   end Format_Mono;
   function Format_MonoLSB return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_MonoLSB"));
   end Format_MonoLSB;
   function Format_Indexed8 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_Indexed8"));
   end Format_Indexed8;
   function Format_RGB32 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB32"));
   end Format_RGB32;
   function Format_ARGB32 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_ARGB32"));
   end Format_ARGB32;
   function Format_ARGB32_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_ARGB32_Premultiplied"));
   end Format_ARGB32_Premultiplied;
   function Format_RGB16 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB16"));
   end Format_RGB16;
   function Format_ARGB8565_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_ARGB8565_Premultiplied"));
   end Format_ARGB8565_Premultiplied;
   function Format_RGB666 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB666"));
   end Format_RGB666;
   function Format_ARGB6666_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_ARGB6666_Premultiplied"));
   end Format_ARGB6666_Premultiplied;
   function Format_RGB555 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB555"));
   end Format_RGB555;
   function Format_ARGB8555_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_ARGB8555_Premultiplied"));
   end Format_ARGB8555_Premultiplied;
   function Format_RGB888 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB888"));
   end Format_RGB888;
   function Format_RGB444 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB444"));
   end Format_RGB444;
   function Format_ARGB4444_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_ARGB4444_Premultiplied"));
   end Format_ARGB4444_Premultiplied;
   function Format_RGBX8888 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBX8888"));
   end Format_RGBX8888;
   function Format_RGBA8888 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA8888"));
   end Format_RGBA8888;
   function Format_RGBA8888_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA8888_Premultiplied"));
   end Format_RGBA8888_Premultiplied;
   function Format_BGR30 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_BGR30"));
   end Format_BGR30;
   function Format_A2BGR30_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_A2BGR30_Premultiplied"));
   end Format_A2BGR30_Premultiplied;
   function Format_RGB30 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGB30"));
   end Format_RGB30;
   function Format_A2RGB30_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_A2RGB30_Premultiplied"));
   end Format_A2RGB30_Premultiplied;
   function Format_Alpha8 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_Alpha8"));
   end Format_Alpha8;
   function Format_Grayscale8 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_Grayscale8"));
   end Format_Grayscale8;
   function Format_RGBX64 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBX64"));
   end Format_RGBX64;
   function Format_RGBA64 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA64"));
   end Format_RGBA64;
   function Format_RGBA64_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA64_Premultiplied"));
   end Format_RGBA64_Premultiplied;
   function Format_Grayscale16 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_Grayscale16"));
   end Format_Grayscale16;
   function Format_BGR888 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_BGR888"));
   end Format_BGR888;
   function Format_RGBX16FPx4 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBX16FPx4"));
   end Format_RGBX16FPx4;
   function Format_RGBA16FPx4 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA16FPx4"));
   end Format_RGBA16FPx4;
   function Format_RGBA16FPx4_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA16FPx4_Premultiplied"));
   end Format_RGBA16FPx4_Premultiplied;
   function Format_RGBX32FPx4 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBX32FPx4"));
   end Format_RGBX32FPx4;
   function Format_RGBA32FPx4 return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA32FPx4"));
   end Format_RGBA32FPx4;
   function Format_RGBA32FPx4_Premultiplied return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "Format_RGBA32FPx4_Premultiplied"));
   end Format_RGBA32FPx4_Premultiplied;
   function NImageFormats return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImage");
      Enum_Class   := Object_GetAttrString (Parent_Class, "Format");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "NImageFormats"));
   end NImageFormats;
end QtAda6.QtGui.QImage.Format;
