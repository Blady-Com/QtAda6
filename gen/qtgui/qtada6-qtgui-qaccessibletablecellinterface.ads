-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibletablecellinterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QAccessibleInterface;
package QtAda6.QtGui.QAccessibleTableCellInterface is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   subtype LIST_QtAda6_QtGui_QAccessibleInterface is QtAda6.QtGui.QAccessibleInterface.Class_Array;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function columnExtent (self : access Inst) return int;
   function columnHeaderCells (self : access Inst) return LIST_QtAda6_QtGui_QAccessibleInterface;
   function columnIndex (self : access Inst) return int;
   function isSelected (self : access Inst) return bool;
   function rowExtent (self : access Inst) return int;
   function rowHeaderCells (self : access Inst) return LIST_QtAda6_QtGui_QAccessibleInterface;
   function rowIndex (self : access Inst) return int;
   function table (self : access Inst) return access QtAda6.QtGui.QAccessibleInterface.Inst'Class;
end QtAda6.QtGui.QAccessibleTableCellInterface;
