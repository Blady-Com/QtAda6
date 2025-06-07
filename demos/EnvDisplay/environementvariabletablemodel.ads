
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Vectors;
with Ada.Finalization;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Hashed_Maps;
with Ada.Containers.Vectors;
with Ada.Strings.Hash;
with Ada.Text_IO; use Ada.Text_IO;

package EnvironementVariableTableModel is

   type Horizontal_Header_Enum is (NAME, VALUE);
   type Horizontal_Header_Strings is array (Horizontal_Header_Enum) of Unbounded_String;
   Horizontal_Header_Strings_Const : constant Horizontal_Header_Strings := (
      NAME => To_Unbounded_String("Name"),
      VALUE => To_Unbounded_String("Value")
   );

   type Environment_Variable_Map is new Ada.Containers.Hashed_Maps
     (Key_Type => Unbounded_String,
      Element_Type => Unbounded_String,
      Hash => Ada.Strings.Hash,
      Equivalent_Keys => "=");

   type Environment_Variable_Table_Model is tagged private;

   function Row_Count (Model : Environment_Variable_Table_Model) return Natural;
   function Column_Count (Model : Environment_Variable_Table_Model) return Natural;
   function Data (Model : Environment_Variable_Table_Model; Row, Column : Natural; Role : Integer) return Unbounded_String;
   function Header_Data (Model : Environment_Variable_Table_Model; Section : Natural; Orientation : Ada.Containers.Vectors.Orientation; Role : Integer) return Unbounded_String;
   function Flags (Model : Environment_Variable_Table_Model; Row, Column : Natural) return Integer;

private

   type Environment_Variable_Table_Model is tagged record
      Environment_Variables : Environment_Variable_Map;
   end record;

end EnvironementVariableTableModel;
