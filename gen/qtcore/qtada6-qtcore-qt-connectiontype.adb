-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-connectiontype.adb
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
package body QtAda6.QtCore.Qt.ConnectionType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function AutoConnection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ConnectionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "AutoConnection"));
   end AutoConnection;
   function DirectConnection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ConnectionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "DirectConnection"));
   end DirectConnection;
   function QueuedConnection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ConnectionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "QueuedConnection"));
   end QueuedConnection;
   function BlockingQueuedConnection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ConnectionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "BlockingQueuedConnection"));
   end BlockingQueuedConnection;
   function UniqueConnection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ConnectionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "UniqueConnection"));
   end UniqueConnection;
   function SingleShotConnection return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "ConnectionType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SingleShotConnection"));
   end SingleShotConnection;
end QtAda6.QtCore.Qt.ConnectionType;
