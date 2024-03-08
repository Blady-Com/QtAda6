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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (fget_P : CALLABLE_Any_Any      := null; fset_P : CALLABLE_Any_Any_NoneType := null;
      fdel_P : CALLABLE_Any_NoneType := null; doc_P : str := "") return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "PyClassProperty");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if fget_P /= null then
         Dict_SetItemString (Dict, "fget", fget_P.Python_Proxy);
      end if;
      if fset_P /= null then
         Dict_SetItemString (Dict, "fset", fset_P.Python_Proxy);
      end if;
      if fdel_P /= null then
         Dict_SetItemString (Dict, "fdel", fdel_P.Python_Proxy);
      end if;
      if doc_P /= "" then
         Dict_SetItemString (Dict, "doc", Unicode_FromString (doc_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
end QtAda6.QtCore.PyClassProperty;
