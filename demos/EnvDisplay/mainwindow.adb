
with Ada.Directories;
with Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;
with Ada.Strings.Fixed;

package body MainWindow is

   type EnvironmentVariableTableModel is new Ada.Finalization.Controlled with record
      Variables : Ada.Containers.Vectors.Vector;
   end record;

   overriding procedure Initialize (Model : in out EnvironmentVariableTableModel) is
   begin
      Model.Variables.Clear;
      for Var of Ada.Directories.Environment_Variables loop
         Model.Variables.Append (To_Unbounded_String (Var));
      end loop;
   end Initialize;

   overriding procedure Finalize (Model : in out EnvironmentVariableTableModel) is
   begin
      Model.Variables.Clear;
   end Finalize;

   function Get_Row_Count (Model : EnvironmentVariableTableModel) return Natural is
   begin
      return Model.Variables.Length;
   end Get_Row_Count;

   function Get_Column_Count (Model : EnvironmentVariableTableModel) return Natural is
   begin
      return 1;
   end Get_Column_Count;

   function Get_Data (Model : EnvironmentVariableTableModel; Row, Column : Natural) return String is
   begin
      return To_String (Model.Variables (Row));
   end Get_Data;

   type ArgumentListModel is new Ada.Finalization.Controlled with record
      Arguments : Ada.Containers.Vectors.Vector;
   end record;

   overriding procedure Initialize (Model : in out ArgumentListModel) is
   begin
      Model.Arguments.Clear;
      for Arg of Ada.Command_Line.Command_Name_Of (0 .. Ada.Command_Line.Argument_Count) loop
         Model.Arguments.Append (To_Unbounded_String (Arg));
      end loop;
   end Initialize;

   overriding procedure Finalize (Model : in out ArgumentListModel) is
   begin
      Model.Arguments.Clear;
   end Finalize;

   function Get_Row_Count (Model : ArgumentListModel) return Natural is
   begin
      return Model.Arguments.Length;
   end Get_Row_Count;

   function Get_Column_Count (Model : ArgumentListModel) return Natural is
   begin
      return 1;
   end Get_Column_Count;

   function Get_Data (Model : ArgumentListModel; Row, Column : Natural) return String is
   begin
      return To_String (Model.Arguments (Row));
   end Get_Data;

   procedure Display_Environment_Variables (This : in out MainWindow) is
      Model : EnvironmentVariableTableModel;
   begin
      This.ui.Environment_Variable_Table_View.Set_Model (Model'Unchecked_Access);
      This.ui.Environment_Variable_Table_View.Resize_Columns_To_Contents;
   end Display_Environment_Variables;

   procedure Display_Launch_Directory (This : in out MainWindow) is
      Current_Path : constant String := Ada.Directories.Get_Current_Dir;
   begin
      This.ui.Launch_Directory_Text_Browser.Set_Text (Current_Path);
      This.ui.Launch_Directory_Text_Browser.Set_Cursor_Position (1);
   end Display_Launch_Directory;

   procedure Display_Arguments (This : in out MainWindow) is
      Model : ArgumentListModel;
   begin
      This.ui.Argument_List_View.Set_Model (Model'Unchecked_Access);
   end Display_Arguments;

   procedure On_Environment_Variables_Triggered (This : in out MainWindow; Checked : Boolean) is
   begin
      This.ui.Environment_Variable_Label.Set_Visible (Checked);
      This.ui.Environment_Variable_Table_View.Set_Visible (Checked);
   end On_Environment_Variables_Triggered;

   procedure On_Launch_Directory_Triggered (This : in out MainWindow; Checked : Boolean) is
   begin
      This.ui.Launch_Directory_Label.Set_Visible (Checked);
      This.ui.Launch_Directory_Text_Browser.Set_Visible (Checked);
   end On_Launch_Directory_Triggered;

   procedure On_Arguments_Triggered (This : in out MainWindow; Checked : Boolean) is
   begin
      This.ui.Argument_Label.Set_Visible (Checked);
      This.ui.Argument_List_View.Set_Visible (Checked);
   end On_Arguments_Triggered;

end MainWindow;
