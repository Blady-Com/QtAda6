-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessible.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAccessibleInterface;
limited with QtAda6.QtGui.QTextCursor;
limited with QtAda6.QtGui.QAccessible.TextBoundaryType;
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtGui.QAccessibleEvent;
package QtAda6.QtGui.QAccessible is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type CALLABLE is new Any;
   type TUPLE_intint is new Any;
   procedure Finalize (Self : in out Class);
   function Create (QAccessible_P : access QtAda6.QtGui.QAccessible.Inst'Class) return Class;
   procedure U_copy_U;
   function accessibleInterface (uniqueId_P : int) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   procedure cleanup;
   procedure deleteAccessibleInterface (uniqueId_P : int);
   procedure installFactory (arg_1_P : CALLABLE);
   function isActive return bool;
   function qAccessibleTextBoundaryHelper
     (cursor_P       : access QtAda6.QtGui.QTextCursor.Inst'Class;
      boundaryType_P : access QtAda6.QtGui.QAccessible.TextBoundaryType.Inst'Class) return TUPLE_intint;
   function queryAccessibleInterface
     (arg_1_P : access QtAda6.QtCore.QObject.Inst'Class) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function registerAccessibleInterface (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int;
   procedure setActive (active_P : bool);
   procedure setRootObject (object_P : access QtAda6.QtCore.QObject.Inst'Class);
   function uniqueId (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class) return int;
   procedure updateAccessibility (event_P : access QtAda6.QtGui.QAccessibleEvent.Inst'Class);
end QtAda6.QtGui.QAccessible;
