-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfutureinterfacebase-state.adb
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
package body QtAda6.QtCore.QFutureInterfaceBase.State is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function NoState return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NoState"));
   end NoState;
   function Running return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Running"));
   end Running;
   function Started return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Started"));
   end Started;
   function Finished return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Finished"));
   end Finished;
   function Canceled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Canceled"));
   end Canceled;
   function Suspending return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Suspending"));
   end Suspending;
   function Suspended return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Suspended"));
   end Suspended;
   function Throttled return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Throttled"));
   end Throttled;
   function Pending return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFutureInterfaceBase");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Pending"));
   end Pending;
end QtAda6.QtCore.QFutureInterfaceBase.State;
