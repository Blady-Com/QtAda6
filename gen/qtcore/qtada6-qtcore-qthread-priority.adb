-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qthread-priority.adb
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
package body QtAda6.QtCore.QThread.Priority is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function IdlePriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "IdlePriority"));
   end IdlePriority;
   function LowestPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LowestPriority"));
   end LowestPriority;
   function LowPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "LowPriority"));
   end LowPriority;
   function NormalPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NormalPriority"));
   end NormalPriority;
   function HighPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HighPriority"));
   end HighPriority;
   function HighestPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "HighestPriority"));
   end HighestPriority;
   function TimeCriticalPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TimeCriticalPriority"));
   end TimeCriticalPriority;
   function InheritPriority return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QThread");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InheritPriority"));
   end InheritPriority;
end QtAda6.QtCore.QThread.Priority;
