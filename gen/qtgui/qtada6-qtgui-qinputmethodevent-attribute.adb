-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qinputmethodevent-attribute.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QInputMethodEvent.AttributeType;
package body QtAda6.QtGui.QInputMethodEvent.Attribute is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (Attribute_P : access QtAda6.QtGui.QInputMethodEvent.Attribute.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Attribute");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Attribute_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (typ_P : access QtAda6.QtGui.QInputMethodEvent.AttributeType.Inst'Class; s_P : int; l_P : int) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Attribute");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, typ_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (s_P));
      Tuple_SetItem (Args, 2, Long_FromLong (l_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (typ_P : access QtAda6.QtGui.QInputMethodEvent.AttributeType.Inst'Class; s_P : int; l_P : int; val_P : Any)
      return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Attribute");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, typ_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Long_FromLong (s_P));
      Tuple_SetItem (Args, 2, Long_FromLong (l_P));
      Tuple_SetItem (Args, 3, Any_conv_A2P_is_not_supported);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Attribute");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
end QtAda6.QtGui.QInputMethodEvent.Attribute;
