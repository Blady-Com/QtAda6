-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessiblevaluechangeevent.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QAccessibleEvent;
with QtAda6.QtGui.QAccessibleInterface;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QAccessibleValueChangeEvent is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class; val_P : Any) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleValueChangeEvent");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if iface_P /= null then iface_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if val_P /= null then val_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (obj_P : access QtAda6.QtCore.QObject.Inst'Class; val_P : Any) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleValueChangeEvent");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if obj_P /= null then obj_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if val_P /= null then val_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure setValue (self : access Inst; val_P : Any) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setValue");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if val_P /= null then val_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setValue;
   function value (self : access Inst) return Any is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "value");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end value;
end QtAda6.QtGui.QAccessibleValueChangeEvent;
