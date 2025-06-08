with Ada.Numerics.Discrete_Random;
with QtAda6.QtCore.Qt.AlignmentFlag;

with Py; use Py;
with Py.Proxy_Module;
with Proxy_Class;

package body Test_04_MyWidget is

   package Random_List is new Ada.Numerics.Discrete_Random (Positive);
   Gen_List : Random_List.Generator;

   package Test_04_Proxy_Class is new Proxy_Class ("Test_04_MyWidget", Inst, Inst_Access);

   function Test_04_magic (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Test_04_magic);

   function Test_04_magic (Self : Object; Args : Object; Keywords : Object) return Object is
   begin
      Test_04_Proxy_Class.Get_Ada_Self (Keywords).Magic;
      return Py.Proxy_Module.No_Value;
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Test_04_magic;

   procedure Finalize (Self : in out Class) is
   begin
      QtAda6.QtWidgets.QPushButton.Finalize (Self.Button);
      QtAda6.QtWidgets.QLabel.Finalize (Self.Text);
      QtAda6.QtWidgets.QVBoxLayout.Finalize (Self.layout);
      QtAda6.QtWidgets.QWidget.Finalize (QtAda6.QtWidgets.QWidget.Class (Self));
   end Finalize;

   function Create return Class is
      Python_Class : constant Handle :=
        Test_04_Proxy_Class.Derive_Class ("PySide6.QtWidgets", "QWidget", ["magic"]);
      Python_magic : Handle;
      CB           : QtAda6.Any;
   begin
      Test_04_Proxy_Class.Set (Test_04_magic'Access);

      return Self : constant Class := new Inst do
         Test_04_Proxy_Class.Init (Inst_Access (Self), Python_Class, True);

         Self.Hello  := ["Hallo Welt", "Hei maailma", "Hola Mundo", "Привет мир"];
         Self.Button := QtAda6.QtWidgets.QPushButton.Create ("Click me!");
         Self.Text   := QtAda6.QtWidgets.QLabel.Create ("Hello World");
         Self.layout :=
           QtAda6.QtWidgets.QVBoxLayout.Create
             (QtAda6.QtWidgets.QWidget.Class (QtAda6.QtWidgets.QWidget.Inst_Access (Self)));
         Self.Layout.addWidget (arg_1_P => QtAda6.QtWidgets.QWidget.Inst_Access (Self.Text), stretch_P => 50);
         Self.Layout.addWidget
           (arg_1_P     => QtAda6.QtWidgets.QWidget.Inst_Access (Self.Button),
            alignment_P => QtAda6.QtCore.Qt.AlignmentFlag.AlignRight);

         Python_magic := Object_GetAttrString (Self.Python_Proxy, "magic");
         CB           := new qtada6.Object'(Python_Proxy => Python_magic);
         Self.Button.clicked.U_get_U.connect (CB);
         QtAda6.Finalize (CB);
      end return;
   end Create;

   procedure Magic (Self : access Inst) is
   begin
      Self.Text.setText (Self.Hello (Random_List.Random (Gen_List) mod Positive (Self.Hello.Length) + 1));
   end Magic;

end Test_04_MyWidget;
