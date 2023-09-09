-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-metafunction.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtCore.MetaFunction is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function U_call_U (self : access Inst; args_P : Any) return Any is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__call__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Any_conv_A2P_is_not_supported);
      Result := Object_CallObject (Method, Args, True);
      return Any_conv_P2A_is_not_supported;
   end U_call_U;
end QtAda6.QtCore.MetaFunction;
