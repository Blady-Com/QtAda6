-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmutex.adb
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
with QtAda6.QtCore.QBasicMutex;
package body QtAda6.QtCore.QMutex is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMutex");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function tryLock (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryLock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryLock;
   function tryLock (self : access Inst; timeout_P : int) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryLock");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timeout_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryLock;
   function try_lock (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "try_lock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end try_lock;
end QtAda6.QtCore.QMutex;
