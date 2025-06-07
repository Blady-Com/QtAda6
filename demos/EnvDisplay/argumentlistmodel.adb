
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
