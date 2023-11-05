package Py.Test_04_Module is

   procedure Create;

   type Callback_Type is access procedure;

   procedure Set (Callback : Callback_Type);

end Py.Test_04_Module;
