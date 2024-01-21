-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qmutexlocker.adb
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
with QtAda6.QtCore.QMutex;
with QtAda6.QtCore.QRecursiveMutex;
package body QtAda6.QtCore.QMutexLocker is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (m_P : access QtAda6.QtCore.QMutex.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMutexLocker");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (m_P : access QtAda6.QtCore.QRecursiveMutex.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QMutexLocker");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if m_P /= null then m_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function U_enter_U (self : access Inst) return access QtAda6.QtCore.QMutexLocker.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMutexLocker.Class := new QtAda6.QtCore.QMutexLocker.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "__enter__");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_enter_U;
   procedure U_exit_U
     (self : access Inst; arg_1_P : access Object'Class; arg_2_P : access Object'Class; arg_3_P : access Object'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__exit__");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if arg_2_P /= null then arg_2_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if arg_3_P /= null then arg_3_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end U_exit_U;
   function mutex (self : access Inst) return access QtAda6.QtCore.QMutex.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QMutex.Class := new QtAda6.QtCore.QMutex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "mutex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mutex;
   function recursiveMutex (self : access Inst) return access QtAda6.QtCore.QRecursiveMutex.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QRecursiveMutex.Class := new QtAda6.QtCore.QRecursiveMutex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "recursiveMutex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end recursiveMutex;
   procedure relock (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "relock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end relock;
   procedure unlock (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unlock;
end QtAda6.QtCore.QMutexLocker;
