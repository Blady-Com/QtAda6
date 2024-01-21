-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-pyclassproperty.adb
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
package body QtAda6.QtCore.PyClassProperty is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (fget_P : CALLABLE_AnyAny := null; fset_P : CALLABLE_AnyAnyNoneType := null; fdel_P : CALLABLE_AnyNoneType := null;
      doc_P  : str             := "") return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "PyClassProperty");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if fget_P /= null then fget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if fset_P /= null then fset_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if fdel_P /= null then fdel_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, Unicode_FromString (doc_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
end QtAda6.QtCore.PyClassProperty;
