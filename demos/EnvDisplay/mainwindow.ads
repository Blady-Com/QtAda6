
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
