with Ada.Unchecked_Conversion;
package body Py.Class_Extras is

   ----------------------
   -- Super_CallObject --
   ----------------------

   function Super_CallObject (Self : Object; Name : char_array; Args : Object) return Object is
      super_args, func, result : Object;
      Ret                      : int;
      function Convert is new Ada.Unchecked_Conversion (PyType_Object_Access, Object);
      function Convert is new Ada.Unchecked_Conversion (Object, PyObject_Access);
      super_type : constant Object := Convert (Convert (Self).ob_type.tp_base);
   begin
      func := Links.Object_GetAttrString (super_type, Name);
      Check_Error;
      super_args := Links.Tuple_New (1);
      Ret        := Links.Tuple_SetItem (super_args, 0, Self);
      -- TODO: add Args if any
      result     := Links.Object_CallObject (func, super_args);
      Check_Error;
      return result;
   end Super_CallObject;

end Py.Class_Extras;
