-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qeventloop-processeventsflag.adb
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
package body QtAda6.QtCore.QEventLoop.ProcessEventsFlag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AllEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "AllEvents"));
   end AllEvents;
   function ExcludeUserInputEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExcludeUserInputEvents"));
   end ExcludeUserInputEvents;
   function ExcludeSocketNotifiers return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ExcludeSocketNotifiers"));
   end ExcludeSocketNotifiers;
   function WaitForMoreEvents return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "WaitForMoreEvents"));
   end WaitForMoreEvents;
   function X11ExcludeTimers return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "X11ExcludeTimers"));
   end X11ExcludeTimers;
   function EventLoopExec return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "EventLoopExec"));
   end EventLoopExec;
   function DialogExec return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "DialogExec"));
   end DialogExec;
   function ApplicationExec return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEventLoop");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ApplicationExec"));
   end ApplicationExec;
end QtAda6.QtCore.QEventLoop.ProcessEventsFlag;
