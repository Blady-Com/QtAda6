-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-splitbehaviorflags.adb
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
package body QtAda6.QtCore.Qt.SplitBehaviorFlags is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function KeepEmptyParts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SplitBehaviorFlags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "KeepEmptyParts"));
   end KeepEmptyParts;
   function SkipEmptyParts return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "SplitBehaviorFlags");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "SkipEmptyParts"));
   end SkipEmptyParts;
end QtAda6.QtCore.Qt.SplitBehaviorFlags;
