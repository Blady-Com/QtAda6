-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qabstractfileiconprovider.adb
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
with QtAda6.QtCore.QFileInfo;
with QtAda6.QtGui.QIcon;
with QtAda6.QtGui.QAbstractFileIconProvider.IconType;
with QtAda6.QtGui.QAbstractFileIconProvider.Option;
package body QtAda6.QtGui.QAbstractFileIconProvider is
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
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QAbstractFileIconProvider");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function icon
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class)
      return access QtAda6.QtGui.QIcon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "icon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end icon;
   function icon
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QAbstractFileIconProvider.IconType.Inst'Class)
      return access QtAda6.QtGui.QIcon.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QIcon.Class := new QtAda6.QtGui.QIcon.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "icon");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end icon;
   function options (self : access Inst) return access QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtGui.QAbstractFileIconProvider.Option.Class :=
        new QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "options");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end options;
   procedure setOptions (self : access Inst; arg_1_P : access QtAda6.QtGui.QAbstractFileIconProvider.Option.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOptions");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setOptions;
   function type_K (self : access Inst; arg_1_P : access QtAda6.QtCore.QFileInfo.Inst'Class) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "type");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end type_K;
end QtAda6.QtGui.QAbstractFileIconProvider;
