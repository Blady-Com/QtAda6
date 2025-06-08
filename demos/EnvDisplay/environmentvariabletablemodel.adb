-------------------------------------------------------------------------------
-- NAME (body)                  : environmentvariabletablemodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Environment variables
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtCore.Qt.ItemDataRole;
with Proxy_Class;
with Py.Proxy_Module;
with Py; use Py;
with UXStrings;

package body EnvironmentVariableTableModel is

   package EnvironmentVariableTableModel_Proxy_Class is new Proxy_Class ("Environment_Variable_Table_Model",
      Environment_Variable_Table_Model, Environment_Variable_Table_Model_Access);

   function Environment_Variable_Table_Model_Method (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Environment_Variable_Table_Model_Method);

   function Environment_Variable_Table_Model_Method (Self : Object; Args : Object; Keywords : Object) return Object is
      use UXStrings;
      Method_Name  : constant UXString := From_UTF_8 (Py.Proxy_Module.Get_Method_Name (Keywords));
      Result       : Handle;
      Result_Data  : QtAda6.QVariant;
      Result_Flags : QtAda6.QtCore.Qt.ItemFlag.Class;
   begin
      if Method_Name = "rowCount" then
         Result :=
           Long_FromLong
             (EnvironmentVariableTableModel_Proxy_Class.Get_Ada_Self (Keywords).rowCount
                (new QtAda6.QtCore.QModelIndex.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 0))));
         Py.Proxy_Module.Inc_Ref (Result);
         return Py.Proxy_Module.Get_Object (Result);
      elsif Method_Name = "columnCount" then
         Result :=
           Long_FromLong
             (EnvironmentVariableTableModel_Proxy_Class.Get_Ada_Self (Keywords).columnCount
                (new QtAda6.QtCore.QModelIndex.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 0))));
         Py.Proxy_Module.Inc_Ref (Result);
         return Py.Proxy_Module.Get_Object (Result);
      elsif Method_Name = "data" then
         Result_Data :=
           EnvironmentVariableTableModel_Proxy_Class.Get_Ada_Self (Keywords).data
             (new QtAda6.QtCore.QModelIndex.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 0)),
              Long_AsLong (Py.Proxy_Module.Tuple_GetItem (Args, 1)));
         Py.Proxy_Module.Inc_Ref (Result_Data.Python_Proxy);
         return Py.Proxy_Module.Get_Object (Result_Data.Python_Proxy);
      elsif Method_Name = "headerData" then
         Result_Data :=
           EnvironmentVariableTableModel_Proxy_Class.Get_Ada_Self (Keywords).headerData
             (Long_AsLong (Py.Proxy_Module.Tuple_GetItem (Args, 0)),
              new QtAda6.QtCore.Qt.Orientation.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 1)),
              Long_AsLong (Py.Proxy_Module.Tuple_GetItem (Args, 2)));
         Py.Proxy_Module.Inc_Ref (Result_Data.Python_Proxy);
         return Py.Proxy_Module.Get_Object (Result_Data.Python_Proxy);
      elsif Method_Name = "flags" then
         Result_Flags :=
           EnvironmentVariableTableModel_Proxy_Class.Get_Ada_Self (Keywords).flags
             (new QtAda6.QtCore.QModelIndex.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 0)));
         Py.Proxy_Module.Inc_Ref (Result_Flags.Python_Proxy);
         return Py.Proxy_Module.Get_Object (Result_Flags.Python_Proxy);
      else
         return Py.Proxy_Module.No_Value;
      end if;
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Environment_Variable_Table_Model_Method;

   function Create (Parent : access QtAda6.QtCore.QObject.Inst := null) return Class is
      Python_Class : constant Handle :=
        EnvironmentVariableTableModel_Proxy_Class.Derive_Class ("PySide6.QtCore", "QAbstractTableModel",
                                                                 ["rowCount","columnCount",
                                                                 "data", "headerData", "flags"]);
   begin
      EnvironmentVariableTableModel_Proxy_Class.Set (Environment_Variable_Table_Model_Method'Access);
      return Self : constant Class := new Environment_Variable_Table_Model do
         EnvironmentVariableTableModel_Proxy_Class.Init
           (Environment_Variable_Table_Model_Access (Self), Python_Class, True);
         self.Environment_Variables := QtAda6.QtCore.QProcessEnvironment.systemEnvironment;
      end return;
   end Create;

   procedure Assert_Index_Is_Valid
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      use QtAda6.QtCore;
      use type UXStrings.UXString;
      use QtAda6;
      use type QtAda6.int;
   begin
      if not Index.isValid then
         qfatal ("Index is not valid (r: " & Image (Index.Row) & ")");
      end if;

      if Index.row < 0 or Self.rowCount (QtAda6.QtCore.QModelIndex.Create) < Index.row then
         qfatal
           ("Unreachable row (" & Image (Index.Row) & ", max: " &
            Image (Self.RowCount (QtAda6.QtCore.QModelIndex.Create)) & ")");
      end if;

      if Index.column < 0 or Self.columnCount (QtAda6.QtCore.QModelIndex.Create) < Index.column then
         qfatal
           ("Unreachable column (" & Image (Index.Column) & ", max: " &
            Image (Self.ColumnCount (QtAda6.QtCore.QModelIndex.Create)) & ")");
      end if;
   end Assert_Index_Is_Valid;

   function RowCount
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class) return QtAda6
     .int
   is
   begin
      return Self.Environment_Variables.keys'Length;
   end RowCount;

   function ColumnCount
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class) return QtAda6
     .int
   is
   begin
      return QtAda6.int (Horizontal_Header_Strings.Length);
   end ColumnCount;

   function Data
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class;
      Role : QtAda6.int) return QtAda6.QVariant
   is
      use QtAda6.QtCore.Qt.ItemDataRole;
      use QtAda6.QtCore;
      use type UXStrings.UXString;
      result : constant QtAda6.QVariant := new QtAda6.Object'(Python_Proxy => No_Value);
      Key    : QtAda6.str;
   begin
      Self.Assert_Index_Is_Valid (Index);
      case Role is
         when DisplayRole_Value | EditRole_Value =>
            null;
         when others =>
            qWarning ("Not-supported role (" & QtAda6.Image (Role) & ")");
            return result;
      end case;
      key := self.Environment_Variables.keys (Index.row);
      case Index.column is
         when Horizontal_Header_Enum'Pos (NAME) =>
            result.setValue (Key);
         when Horizontal_Header_Enum'Pos (VALUE) =>
            result.setValue (Self.Environment_Variables.value (key));
         when others =>
            qFatal
              ("Index is not valid (c: " & QtAda6.Image (Index.column) & "). This should have been filtered earlier…");
      end case;
      return result;
   end Data;

   function HeaderData
     (Self        : access Environment_Variable_Table_Model; Section : QtAda6.int;
      Orientation : access QtAda6.QtCore.Qt.Orientation.Inst'Class; Role : QtAda6.int) return QtAda6.QVariant
   is
      use QtAda6.QtCore.Qt.Orientation;
      use QtAda6.QtCore;
      use type UXStrings.UXString;
      result : constant QtAda6.QVariant := new QtAda6.Object'(Python_Proxy => No_Value);
   begin
      case Orientation.Value is
         when Horizontal_Value =>
            result.setValue (Self.Horizontal_Header_Data (Section, Role));
         when Vertical_Value =>
            result.setValue (Self.Vertical_Header_Data (Section, Role));
         when others =>
            qFatal ("Enum Qt::Orientation out of bounds (" & QtAda6.Image (Orientation.Value) & ")");
      end case;
      return result;
   end HeaderData;

   function Flags
     (Self : access Environment_Variable_Table_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class)
      return access QtAda6.QtCore.Qt.ItemFlag.Inst'Class
   is
      use QtAda6.QtCore.Qt.ItemFlag;
   begin
      return ItemIsEnabled or ItemIsSelectable or ItemIsEditable;
   end Flags;

   function Horizontal_Header_Data
     (Self : access Environment_Variable_Table_Model; Section : QtAda6.int; Role : QtAda6.int) return QtAda6.QVariant
   is
      use QtAda6.QtCore.Qt.ItemDataRole;
      use type QtAda6.int;
      Result : constant QtAda6.QVariant := new QtAda6.Object'(Python_Proxy => No_Value);
   begin
      if Role /= DisplayRole_Value then
        -- QtAda6.QtCore.qWarning ("Not-supported role (" & Role'Img & ")");
         return Result;
      end if;
      Result.SetValue (Horizontal_Header_Strings (Positive (Section + 1)));
      return Result;
   end Horizontal_Header_Data;

   function Vertical_Header_Data
     (Self : access Environment_Variable_Table_Model; Section : QtAda6.int; Role : QtAda6.int) return QtAda6.QVariant
   is
      use QtAda6;
      use QtAda6.QtCore.Qt.ItemDataRole;
      use type QtAda6.int;
      Result : constant QtAda6.QVariant := new QtAda6.Object'(Python_Proxy => No_Value);
   begin
      if Role /= DisplayRole_Value then
        -- QtAda6.QtCore.qWarning ("Not-supported role (" & Role'Img & ")");
         return Result;
      end if;
      Result.setValue (Image (Section));
      return Result;
   end Vertical_Header_Data;

end EnvironmentVariableTableModel;
