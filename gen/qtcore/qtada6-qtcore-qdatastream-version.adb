-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qdatastream-version.adb
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
package body QtAda6.QtCore.QDataStream.Version is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Qt_1_0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_1_0"));
   end Qt_1_0;
   function Qt_2_0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_2_0"));
   end Qt_2_0;
   function Qt_2_1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_2_1"));
   end Qt_2_1;
   function Qt_3_0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_3_0"));
   end Qt_3_0;
   function Qt_3_1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_3_1"));
   end Qt_3_1;
   function Qt_3_3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_3_3"));
   end Qt_3_3;
   function Qt_4_0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_0"));
   end Qt_4_0;
   function Qt_4_1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_1"));
   end Qt_4_1;
   function Qt_4_2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_2"));
   end Qt_4_2;
   function Qt_4_3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_3"));
   end Qt_4_3;
   function Qt_4_4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_4"));
   end Qt_4_4;
   function Qt_4_5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_5"));
   end Qt_4_5;
   function Qt_4_6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_6"));
   end Qt_4_6;
   function Qt_4_7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_7"));
   end Qt_4_7;
   function Qt_4_8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_8"));
   end Qt_4_8;
   function Qt_4_9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_4_9"));
   end Qt_4_9;
   function Qt_5_0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_0"));
   end Qt_5_0;
   function Qt_5_1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_1"));
   end Qt_5_1;
   function Qt_5_2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_2"));
   end Qt_5_2;
   function Qt_5_3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_3"));
   end Qt_5_3;
   function Qt_5_4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_4"));
   end Qt_5_4;
   function Qt_5_5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_5"));
   end Qt_5_5;
   function Qt_5_10 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_10"));
   end Qt_5_10;
   function Qt_5_11 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_11"));
   end Qt_5_11;
   function Qt_5_6 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_6"));
   end Qt_5_6;
   function Qt_5_7 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_7"));
   end Qt_5_7;
   function Qt_5_8 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_8"));
   end Qt_5_8;
   function Qt_5_9 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_9"));
   end Qt_5_9;
   function Qt_5_12 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_12"));
   end Qt_5_12;
   function Qt_5_13 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_13"));
   end Qt_5_13;
   function Qt_5_14 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_14"));
   end Qt_5_14;
   function Qt_5_15 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_5_15"));
   end Qt_5_15;
   function Qt_6_0 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_6_0"));
   end Qt_6_0;
   function Qt_6_1 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_6_1"));
   end Qt_6_1;
   function Qt_6_2 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_6_2"));
   end Qt_6_2;
   function Qt_6_3 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_6_3"));
   end Qt_6_3;
   function Qt_6_4 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_6_4"));
   end Qt_6_4;
   function Qt_6_5 return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_6_5"));
   end Qt_6_5;
   function Qt_DefaultCompiledVersion return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QDataStream");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Qt_DefaultCompiledVersion"));
   end Qt_DefaultCompiledVersion;
end QtAda6.QtCore.QDataStream.Version;
