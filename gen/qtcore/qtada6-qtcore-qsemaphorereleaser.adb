-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsemaphorereleaser.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QSemaphore;
package body QtAda6.QtCore.QSemaphoreReleaser is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSemaphoreReleaser");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (sem_P : access QtAda6.QtCore.QSemaphore.Inst'Class; n_P : int := 0) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSemaphoreReleaser");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if sem_P /= null then sem_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (n_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function cancel (self : access Inst) return access QtAda6.QtCore.QSemaphore.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSemaphore.Class := new QtAda6.QtCore.QSemaphore.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "cancel");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end cancel;
   function semaphore (self : access Inst) return access QtAda6.QtCore.QSemaphore.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QSemaphore.Class := new QtAda6.QtCore.QSemaphore.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "semaphore");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end semaphore;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QSemaphoreReleaser.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if other_P /= null then other_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtCore.QSemaphoreReleaser;
