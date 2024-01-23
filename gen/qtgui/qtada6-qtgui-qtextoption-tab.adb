-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextoption-tab.adb
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
with QtAda6.QtGui.QTextOption.TabType;
package body QtAda6.QtGui.QTextOption.Tab is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Tab");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (Tab_P : access QtAda6.QtGui.QTextOption.Tab.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Tab");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if Tab_P /= null then Tab_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (pos_P : float; tabType_P : access QtAda6.QtGui.QTextOption.TabType.Inst'Class; delim_P : str := "") return Class
   is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Tab");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Float_FromDouble (pos_P));
      Tuple_SetItem (Args, 1, (if tabType_P /= null then tabType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, Unicode_FromString (delim_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "Tab");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
end QtAda6.QtGui.QTextOption.Tab;
