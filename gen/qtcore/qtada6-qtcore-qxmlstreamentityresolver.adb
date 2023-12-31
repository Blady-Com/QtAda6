-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qxmlstreamentityresolver.adb
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
package body QtAda6.QtCore.QXmlStreamEntityResolver is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QXmlStreamEntityResolver");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function resolveEntity (self : access Inst; publicId_P : str; systemId_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveEntity");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (publicId_P));
      Tuple_SetItem (Args, 1, Unicode_FromString (systemId_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end resolveEntity;
   function resolveUndeclaredEntity (self : access Inst; name_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveUndeclaredEntity");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (name_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end resolveUndeclaredEntity;
end QtAda6.QtCore.QXmlStreamEntityResolver;
