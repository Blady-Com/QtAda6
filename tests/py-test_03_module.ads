with QtAda6.QtGui.QPainter;

package Py.Test_03_Module is

   procedure Create;

   type Callback_Type is access procedure (p : access QtAda6.QtGui.QPainter.Inst'Class);

   procedure Set (Callback : Callback_Type);

end Py.Test_03_Module;
