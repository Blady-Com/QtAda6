-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextoption.adb
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
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextOption.Flag;
with QtAda6.QtGui.QTextOption.Tab;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtGui.QTextOption.WrapMode;
package body QtAda6.QtGui.QTextOption is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (o_P : UNION_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if o_P /= null then o_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function flags (self : access Inst) return access QtAda6.QtGui.QTextOption.Flag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextOption.Flag.Class := new QtAda6.QtGui.QTextOption.Flag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAlignment;
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtGui.QTextOption.Flag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if flags_P /= null then flags_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFlags;
   procedure setTabArray (self : access Inst; tabStops_P : SEQUENCE_float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabArray");
      List   := List_New (tabStops_P'Length);
      for ind in tabStops_P'Range loop
         List_SetItem (List, ssize_t (ind - tabStops_P'First), Float_FromDouble (tabStops_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabArray;
   procedure setTabStopDistance (self : access Inst; tabStopDistance_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabStopDistance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (tabStopDistance_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabStopDistance;
   procedure setTabs (self : access Inst; tabStops_P : SEQUENCE_QtAda6_QtGui_QTextOption_Tab) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabs");
      List   := List_New (tabStops_P'Length);
      for ind in tabStops_P'Range loop
         List_SetItem
           (List, ssize_t (ind - tabStops_P'First),
            (if tabStops_P (ind) /= null then tabStops_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTabs;
   procedure setTextDirection (self : access Inst; aDirection_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if aDirection_P /= null then aDirection_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTextDirection;
   procedure setUseDesignMetrics (self : access Inst; b_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUseDesignMetrics");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setUseDesignMetrics;
   procedure setWrapMode (self : access Inst; wrap_P : access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWrapMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if wrap_P /= null then wrap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWrapMode;
   function tabArray (self : access Inst) return LIST_float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabArray");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end tabArray;
   function tabStopDistance (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabStopDistance");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end tabStopDistance;
   function tabs (self : access Inst) return LIST_QtAda6_QtGui_QTextOption_Tab is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabs");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end tabs;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textDirection");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textDirection;
   function useDesignMetrics (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "useDesignMetrics");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end useDesignMetrics;
   function wrapMode_F (self : access Inst) return access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextOption.WrapMode.Class := new QtAda6.QtGui.QTextOption.WrapMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "wrapMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end wrapMode_F;
end QtAda6.QtGui.QTextOption;
