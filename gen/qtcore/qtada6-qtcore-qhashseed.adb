-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qhashseed.adb
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
package body QtAda6.QtCore.QHashSeed is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (QHashSeed_P : Union_QtAda6_QtCore_QHashSeed_int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QHashSeed");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (d_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QHashSeed");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (d_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QHashSeed");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function globalSeed return access QtAda6.QtCore.QHashSeed.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QHashSeed.Class := new QtAda6.QtCore.QHashSeed.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QHashSeed");
      Method           := Object_GetAttrString (Class, "globalSeed");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalSeed;
   procedure resetRandomGlobalSeed is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QHashSeed");
      Method := Object_GetAttrString (Class, "resetRandomGlobalSeed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end resetRandomGlobalSeed;
   procedure setDeterministicGlobalSeed is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QHashSeed");
      Method := Object_GetAttrString (Class, "setDeterministicGlobalSeed");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end setDeterministicGlobalSeed;
end QtAda6.QtCore.QHashSeed;
