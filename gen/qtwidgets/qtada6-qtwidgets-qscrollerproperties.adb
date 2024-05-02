-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qscrollerproperties.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtWidgets.QScrollerProperties.ScrollMetric;
package body QtAda6.QtWidgets.QScrollerProperties is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (sp_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sp_P /= null then sp_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function scrollMetric_F
     (self : access Inst; metric_P : access QtAda6.QtWidgets.QScrollerProperties.ScrollMetric.Inst'Class) return Any
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "scrollMetric");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if metric_P /= null then metric_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end scrollMetric_F;
   procedure setDefaultScrollerProperties (sp_P : access QtAda6.QtWidgets.QScrollerProperties.Inst'Class) is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Method := Object_GetAttrString (Class, "setDefaultScrollerProperties");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sp_P /= null then sp_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDefaultScrollerProperties;
   procedure setScrollMetric
     (self : access Inst; metric_P : access QtAda6.QtWidgets.QScrollerProperties.ScrollMetric.Inst'Class; value_P : Any)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScrollMetric");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if metric_P /= null then metric_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if value_P /= null then value_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScrollMetric;
   procedure unsetDefaultScrollerProperties is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QScrollerProperties");
      Method := Object_GetAttrString (Class, "unsetDefaultScrollerProperties");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end unsetDefaultScrollerProperties;
end QtAda6.QtWidgets.QScrollerProperties;
