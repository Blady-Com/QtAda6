with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package ArgumentListModel is

   type Argument_List_Model is new Ada.Containers.Vectors.Vector with private;

   function Row_Count (Model : Argument_List_Model; Index : Natural) return Natural;
   function Data (Model : Argument_List_Model; Index : Natural; Role : Integer) return Unbounded_String;

private

   type Argument_List_Model is new Ada.Containers.Vectors.Vector with null record;

end ArgumentListModel;

with Ada.Text_IO; use Ada.Text_IO;
with GNAT.OS_Lib; use GNAT.OS_Lib;

package body ArgumentListModel is

   function Row_Count (Self : ArgumentListModel; Index : QModelIndex) return Integer is
   begin
      return Self.argumentList.Length;
   end Row_Count;

   procedure Assert_Index_Is_Valid (Self : ArgumentListModel; Index : QModelIndex) is
   begin
      if not Index.Is_Valid then
         Put_Line ("Index is not valid (r: " & Index.Row'Img & ")");
         raise Program_Error;
      end if;

      if Index.Row < 0 or Index.Row >= Self.Row_Count (Index) then
         Put_Line ("Unreachable row (" & Index.Row'Img & ", max: " & Self.Row_Count (Index)'Img & ")");
         raise Program_Error;
      end if;
   end Assert_Index_Is_Valid;

   function Data (Self : ArgumentListModel; Index : QModelIndex; Role : Integer) return QVariant is
   begin
      Self.Assert_Index_Is_Valid (Index);

      if Role /= Qt.DisplayRole then
         --  Put_Line ("Not-supported role (" & Role'Img & ")");
         return QVariant'(others => <>);
      end if;

      return QVariant'(Value => Self.argumentList.Element (Index.Row));
   end Data;

end ArgumentListModel;

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

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package MainWindow is

   type MainWindow_Type is tagged private;

   procedure Create (This : in out MainWindow_Type; Parent : in Widget_Type := null);
   procedure Destroy (This : in out MainWindow_Type);

   procedure On_Action_Environment_Variables_Triggered (This : in out MainWindow_Type; Checked : in Boolean);
   procedure On_Action_Launch_Directory_Triggered (This : in out MainWindow_Type; Checked : in Boolean);
   procedure On_Action_Arguments_Triggered (This : in out MainWindow_Type; Checked : in Boolean);

private

   type MainWindow_Type is new QMainWindow_Type with record
      ui : Ui_MainWindow_Type;
   end record;

   procedure Display_Environment_Variables (This : in out MainWindow_Type);
   procedure Display_Launch_Directory (This : in out MainWindow_Type);
   procedure Display_Arguments (This : in out MainWindow_Type);

end MainWindow;

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

with Ada.Text_IO;
with Qt.Core.Application;
with Qt.Core.Debug;
with MainWindow;

procedure Main is
   argc : Integer := 0;
   argv : Qt.Core.Application.Argv_Type;
begin
   Qt.Core.Application.Initialize (argc, argv);

   declare
      main_window : MainWindow.Main_Window;
   begin
      main_window.Show;
   end;

   Qt.Core.Debug.Qdebug ("Start application");
   Qt.Core.Application.Exec;
end Main;

