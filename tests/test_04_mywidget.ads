with QtAda6.QtWidgets.QPushButton;
with QtAda6.QtWidgets.QLabel;
with QtAda6.QtWidgets.QVBoxLayout;
with QtAda6.QtWidgets.QWidget;

with Py;

with UXStrings.Lists;

package Test_04_MyWidget is

   type Inst is new QtAda6.QtWidgets.QWidget.Inst with record
      Hello  : UXStrings.Lists.UXString_List;
      Button : QtAda6.QtWidgets.QPushButton.Class;
      Text   : QtAda6.QtWidgets.QLabel.Class;
      Layout : QtAda6.QtWidgets.QVBoxLayout.Class;
   end record;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;

   procedure Finalize (Self : in out Class);

   function Create (Callback : Py.Handle) return Class;

   procedure Magic (Self : access Inst);

end Test_04_MyWidget;
