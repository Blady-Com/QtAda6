-------------------------------------------------------------------------------
-- NAME (spec)                  : environmentvariabletablemodel.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Environment variables
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtCore.QAbstractTableModel;
with QtAda6.QtCore.QProcessEnvironment;
with QtAda6.QtCore.QModelIndex;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Qt.Orientation;
with QtAda6.QtCore.Qt.ItemFlag;
with UXStrings.Lists;

package EnvironmentVariableTableModel is

   type Environment_Variable_Table_Model is new QtAda6.QtCore.QAbstractTableModel.Inst with private;
   type Environment_Variable_Table_Model_Access is access all Environment_Variable_Table_Model;
   type Class is access all Environment_Variable_Table_Model'Class;

   function Create (Parent : access QtAda6.QtCore.QObject.Inst := null) return Class;

   overriding function RowCount
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class) return QtAda6
     .int;
   overriding function ColumnCount
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class) return QtAda6
     .int;
   overriding function Data
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class;
      Role : QtAda6.int) return QtAda6.QVariant;
   overriding function HeaderData
     (Self        : access Environment_Variable_Table_Model; Section : QtAda6.int;
      Orientation : access QtAda6.QtCore.Qt.Orientation.Inst'Class; Role : QtAda6.int) return QtAda6.QVariant;
   overriding function Flags
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class;

private

   type Horizontal_Header_Enum is (NAME, VALUE);
   for Horizontal_Header_Enum use (0, 1);

   Horizontal_Header_Strings : constant UXStrings.Lists.UXString_List:= ["Name", "Value"];

   type Environment_Variable_Table_Model is new QtAda6.QtCore.QAbstractTableModel.Inst with record
      Environment_Variables : QtAda6.QtCore.QProcessEnvironment.Class;
   end record;

   function Horizontal_Header_Data
     (Self : access Environment_Variable_Table_Model; Section : QtAda6.int; Role : QtAda6.int) return QtAda6.QVariant;
   function Vertical_Header_Data
     (Self : access Environment_Variable_Table_Model; Section : QtAda6.int; Role : QtAda6.int) return QtAda6.QVariant;
   procedure Assert_Index_Is_Valid
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class);

end EnvironmentVariableTableModel;
