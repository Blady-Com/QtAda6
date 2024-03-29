-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfont-stylehint.adb
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
package body QtAda6.QtGui.QFont.StyleHint is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Helvetica return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Helvetica"));
   end Helvetica;
   function SansSerif return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SansSerif"));
   end SansSerif;
   function Serif return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Serif"));
   end Serif;
   function Times return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Times"));
   end Times;
   function Courier return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Courier"));
   end Courier;
   function TypeWriter return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TypeWriter"));
   end TypeWriter;
   function Decorative return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Decorative"));
   end Decorative;
   function OldEnglish return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OldEnglish"));
   end OldEnglish;
   function System return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "System"));
   end System;
   function AnyStyle return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AnyStyle"));
   end AnyStyle;
   function Cursive return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Cursive"));
   end Cursive;
   function Monospace return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Monospace"));
   end Monospace;
   function Fantasy return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Fantasy"));
   end Fantasy;
end QtAda6.QtGui.QFont.StyleHint;
