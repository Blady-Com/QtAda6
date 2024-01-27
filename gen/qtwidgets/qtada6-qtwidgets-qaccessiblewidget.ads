-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qaccessiblewidget.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QWidget;
limited with QtAda6.QtGui.QAccessible.Role;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QAccessibleInterface;
limited with QtAda6.QtGui.QAccessible.InterfaceType;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QAccessible.RelationFlag;
limited with QtAda6.QtGui.QAccessible.State;
limited with QtAda6.QtGui.QAccessible.Text;
limited with QtAda6.QtGui.QWindow;
with QtAda6.QtGui.QAccessibleObject;
with QtAda6.QtGui.QAccessibleActionInterface;
package QtAda6.QtWidgets.QAccessibleWidget is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QAccessibleObject.Inst
--  and QtAda6.QtGui.QAccessibleActionInterface.Inst
   with null record;
   type LIST_str is array (Positive range <>) of str;
   type LIST_TUPLE_QtAda6_QtGui_QAccessibleInterfaceQtAda6_QtGui_QAccessible_RelationFlag is
     array (Positive range <>) of TUPLE_QtAda6_QtGui_QAccessibleInterface_QtAda6_QtGui_QAccessible_RelationFlag;
   procedure Finalize (Self : in out Class);
   function Create
     (o_P : access QtAda6.QtWidgets.QWidget.Inst'Class; r_P : access QtAda6.QtGui.QAccessible.Role.Inst'Class := null;
      name_P : str := "") return Class;
   function actionNames (self : access Inst) return LIST_str;
   procedure addControllingSignal (self : access Inst; signal_P : str);
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function child (self : access Inst; index_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function childCount (self : access Inst) return int;
   procedure doAction (self : access Inst; actionName_P : str);
   function focusChild (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function foregroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function indexOfChild (self : access Inst; child_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int;
   function interface_cast
     (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.InterfaceType.Inst'Class) return int;
   function isValid (self : access Inst) return bool;
   function keyBindingsForAction (self : access Inst; actionName_P : str) return LIST_str;
   function parent (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function parentObject (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function relations
     (self : access Inst; match_P : access QtAda6.QtGui.QAccessible.RelationFlag.Inst'Class := null)
      return LIST_TUPLE_QtAda6_QtGui_QAccessibleInterfaceQtAda6_QtGui_QAccessible_RelationFlag;
   function role (self : access Inst) return access QtAda6.QtGui.QAccessible.Role.Inst'Class;
   function state (self : access Inst) return access QtAda6.QtGui.QAccessible.State.Inst'Class;
   function text (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class) return str;
   function widget (self : access Inst) return access QtAda6.QtWidgets.QWidget.Inst'Class;
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
end QtAda6.QtWidgets.QAccessibleWidget;
