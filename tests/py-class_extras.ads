package Py.Class_Extras is

private

   -- Documentation: https://docs.python.org/3/extending/newtypes.html
   -- Tranlated from:
   --    . Python3.framework/Versions/3.9/Headers/cpython/object.h
   --    . Python3.framework/Versions/3.9/Headers/object.h

   type PyTypeObject;
   type PyType_Object_Access is access all PyTypeObject;

   type PyObject is record
      ob_refcnt : ssize_t;
      ob_type   : access PyTypeObject;
   end record;
   pragma Convention (C, PyObject);
   type PyObject_Access is access all PyObject;

   type PyObject_VAR_HEAD is record
      ob_refcnt : ssize_t;
      ob_type   : access PyTypeObject;
   end record;
   pragma Convention (C, PyObject_VAR_HEAD);

   type PyVarObject is record
      ob_base : PyObject;
      ob_size : ssize_t;
   end record;
   pragma Convention (C, PyVarObject);

   type PyAsyncMethods is record
      am_await : access function (arg1 : Object) return Object;
      am_aiter : access function (arg1 : Object) return Object;
      am_anext : access function (arg1 : Object) return Object;
   end record;
   pragma Convention (C, PyAsyncMethods);

   type PyNumberMethods is record
      nb_add                     : access function (arg1 : Object; arg2 : Object) return Object;
      nb_subtract                : access function (arg1 : Object; arg2 : Object) return Object;
      nb_multiply                : access function (arg1 : Object; arg2 : Object) return Object;
      nb_remainder               : access function (arg1 : Object; arg2 : Object) return Object;
      nb_divmod                  : access function (arg1 : Object; arg2 : Object) return Object;
      nb_power                   : access function (arg1 : Object; arg2 : Object; arg3 : Object) return Object;
      nb_negative                : access function (arg1 : Object) return Object;
      nb_positive                : access function (arg1 : Object) return Object;
      nb_absolute                : access function (arg1 : Object) return Object;
      nb_bool                    : access function (arg1 : Object) return int;
      nb_invert                  : access function (arg1 : Object) return Object;
      nb_lshift                  : access function (arg1 : Object; arg2 : Object) return Object;
      nb_rshift                  : access function (arg1 : Object; arg2 : Object) return Object;
      nb_and                     : access function (arg1 : Object; arg2 : Object) return Object;
      nb_xor                     : access function (arg1 : Object; arg2 : Object) return Object;
      nb_or                      : access function (arg1 : Object; arg2 : Object) return Object;
      nb_int                     : access function (arg1 : Object) return Object;
      nb_reserved                : Object;
      nb_float                   : access function (arg1 : Object) return Object;
      nb_inplace_add             : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_subtract        : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_multiply        : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_remainder       : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_power           : access function (arg1 : Object; arg2 : Object; arg3 : Object) return Object;
      nb_inplace_lshift          : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_rshift          : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_and             : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_xor             : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_or              : access function (arg1 : Object; arg2 : Object) return Object;
      nb_floor_divide            : access function (arg1 : Object; arg2 : Object) return Object;
      nb_true_divide             : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_floor_divide    : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_true_divide     : access function (arg1 : Object; arg2 : Object) return Object;
      nb_index                   : access function (arg1 : Object) return Object;
      nb_matrix_multiply         : access function (arg1 : Object; arg2 : Object) return Object;
      nb_inplace_matrix_multiply : access function (arg1 : Object; arg2 : Object) return Object;
   end record;
   pragma Convention (C, PyNumberMethods);

   type PySequenceMethods is record
      sq_length         : access function (arg1 : Object) return size_t;
      sq_concat         : access function (arg1 : Object; arg2 : Object) return Object;
      sq_repeat         : access function (arg1 : Object; arg2 : ssize_t) return Object;
      sq_item           : access function (arg1 : Object; arg2 : ssize_t) return Object;
      was_sq_slice      : access function (arg1 : Object; arg2 : ssize_t; arg3 : ssize_t) return Object;
      sq_ass_item       : access function (arg1 : Object; arg2 : ssize_t; arg3 : Object) return int;
      sq_ass_slice      : access function (arg1 : Object; arg2 : ssize_t; arg3 : ssize_t; arg4 : Object) return int;
      sq_contains       : access function (arg1 : Object; arg2 : Object) return int;
      sq_inplace_concat : access function (arg1 : Object; arg2 : Object) return Object;
      sq_inplace_repeat : access function (arg1 : Object; arg2 : ssize_t) return Object;
   end record;
   pragma Convention (C, PySequenceMethods);

   type PyMappingMethods is record
      mp_length        : access function (arg1 : Object) return size_t;
      mp_subscript     : access function (arg1 : Object; arg2 : Object) return Object;
      mp_ass_subscript : access function (arg1 : Object; arg2 : Object; arg3 : Object) return int;
   end record;
   pragma Convention (C, PyMappingMethods);

   type PyMethodDef is record
      ml_name  : chars_ptr;
      ml_meth  : access function return Object;
      ml_flags : int;
      ml_doc   : chars_ptr;
   end record;
   pragma Convention (C, PyMethodDef);

   type PyMemberDef is record
      name   : chars_ptr;
      type_k : int;
      offset : size_t;
      flags  : int;
      doc    : chars_ptr;
   end record;
   pragma Convention (C, PyMemberDef);

   type PyGetSetDef is record
      name    : chars_ptr;
      get     : access function (arg1 : Object; arg2 : Object) return Object;
      set     : access function (arg1 : Object; arg2 : Object; arg3 : Object) return int;
      doc     : chars_ptr;
      closure : Object;
   end record;
   pragma Convention (C, PyGetSetDef);

   type PyBufferProcs is record
      bf_getbuffer     : access function (arg1 : Object; arg2 : Object; arg3 : int) return int;
      bf_releasebuffer : access procedure (arg1 : Object; arg2 : Object);
   end record;
   pragma Convention (C, PyBufferProcs);

   type PyTypeObject is record
      ob_base                   : PyVarObject;
      tp_name                   : chars_ptr; -- For printing, in format "<module>.<name>"
      tp_basicsize, tp_itemsize : size_t; -- For allocation

      -- Methods to implement standard operations
      tp_dealloc           : access procedure (arg1 : Object);
      tp_vectorcall_offset : size_t;
      tp_getattr           : access function (arg1 : Object; arg2 : chars_ptr) return Object;
      tp_setattr           : access function (arg1 : Object; arg2 : chars_ptr; arg3 : Object) return int;
      tp_as_async          : access PyAsyncMethods;
      tp_repr              : access function (arg1 : Object) return chars_ptr;

      -- Method suites for standard classes
      tp_as_number   : access PyNumberMethods;
      tp_as_sequence : access PySequenceMethods;
      tp_as_mapping  : access PyMappingMethods;

      -- More standard operations (here for binary compatibility)
      tp_hash     : access function (arg1 : Object) return long;
      tp_call     : access function (arg1 : Object; arg2 : Object; arg3 : Object) return Object;
      tp_str      : access function (arg1 : Object) return chars_ptr;
      tp_getattro : access function (arg1 : Object; arg2 : Object) return Object;
      tp_setattro : access function (arg1 : Object; arg2 : Object; arg3 : Object) return int;

      -- Functions to access object as input/output buffer
      tp_as_buffer : access PyBufferProcs;

      -- Flags to define presence of optional/expanded features
      tp_flags : unsigned_long;

      tp_doc : chars_ptr; -- Documentation string

      -- Assigned meaning in release 2.0
      tp_traverse : access function
        (arg1 : Object; arg2 : access function (arg1 : Object; arg2 : Object) return int) return int;
      tp_clear : access function (arg1 : Object) return int;

      -- Assigned meaning in release 2.1
      tp_richcompare    : access function (arg1 : Object; arg2 : Object; arg3 : int) return chars_ptr;
      tp_weaklistoffset : size_t;

      -- Iterators
      tp_iter     : access function (arg1 : Object) return Object;
      tp_iternext : access function (arg1 : Object) return Object;

      -- Attribute descriptor and subclassing stuff
      tp_methods    : access PyMethodDef;
      tp_members    : access PyMemberDef;
      tp_getset     : access PyGetSetDef;
      tp_base       : access PyTypeObject;
      tp_dict       : Object;
      tp_descr_get  : access function (arg1 : Object; arg2 : Object; arg3 : Object) return Object;
      tp_descr_set  : access function (arg1 : Object; arg2 : Object; arg3 : Object) return int;
      tp_dictoffset : size_t;
      tp_init       : access function (arg1 : Object; arg2 : Object; arg3 : Object) return int;
      tp_alloc      : access function (arg1 : access PyTypeObject; arg2 : int) return Object;
      tp_new        : access function (arg1 : access PyTypeObject; arg2 : Object; arg3 : Object) return Object;
      tp_free       : access procedure (arg1 : Object);
      tp_is_gc      : access function (arg1 : Object) return int;
      tp_bases      : Object;
      tp_mro        : Object;
      tp_cache      : Object;
      tp_subclasses : Object;
      tp_weaklist   : Object;
      tp_del        : access procedure (arg1 : Object);

      -- Type attribute cache version tag. Added in version 2.6
      tp_version_tag : unsigned;
      tp_finalize    : access procedure (arg1 : Object);
      tp_vectorcall  : access function (arg1 : Object; arg2 : Object; arg3 : unsigned; arg4 : Object) return Object;
   end record;
   pragma Convention (C, PyTypeObject);

   function Super_CallObject (Self : Object; Name : char_array; Args : Object) return Object;

end Py.Class_Extras;
