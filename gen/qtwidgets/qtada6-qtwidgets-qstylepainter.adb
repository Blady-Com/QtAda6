-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qstylepainter.adb
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
with QtAda6.QtGui.QPaintDevice;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QStyle.ComplexControl;
with QtAda6.QtWidgets.QStyleOptionComplex;
with QtAda6.QtWidgets.QStyle.ControlElement;
with QtAda6.QtWidgets.QStyleOption;
with QtAda6.QtCore.QRect;
with QtAda6.QtGui.QPixmap;
with QtAda6.QtGui.QImage;
with QtAda6.QtGui.QPalette;
with QtAda6.QtGui.QPalette.ColorRole;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtWidgets.QStyle.PrimitiveElement;
with QtAda6.QtWidgets.QStyle;
package body QtAda6.QtWidgets.QStylePainter is
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
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStylePainter");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStylePainter");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pd_P /= null then pd_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QStylePainter");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function begin_K
     (self : access Inst; pd_P : access QtAda6.QtGui.QPaintDevice.Inst'Class;
      w_P  : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "begin");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pd_P /= null then pd_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end begin_K;
   function begin_K (self : access Inst; w_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "begin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end begin_K;
   procedure drawComplexControl
     (self  : access Inst; cc_P : access QtAda6.QtWidgets.QStyle.ComplexControl.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOptionComplex.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawComplexControl");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if cc_P /= null then cc_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawComplexControl;
   procedure drawControl
     (self  : access Inst; ce_P : access QtAda6.QtWidgets.QStyle.ControlElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawControl");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if ce_P /= null then ce_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawControl;
   procedure drawItemPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : access QtAda6.QtGui.QPixmap.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemPixmap;
   procedure drawItemPixmap
     (self     : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pixmap_P : access QtAda6.QtGui.QImage.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pixmap_P /= null then pixmap_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemPixmap;
   procedure drawItemPixmap
     (self : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int; pixmap_P : str)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemPixmap");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, Unicode_FromString (pixmap_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemPixmap;
   procedure drawItemText
     (self       : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P      : access QtAda6.QtGui.QPalette.Inst'Class; enabled_P : bool; text_P : str;
      textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, To_Python (enabled_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (text_P));
      Dict := Dict_New;
      if textRole_P /= null then
         Dict_SetItemString (Dict, "textRole", textRole_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemText;
   procedure drawItemText
     (self       : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P      : access QtAda6.QtCore.Qt.GlobalColor.Inst'Class; enabled_P : bool; text_P : str;
      textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, To_Python (enabled_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (text_P));
      Dict := Dict_New;
      if textRole_P /= null then
         Dict_SetItemString (Dict, "textRole", textRole_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemText;
   procedure drawItemText
     (self       : access Inst; r_P : access QtAda6.QtCore.QRect.Inst'Class; flags_P : int;
      pal_P      : access QtAda6.QtGui.QColor.Inst'Class; enabled_P : bool; text_P : str;
      textRole_P : access QtAda6.QtGui.QPalette.ColorRole.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawItemText");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if r_P /= null then r_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (flags_P));
      Tuple_SetItem (Args, 2, (if pal_P /= null then pal_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, To_Python (enabled_P));
      Tuple_SetItem (Args, 4, Unicode_FromString (text_P));
      Dict := Dict_New;
      if textRole_P /= null then
         Dict_SetItemString (Dict, "textRole", textRole_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end drawItemText;
   procedure drawPrimitive
     (self  : access Inst; pe_P : access QtAda6.QtWidgets.QStyle.PrimitiveElement.Inst'Class;
      opt_P : access QtAda6.QtWidgets.QStyleOption.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "drawPrimitive");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pe_P /= null then pe_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if opt_P /= null then opt_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end drawPrimitive;
   function style (self : access Inst) return access QtAda6.QtWidgets.QStyle.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QStyle.Class := new QtAda6.QtWidgets.QStyle.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "style");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end style;
end QtAda6.QtWidgets.QStylePainter;
