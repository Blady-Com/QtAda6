-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qrunnable.adb
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
package body QtAda6.QtCore.QRunnable is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRunnable");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function autoDelete (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "autoDelete");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end autoDelete;
   function create (functionToRun_P : Object) return access QtAda6.QtCore.QRunnable.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QRunnable.Class := new QtAda6.QtCore.QRunnable.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QRunnable");
      Method := Object_GetAttrString (Class, "create");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, functionToRun_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end create;
   procedure run (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "run");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end run;
   procedure setAutoDelete (self : access Inst; autoDelete_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAutoDelete");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (autoDelete_P));
      Result := Object_CallObject (Method, Args, True);
   end setAutoDelete;
end QtAda6.QtCore.QRunnable;
