-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qtooltip.adb
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
with QtAda6.QtGui.QFont;
with QtAda6.QtGui.QPalette;
with QtAda6.QtCore.Qt.GlobalColor;
with QtAda6.QtGui.QColor;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QRect;
package body QtAda6.QtWidgets.QToolTip is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function font return access QtAda6.QtGui.QFont.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QFont.Class := new QtAda6.QtGui.QFont.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method           := Object_GetAttrString (Class, "font");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end font;
   procedure hideText is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method := Object_GetAttrString (Class, "hideText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end hideText;
   function isVisible return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method := Object_GetAttrString (Class, "isVisible");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isVisible;
   function palette return access QtAda6.QtGui.QPalette.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QPalette.Class := new QtAda6.QtGui.QPalette.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method           := Object_GetAttrString (Class, "palette");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end palette;
   procedure setFont (arg_1_P : UNION_QtAda6_QtGui_QFontstrSEQUENCE_str) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method := Object_GetAttrString (Class, "setFont");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setFont;
   procedure setPalette (arg_1_P : UNION_QtAda6_QtGui_QPaletteQtAda6_QtCore_Qt_GlobalColorQtAda6_QtGui_QColor) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method := Object_GetAttrString (Class, "setPalette");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setPalette;
   procedure showText
     (pos_P          : access QtAda6.QtCore.QPoint.Inst'Class; text_P : str;
      w_P : access QtAda6.QtWidgets.QWidget.Inst'Class := null; rect_P : access QtAda6.QtCore.QRect.Inst'Class := null;
      msecShowTime_P : int                                        := 0)
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method := Object_GetAttrString (Class, "showText");
      Args   := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if rect_P /= null then rect_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, Long_FromLong (msecShowTime_P));
      Result := Object_CallObject (Method, Args, True);
   end showText;
   function text return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QToolTip");
      Method := Object_GetAttrString (Class, "text");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end text;
end QtAda6.QtWidgets.QToolTip;
