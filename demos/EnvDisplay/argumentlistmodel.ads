with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package ArgumentListModel is

   type Argument_List_Model is new Ada.Containers.Vectors.Vector with private;

   function Row_Count (Model : Argument_List_Model; Index : Natural) return Natural;
   function Data (Model : Argument_List_Model; Index : Natural; Role : Integer) return Unbounded_String;

private

   type Argument_List_Model is new Ada.Containers.Vectors.Vector with null record;

end ArgumentListModel;
