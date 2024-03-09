-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibleinterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAccessibleActionInterface;
limited with QtAda6.QtGui.QColor;
limited with QtAda6.QtGui.QAccessibleEditableTextInterface;
limited with QtAda6.QtGui.QAccessible.InterfaceType;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QRect;
limited with QtAda6.QtGui.QAccessible.RelationFlag;
limited with QtAda6.QtGui.QAccessible.Role;
limited with QtAda6.QtGui.QAccessible.Text;
limited with QtAda6.QtGui.QAccessible.State;
limited with QtAda6.QtGui.QAccessibleTableCellInterface;
limited with QtAda6.QtGui.QAccessibleTextInterface;
limited with QtAda6.QtGui.QAccessibleValueInterface;
limited with QtAda6.QtGui.QWindow;
package QtAda6.QtGui.QAccessibleInterface is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type LIST_TUPLE_QtAda6_QtGui_QAccessibleInterface_QtAda6_QtGui_QAccessible_RelationFlag is
     array (Positive range <>) of TUPLE_QtAda6_QtGui_QAccessibleInterface_QtAda6_QtGui_QAccessible_RelationFlag;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function actionInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleActionInterface.Inst'Class;
   function backgroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function child (self : access Inst; index_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function childAt
     (self : access Inst; x_P : int; y_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function childCount (self : access Inst) return int;
   function editableTextInterface
     (self : access Inst) return access QtAda6.QtGui.QAccessibleEditableTextInterface.Inst'Class;
   function focusChild (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function foregroundColor (self : access Inst) return access QtAda6.QtGui.QColor.Inst'Class;
   function indexOfChild (self : access Inst; arg_1_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int;
   function interface_cast
     (self : access Inst; arg_1_P : access QtAda6.QtGui.QAccessible.InterfaceType.Inst'Class) return int;
   function isValid (self : access Inst) return bool;
   function object (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   function parent (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function rect (self : access Inst) return access QtAda6.QtCore.QRect.Inst'Class;
   function relations
     (self : access Inst; match_P : access QtAda6.QtGui.QAccessible.RelationFlag.Inst'Class := null)
      return LIST_TUPLE_QtAda6_QtGui_QAccessibleInterface_QtAda6_QtGui_QAccessible_RelationFlag;
   function role (self : access Inst) return access QtAda6.QtGui.QAccessible.Role.Inst'Class;
   procedure setText (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class; text_P : str);
   function state (self : access Inst) return access QtAda6.QtGui.QAccessible.State.Inst'Class;
   function tableCellInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleTableCellInterface.Inst'Class;
   function text (self : access Inst; t_P : access QtAda6.QtGui.QAccessible.Text.Inst'Class) return str;
   function textInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleTextInterface.Inst'Class;
   function valueInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleValueInterface.Inst'Class;
   procedure virtual_hook (self : access Inst; id_P : int; data_P : int);
   function window (self : access Inst) return access QtAda6.QtGui.QWindow.Inst'Class;
end QtAda6.QtGui.QAccessibleInterface;
