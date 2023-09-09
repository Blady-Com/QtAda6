-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsemaphore.adb
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
package body QtAda6.QtCore.QSemaphore is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (n_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSemaphore");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure acquire (self : access Inst; n_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "acquire");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
   end acquire;
   function available (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "available");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end available;
   procedure release (self : access Inst; n_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "release");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
   end release;
   function tryAcquire (self : access Inst; n_P : int; timeout_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryAcquire");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Tuple_SetItem (Args, 1, Long_FromLong (timeout_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryAcquire;
   function tryAcquire (self : access Inst; n_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryAcquire");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (n_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryAcquire;
   function try_acquire (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "try_acquire");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end try_acquire;
end QtAda6.QtCore.QSemaphore;
