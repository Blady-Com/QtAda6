-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qwhatsthis.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QAction;
with QtAda6.QtCore.QPoint;
with QtAda6.QtWidgets.QWidget;
package body QtAda6.QtWidgets.QWhatsThis is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function createAction
     (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Class, Method, Args, List, Result : Handle;
      Ret                               : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "createAction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createAction;
   procedure enterWhatsThisMode is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "enterWhatsThisMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end enterWhatsThisMode;
   procedure hideText is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "hideText");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end hideText;
   function inWhatsThisMode return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "inWhatsThisMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end inWhatsThisMode;
   procedure leaveWhatsThisMode is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "leaveWhatsThisMode");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end leaveWhatsThisMode;
   procedure showText
     (pos_P : access QtAda6.QtCore.QPoint.Inst'Class; text_P : str;
      w_P   : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "showText");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Tuple_SetItem (Args, 2, (if w_P /= null then w_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end showText;
end QtAda6.QtWidgets.QWhatsThis;
