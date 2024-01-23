-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibleevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAccessibleInterface;
limited with QtAda6.QtGui.QAccessible.Event;
limited with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QAccessibleEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (iface_P : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
      typ_P   : access QtAda6.QtGui.QAccessible.Event.Inst'Class) return Class;
   function Create
     (obj_P : access QtAda6.QtCore.QObject.Inst'Class; typ_P : access QtAda6.QtGui.QAccessible.Event.Inst'Class)
      return Class;
   function accessibleInterface (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
   function child (self : access Inst) return int;
   function object (self : access Inst) return access QtAda6.QtCore.QObject.Inst'Class;
   procedure setChild (self : access Inst; chld_P : int);
   function type_K (self : access Inst) return access QtAda6.QtGui.QAccessible.Event.Inst'Class;
   function uniqueId (self : access Inst) return int;
end QtAda6.QtGui.QAccessibleEvent;
