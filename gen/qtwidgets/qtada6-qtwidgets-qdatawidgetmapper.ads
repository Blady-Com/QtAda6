-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qdatawidgetmapper.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtWidgets.QAbstractItemDelegate;
limited with QtAda6.QtCore.QAbstractItemModel;
limited with QtAda6.QtCore.Qt.Orientation;
limited with QtAda6.QtCore.QModelIndex;
limited with QtAda6.QtCore.QPersistentModelIndex;
limited with QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtWidgets.QDataWidgetMapper is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function currentIndexChanged
     (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- currentIndexChanged(int)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure addMapping (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; section_P : int);
   procedure addMapping
     (self           : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; section_P : int;
      propertyName_P : access QtAda6.QtCore.QByteArray.Inst'Class);
   procedure addMapping
     (self           : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class; section_P : int;
      propertyName_P : bytes);
   procedure clearMapping (self : access Inst);
   function currentIndex (self : access Inst) return int;
   function itemDelegate (self : access Inst) return access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class;
   function mappedPropertyName
     (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function mappedSection (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class) return int;
   function mappedWidgetAt (self : access Inst; section_P : int) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function model (self : access Inst) return access QtAda6.QtCore.QAbstractItemModel.Inst'Class;
   function orientation (self : access Inst) return access QtAda6.QtCore.Qt.Orientation.Inst'Class;
   procedure removeMapping (self : access Inst; widget_P : access QtAda6.QtWidgets.QWidget.Inst'Class);
   procedure revert (self : access Inst);
   function rootIndex (self : access Inst) return access QtAda6.QtCore.QModelIndex.Inst'Class;
   procedure setCurrentIndex (self : access Inst; index_P : int);
   procedure setCurrentModelIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setCurrentModelIndex (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setItemDelegate
     (self : access Inst; delegate_P : access QtAda6.QtWidgets.QAbstractItemDelegate.Inst'Class);
   procedure setModel (self : access Inst; model_P : access QtAda6.QtCore.QAbstractItemModel.Inst'Class);
   procedure setOrientation (self : access Inst; aOrientation_P : access QtAda6.QtCore.Qt.Orientation.Inst'Class);
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QModelIndex.Inst'Class);
   procedure setRootIndex (self : access Inst; index_P : access QtAda6.QtCore.QPersistentModelIndex.Inst'Class);
   procedure setSubmitPolicy
     (self : access Inst; policy_P : access QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy.Inst'Class);
   function submit (self : access Inst) return bool;
   function submitPolicy_F
     (self : access Inst) return access QtAda6.QtWidgets.QDataWidgetMapper.SubmitPolicy.Inst'Class;
   procedure toFirst (self : access Inst);
   procedure toLast (self : access Inst);
   procedure toNext (self : access Inst);
   procedure toPrevious (self : access Inst);
end QtAda6.QtWidgets.QDataWidgetMapper;
