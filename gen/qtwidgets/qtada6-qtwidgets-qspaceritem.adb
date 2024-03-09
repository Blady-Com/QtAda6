-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qspaceritem.adb
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
with QtAda6.QtWidgets.QSizePolicy.Policy;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QRect;
with QtAda6.QtCore.QSize;
with QtAda6.QtWidgets.QSizePolicy;
with QtAda6.QtWidgets.QSpacerItem;
package body QtAda6.QtWidgets.QSpacerItem is
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
     (w_P     : int; h_P : int; hData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null;
      vData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QSpacerItem");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict := Dict_New;
      if hData_P /= null then
         Dict_SetItemString (Dict, "hData", hData_P.Python_Proxy);
      end if;
      if vData_P /= null then
         Dict_SetItemString (Dict, "vData", vData_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure changeSize
     (self : access Inst; w_P : int; h_P : int; hData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null;
      vData_P : access QtAda6.QtWidgets.QSizePolicy.Policy.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "changeSize");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (w_P));
      Tuple_SetItem (Args, 1, Long_FromLong (h_P));
      Dict := Dict_New;
      if hData_P /= null then
         Dict_SetItemString (Dict, "hData", hData_P.Python_Proxy);
      end if;
      if vData_P /= null then
         Dict_SetItemString (Dict, "vData", vData_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end changeSize;
   function expandingDirections (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "expandingDirections");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end expandingDirections;
   function geometry (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QRect.Class := new QtAda6.QtCore.QRect.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "geometry");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end geometry;
   function isEmpty (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isEmpty");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isEmpty;
   function maximumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "maximumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end maximumSize;
   function minimumSize (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "minimumSize");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end minimumSize;
   procedure setGeometry (self : access Inst; arg_1_P : access QtAda6.QtCore.QRect.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setGeometry");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setGeometry;
   function sizeHint (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizeHint");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizeHint;
   function sizePolicy (self : access Inst) return access QtAda6.QtWidgets.QSizePolicy.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QSizePolicy.Class := new QtAda6.QtWidgets.QSizePolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "sizePolicy");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end sizePolicy;
   function spacerItem (self : access Inst) return access QtAda6.QtWidgets.QSpacerItem.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QSpacerItem.Class := new QtAda6.QtWidgets.QSpacerItem.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "spacerItem");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end spacerItem;
end QtAda6.QtWidgets.QSpacerItem;
