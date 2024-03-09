-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qpixelformat-yuvlayout.adb
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
package body QtAda6.QtGui.QPixelFormat.YUVLayout is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function YUV444 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YUV444"));
   end YUV444;
   function YUV422 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YUV422"));
   end YUV422;
   function YUV411 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YUV411"));
   end YUV411;
   function YUV420P return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YUV420P"));
   end YUV420P;
   function YUV420SP return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YUV420SP"));
   end YUV420SP;
   function YV12 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YV12"));
   end YV12;
   function UYVY return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "UYVY"));
   end UYVY;
   function YUYV return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "YUYV"));
   end YUYV;
   function NV12 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NV12"));
   end NV12;
   function NV21 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NV21"));
   end NV21;
   function IMC1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IMC1"));
   end IMC1;
   function IMC2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IMC2"));
   end IMC2;
   function IMC3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IMC3"));
   end IMC3;
   function IMC4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IMC4"));
   end IMC4;
   function Y8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Y8"));
   end Y8;
   function Y16 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QPixelFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Y16"));
   end Y16;
end QtAda6.QtGui.QPixelFormat.YUVLayout;
