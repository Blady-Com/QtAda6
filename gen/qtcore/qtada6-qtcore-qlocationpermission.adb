-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlocationpermission.adb
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
with QtAda6.QtCore.QLocationPermission.Accuracy;
with QtAda6.QtCore.QLocationPermission.Availability;
package body QtAda6.QtCore.QLocationPermission is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocationPermission");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QLocationPermission.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocationPermission");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLocationPermission");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function accuracy_F (self : access Inst) return access QtAda6.QtCore.QLocationPermission.Accuracy.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLocationPermission.Accuracy.Class :=
        new QtAda6.QtCore.QLocationPermission.Accuracy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "accuracy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end accuracy_F;
   function availability_F (self : access Inst) return access QtAda6.QtCore.QLocationPermission.Availability.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QLocationPermission.Availability.Class :=
        new QtAda6.QtCore.QLocationPermission.Availability.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "availability");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end availability_F;
   procedure setAccuracy (self : access Inst; accuracy_P : access QtAda6.QtCore.QLocationPermission.Accuracy.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAccuracy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, accuracy_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAccuracy;
   procedure setAvailability
     (self : access Inst; availability_P : access QtAda6.QtCore.QLocationPermission.Availability.Inst'Class)
   is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAvailability");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, availability_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAvailability;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QLocationPermission.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtCore.QLocationPermission;
