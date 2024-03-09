-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtilerules.adb
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
with QtAda6.QtCore.Qt.TileRule;
package body QtAda6.QtWidgets.QTileRules is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (QTileRules_P : UNION_QtAda6_QtWidgets_QTileRules_QtAda6_QtCore_Qt_TileRule) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTileRules");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QTileRules_P /= null then QTileRules_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (horizontalRule_P : access QtAda6.QtCore.Qt.TileRule.Inst'Class;
      verticalRule_P   : access QtAda6.QtCore.Qt.TileRule.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTileRules");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if horizontalRule_P /= null then horizontalRule_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if verticalRule_P /= null then verticalRule_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (rule_P : access QtAda6.QtCore.Qt.TileRule.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTileRules");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if rule_P /= null then
         Dict_SetItemString (Dict, "rule", rule_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QTileRules");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
end QtAda6.QtWidgets.QTileRules;
