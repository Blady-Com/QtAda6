with Ada.Numerics.Discrete_Random;
with QtAda6.QtCore.Qt.AlignmentFlag;

package body Test_04_MyWidget is

   package Random_List is new Ada.Numerics.Discrete_Random (Positive);
   Gen_List : Random_List.Generator;

   procedure Finalize (Self : in out Class) is
   begin
      QtAda6.QtWidgets.QPushButton.Finalize (Self.Button);
      QtAda6.QtWidgets.QLabel.Finalize (Self.Text);
      QtAda6.QtWidgets.QVBoxLayout.Finalize (Self.Layout);
      QtAda6.QtWidgets.QWidget.Finalize (QtAda6.QtWidgets.QWidget.Class (Self));
   end Finalize;

   function Create (Callback : Py.Handle) return Class is
      Widget : QtAda6.QtWidgets.QWidget.Class := QtAda6.QtWidgets.QWidget.Create;
      CB     : QtAda6.Any                     := new qtada6.Object'(Python_Proxy => Callback);
   begin
      return Self : constant Class := new Inst'(QtAda6.QtWidgets.QWidget.Inst_Access (Widget).all with others => <>) do
         Self.Hello  := ["Hallo Welt", "Hei maailma", "Hola Mundo", "Привет мир"];
         Self.Button := QtAda6.QtWidgets.QPushButton.Create ("Click me!");
         Self.Text   := QtAda6.QtWidgets.QLabel.Create ("Hello World");
         Self.Layout :=
           QtAda6.QtWidgets.QVBoxLayout.Create
             (QtAda6.QtWidgets.QWidget.Class (QtAda6.QtWidgets.QWidget.Inst_Access (Self)));
         Self.Layout.addWidget (arg_1_P => QtAda6.QtWidgets.QWidget.Inst_Access (Self.Text), stretch_P => 50);
         Self.Layout.addWidget
           (arg_1_P     => QtAda6.QtWidgets.QWidget.Inst_Access (Self.Button),
            alignment_P => QtAda6.QtCore.Qt.AlignmentFlag.AlignRight);
         Self.Button.clicked.U_get_U.connect (CB);
         QtAda6.Finalize (CB);
         QtAda6.QtWidgets.QWidget.Finalize (Widget);
      end return;
   end Create;

   procedure Magic (Self : access Inst) is
   begin
      Self.Text.setText (Self.Hello (Random_List.Random (Gen_List) mod Positive (Self.Hello.Length) + 1));
   end Magic;

end Test_04_MyWidget;
