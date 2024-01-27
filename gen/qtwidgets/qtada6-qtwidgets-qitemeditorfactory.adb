-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qitemeditorfactory.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtWidgets.QItemEditorCreatorBase;
with QtAda6.QtCore.QByteArray;
package body QtAda6.QtWidgets.QItemEditorFactory is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemEditorFactory");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function createEditor
     (self : access Inst; userType_P : int; parent_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtWidgets.QWidget.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "createEditor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (userType_P));
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end createEditor;
   function defaultFactory return access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class is
      Class, Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QItemEditorFactory.Class := new QtAda6.QtWidgets.QItemEditorFactory.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemEditorFactory");
      Method           := Object_GetAttrString (Class, "defaultFactory");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end defaultFactory;
   procedure registerEditor
     (self : access Inst; userType_P : int; creator_P : access QtAda6.QtWidgets.QItemEditorCreatorBase.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "registerEditor");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (userType_P));
      Tuple_SetItem (Args, 1, (if creator_P /= null then creator_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end registerEditor;
   procedure setDefaultFactory (factory_P : access QtAda6.QtWidgets.QItemEditorFactory.Inst'Class) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QItemEditorFactory");
      Method := Object_GetAttrString (Class, "setDefaultFactory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if factory_P /= null then factory_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setDefaultFactory;
   function valuePropertyName (self : access Inst; userType_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "valuePropertyName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (userType_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end valuePropertyName;
end QtAda6.QtWidgets.QItemEditorFactory;
