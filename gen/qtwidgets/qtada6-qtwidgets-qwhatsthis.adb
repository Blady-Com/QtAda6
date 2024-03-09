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
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function createAction
     (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return access QtAda6.QtGui.QAction.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QAction.Class := new QtAda6.QtGui.QAction.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "createAction");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createAction;
   procedure enterWhatsThisMode is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "enterWhatsThisMode");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end enterWhatsThisMode;
   procedure hideText is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "hideText");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end hideText;
   function inWhatsThisMode return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "inWhatsThisMode");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end inWhatsThisMode;
   procedure leaveWhatsThisMode is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "leaveWhatsThisMode");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end leaveWhatsThisMode;
   procedure showText
     (pos_P : access QtAda6.QtCore.QPoint.Inst'Class; text_P : str;
      w_P   : access QtAda6.QtWidgets.QWidget.Inst'Class := null)
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QWhatsThis");
      Method := Object_GetAttrString (Class, "showText");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if pos_P /= null then pos_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Dict := Dict_New;
      if w_P /= null then
         Dict_SetItemString (Dict, "w", w_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end showText;
end QtAda6.QtWidgets.QWhatsThis;
