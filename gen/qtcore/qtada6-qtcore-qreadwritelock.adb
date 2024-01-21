-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qreadwritelock.adb
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
with QtAda6.QtCore.QReadWriteLock.RecursionMode;
package body QtAda6.QtCore.QReadWriteLock is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (recursionMode_P : access QtAda6.QtCore.QReadWriteLock.RecursionMode.Inst'Class := null) return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QReadWriteLock");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if recursionMode_P /= null then recursionMode_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure lockForRead (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lockForRead");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end lockForRead;
   procedure lockForWrite (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "lockForWrite");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end lockForWrite;
   function tryLockForRead (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryLockForRead");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryLockForRead;
   function tryLockForRead (self : access Inst; timeout_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryLockForRead");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timeout_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryLockForRead;
   function tryLockForWrite (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryLockForWrite");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryLockForWrite;
   function tryLockForWrite (self : access Inst; timeout_P : int) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tryLockForWrite");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (timeout_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end tryLockForWrite;
   procedure unlock (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "unlock");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end unlock;
end QtAda6.QtCore.QReadWriteLock;
