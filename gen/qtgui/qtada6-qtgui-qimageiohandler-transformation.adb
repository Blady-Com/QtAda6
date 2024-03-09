-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qimageiohandler-transformation.adb
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
package body QtAda6.QtGui.QImageIOHandler.Transformation is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function TransformationNone return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationNone"));
   end TransformationNone;
   function TransformationMirror return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationMirror"));
   end TransformationMirror;
   function TransformationFlip return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationFlip"));
   end TransformationFlip;
   function TransformationRotate180 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationRotate180"));
   end TransformationRotate180;
   function TransformationRotate90 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationRotate90"));
   end TransformationRotate90;
   function TransformationMirrorAndRotate90 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationMirrorAndRotate90"));
   end TransformationMirrorAndRotate90;
   function TransformationFlipAndRotate90 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationFlipAndRotate90"));
   end TransformationFlipAndRotate90;
   function TransformationRotate270 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QImageIOHandler");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TransformationRotate270"));
   end TransformationRotate270;
end QtAda6.QtGui.QImageIOHandler.Transformation;
