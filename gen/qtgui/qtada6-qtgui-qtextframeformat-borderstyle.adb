-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextframeformat-borderstyle.adb
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
package body QtAda6.QtGui.QTextFrameFormat.BorderStyle is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function BorderStyle_None return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_None"));
   end BorderStyle_None;
   function BorderStyle_Dotted return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Dotted"));
   end BorderStyle_Dotted;
   function BorderStyle_Dashed return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Dashed"));
   end BorderStyle_Dashed;
   function BorderStyle_Solid return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Solid"));
   end BorderStyle_Solid;
   function BorderStyle_Double return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Double"));
   end BorderStyle_Double;
   function BorderStyle_DotDash return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_DotDash"));
   end BorderStyle_DotDash;
   function BorderStyle_DotDotDash return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_DotDotDash"));
   end BorderStyle_DotDotDash;
   function BorderStyle_Groove return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Groove"));
   end BorderStyle_Groove;
   function BorderStyle_Ridge return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Ridge"));
   end BorderStyle_Ridge;
   function BorderStyle_Inset return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Inset"));
   end BorderStyle_Inset;
   function BorderStyle_Outset return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextFrameFormat");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BorderStyle_Outset"));
   end BorderStyle_Outset;
end QtAda6.QtGui.QTextFrameFormat.BorderStyle;
