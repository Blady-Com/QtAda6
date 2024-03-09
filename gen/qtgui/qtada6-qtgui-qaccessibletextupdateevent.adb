-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qaccessibletextupdateevent.adb
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
with QtAda6.QtGui.QAccessibleInterface;
with QtAda6.QtCore.QObject;
package body QtAda6.QtGui.QAccessibleTextUpdateEvent is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create
     (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class; position_P : int; oldText_P : str; text_P : str)
      return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTextUpdateEvent");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if iface_P /= null then iface_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (position_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (oldText_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (obj_P : access QtAda6.QtCore.QObject.Inst'Class; position_P : int; oldText_P : str; text_P : str) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAccessibleTextUpdateEvent");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if obj_P /= null then obj_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (position_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (oldText_P));
      Tuple_SetItem (Args, 3, Unicode_FromString (text_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function changePosition (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changePosition");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end changePosition;
   function textInserted (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textInserted");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end textInserted;
   function textRemoved (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "textRemoved");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end textRemoved;
end QtAda6.QtGui.QAccessibleTextUpdateEvent;
