-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qdatawidgetmapper.adb
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
with QtAda6.QtWidgets.QWidget;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtWidgets.QAbstractItemDelegate;
with QtAda6.QtCore.QAbstractItemModel;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QPersistentModelIndex;
with QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy;
package body QtAda6.QtWidgets.QDataWidgetMapper is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function currentIndexChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "currentIndexChanged"));
   end currentIndexChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QDataWidgetMapper");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addMapping (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; section_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMapping");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (section_P));
      Result := Object_CallObject (Method, Args, True);
   end addMapping;
   procedure addMapping
     (self           : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; section_P : int;
      propertyName_P : UNION_QtAda6_QtCore_QByteArraybytes)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addMapping");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (section_P));
      Tuple_SetItem (Args, 2, (if propertyName_P /= null then propertyName_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end addMapping;
   procedure clearMapping (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearMapping");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end clearMapping;
   function currentIndex (self : access Inst) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "currentIndex");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end currentIndex;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtWidgets.QAbstractItemDelegate.Class := new QtAda6.QtWidgets.QAbstractItemDelegate.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "itemDelegate");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end itemDelegate;
   function mappedPropertyName
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mappedPropertyName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mappedPropertyName;
   function mappedSection (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mappedSection");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end mappedSection;
   function mappedWidgetAt (self : access Inst; section_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QWidget.Class := new QtAda6.QtWidgets.QWidget.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mappedWidgetAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (section_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mappedWidgetAt;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret : constant QtAda6.QtCore.QAbstractItemModel.Class := new QtAda6.QtCore.QAbstractItemModel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "model");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end model;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.Qt.Orientation.Class := new QtAda6.QtCore.Qt.Orientation.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "orientation");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end orientation;
   procedure removeMapping (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeMapping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if widget_P /= null then widget_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeMapping;
   procedure revert (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "revert");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end revert;
   function rootIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QModelIndex.Class := new QtAda6.QtCore.QModelIndex.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "rootIndex");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end rootIndex;
   procedure setCurrentIndex (self : access Inst; index_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentIndex;
   procedure setCurrentModelIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCurrentModelIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setCurrentModelIndex;
   procedure setItemDelegate (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setItemDelegate");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if delegate_P /= null then delegate_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setItemDelegate;
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setModel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if model_P /= null then model_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setModel;
   procedure setOrientation (self : access Inst; aOrientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setOrientation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if aOrientation_P /= null then aOrientation_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setOrientation;
   procedure setRootIndex
     (self : access Inst; index_P : UNION_QtAda6_QtCore_QModelIndexQtAda6_QtCore_QPersistentModelIndex)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setRootIndex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if index_P /= null then index_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setRootIndex;
   procedure setSubmitPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setSubmitPolicy");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if policy_P /= null then policy_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setSubmitPolicy;
   function submit_F (self : access Inst) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "submit");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end submit_F;
   function submitPolicy_F (self : access Inst) return access QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy.Class :=
        new QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "submitPolicy");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end submitPolicy_F;
   procedure toFirst (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toFirst");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toFirst;
   procedure toLast (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toLast");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toLast;
   procedure toNext (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toNext");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toNext;
   procedure toPrevious (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPrevious");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toPrevious;
end QtAda6.QtWidgets.QDataWidgetMapper;
