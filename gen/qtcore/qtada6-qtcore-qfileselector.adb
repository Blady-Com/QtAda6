-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfileselector.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QUrl;
package body QtAda6.QtCore.QFileSelector is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileSelector");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function allSelectors (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "allSelectors");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end allSelectors;
   function extraSelectors (self : access Inst) return List_str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "extraSelectors");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end extraSelectors;
   function select_K (self : access Inst; filePath_P : str) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (filePath_P));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end select_K;
   function select_K
     (self : access Inst; filePath_P : Union_QtAda6_QtCore_QUrl_str) return access QtAda6.QtCore.QUrl.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QUrl.Class := new QtAda6.QtCore.QUrl.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "select");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end select_K;
   procedure setExtraSelectors (self : access Inst; list_P : Sequence_str) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setExtraSelectors");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setExtraSelectors;
end QtAda6.QtCore.QFileSelector;
