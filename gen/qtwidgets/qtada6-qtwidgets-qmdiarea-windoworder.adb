-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qmdiarea-windoworder.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QMdiArea.WindowOrder is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function CreationOrder return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMdiArea");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowOrder");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CreationOrder"));
   end CreationOrder;
   function StackingOrder return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMdiArea");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowOrder");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "StackingOrder"));
   end StackingOrder;
   function ActivationHistoryOrder return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QMdiArea");
      Enum_Class   := Object_GetAttrString (Parent_Class, "WindowOrder");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "ActivationHistoryOrder"));
   end ActivationHistoryOrder;
end QtAda6.QtWidgets.QMdiArea.WindowOrder;
