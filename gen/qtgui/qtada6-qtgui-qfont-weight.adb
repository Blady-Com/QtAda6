-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qfont-weight.adb
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
package body QtAda6.QtGui.QFont.Weight is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Thin return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Thin"));
   end Thin;
   function ExtraLight return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExtraLight"));
   end ExtraLight;
   function Light return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Light"));
   end Light;
   function Normal return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Normal"));
   end Normal;
   function Medium return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Medium"));
   end Medium;
   function DemiBold return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DemiBold"));
   end DemiBold;
   function Bold return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Bold"));
   end Bold;
   function ExtraBold return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExtraBold"));
   end ExtraBold;
   function Black return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QFont");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Black"));
   end Black;
end QtAda6.QtGui.QFont.Weight;
