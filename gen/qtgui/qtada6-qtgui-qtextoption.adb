-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtextoption.adb
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
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextOption.Flag;
with QtAda6.QtGui.QTextOption.Tab;
with QtAda6.QtCore.Qt.LayoutDirection;
with QtAda6.QtGui.QTextOption.WrapMode;
package body QtAda6.QtGui.QTextOption is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, alignment_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (o_P : Union_QtAda6_QtGui_QTextOption_QtAda6_QtCore_Qt_AlignmentFlag) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextOption");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function flags (self : access Inst) return access QtAda6.QtGui.QTextOption.Flag.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtGui.QTextOption.Flag.Class := new QtAda6.QtGui.QTextOption.Flag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "flags");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flags;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, alignment_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setAlignment;
   procedure setFlags (self : access Inst; flags_P : access QtAda6.QtGui.QTextOption.Flag.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFlags");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, flags_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setFlags;
   procedure setTabArray (self : access Inst; tabStops_P : Sequence_float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabArray");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setTabArray;
   procedure setTabStopDistance (self : access Inst; tabStopDistance_P : float) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabStopDistance");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (tabStopDistance_P));
      Result := Object_CallObject (Method, Args, True);
   end setTabStopDistance;
   procedure setTabs (self : access Inst; tabStops_P : Sequence_QtAda6_QtGui_QTextOption_Tab) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTabs");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end setTabs;
   procedure setTextDirection (self : access Inst; aDirection_P : access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTextDirection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, aDirection_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setTextDirection;
   procedure setUseDesignMetrics (self : access Inst; b_P : bool) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setUseDesignMetrics");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (b_P));
      Result := Object_CallObject (Method, Args, True);
   end setUseDesignMetrics;
   procedure setWrapMode (self : access Inst; wrap_P : access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWrapMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, wrap_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end setWrapMode;
   function tabArray (self : access Inst) return List_float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabArray");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end tabArray;
   function tabStopDistance (self : access Inst) return float is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabStopDistance");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Float_AsDouble (Result);
   end tabStopDistance;
   function tabs (self : access Inst) return List_QtAda6_QtGui_QTextOption_Tab is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "tabs");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end tabs;
   function textDirection (self : access Inst) return access QtAda6.QtCore.Qt.LayoutDirection.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.LayoutDirection.Class := new QtAda6.QtCore.Qt.LayoutDirection.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "textDirection");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end textDirection;
   function useDesignMetrics (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "useDesignMetrics");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end useDesignMetrics;
   function wrapMode_F (self : access Inst) return access QtAda6.QtGui.QTextOption.WrapMode.Inst'Class is
      Method, Args, Result : Handle;
      Ret : constant QtAda6.QtGui.QTextOption.WrapMode.Class := new QtAda6.QtGui.QTextOption.WrapMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "wrapMode");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end wrapMode_F;
end QtAda6.QtGui.QTextOption;
