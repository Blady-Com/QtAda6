
package body EnvironementVariableTableModel is

   function Row_Count (Model : Environment_Variable_Table_Model) return Natural is
   begin
      return Model.Environment_Variables.Length;
   end Row_Count;

   function Column_Count (Model : Environment_Variable_Table_Model) return Natural is
   begin
      return Horizontal_Header_Strings_Const'Length;
   end Column_Count;

   function Data (Model : Environment_Variable_Table_Model; Row, Column : Natural; Role : Integer) return Unbounded_String is
      Key : Unbounded_String;
   begin
      case Horizontal_Header_Enum'Val(Column) is
         when NAME =>
            Key := Model.Environment_Variables.Key(Row);
            return Key;
         when VALUE =>
            return Model.Environment_Variables.Element(Model.Environment_Variables.Key(Row));
      end case;
   end Data;

   function Header_Data (Model : Environment_Variable_Table_Model; Section : Natural; Orientation : Ada.Containers.Vectors.Orientation; Role : Integer) return Unbounded_String is
   begin
      case Orientation is
         when Ada.Containers.Vectors.Horizontal =>
            return Horizontal_Header_Strings_Const(Horizontal_Header_Enum'Val(Section));
         when Ada.Containers.Vectors.Vertical =>
            return To_Unbounded_String(Natural'Image(Section));
      end case;
   end Header_Data;

   function Flags (Model : Environment_Variable_Table_Model; Row, Column : Natural) return Integer is
   begin
      return 16#0001# or 16#0002# or 16#0004#; -- Qt::ItemIsEnabled | Qt::ItemIsSelectable | Qt::ItemIsEditable
   end Flags;

end EnvironementVariableTableModel;
