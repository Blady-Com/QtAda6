-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibletablemodelchangeevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAccessibleInterface;
limited with QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType;
limited with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QAccessibleEvent;
package QtAda6.QtGui.QAccessibleTableModelChangeEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtGui.QAccessibleEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (iface_P      : access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
      changeType_P : access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class) return Class;
   function Create
     (obj_P        : access QtAda6.QtCore.QObject.Inst'Class;
      changeType_P : access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class) return Class;
   function firstColumn (self : access Inst) return int;
   function firstRow (self : access Inst) return int;
   function lastColumn (self : access Inst) return int;
   function lastRow (self : access Inst) return int;
   function modelChangeType_F
     (self : access Inst) return access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class;
   procedure setFirstColumn (self : access Inst; col_P : int);
   procedure setFirstRow (self : access Inst; row_P : int);
   procedure setLastColumn (self : access Inst; col_P : int);
   procedure setLastRow (self : access Inst; row_P : int);
   procedure setModelChangeType
     (self         : access Inst;
      changeType_P : access QtAda6.QtGui.QAccessibleTableModelChangeEvent.ModelChangeType.Inst'Class);
end QtAda6.QtGui.QAccessibleTableModelChangeEvent;
