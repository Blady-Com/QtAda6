-------------------------------------------------------------------------------
-- NAME (body)                  : argumentlistmodel.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Command line arguments
-- NOTES                        : Ada 2022, QtAda6
--
-- COPYRIGHT                    : (c) Pascal Pignard 2025
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.chez.com
-------------------------------------------------------------------------------

with QtAda6.QtCore.Qt.ItemDataRole;
with QtAda6.QtCore.QCoreApplication;
with Proxy_Class;
with Py.Proxy_Module;
with Py; use Py;

package body ArgumentListModel is

   package ArgumentListModel_Proxy_Class is new Proxy_Class ("Argument_List_Model", Argument_List_Model,
      Argument_List_Model_Access);

   function Argument_List_Model_Method (Self : Object; Args : Object; Keywords : Object) return Object;
   pragma Convention (C, Argument_List_Model_Method);

   function Argument_List_Model_Method (Self : Object; Args : Object; Keywords : Object) return Object is
      use UXStrings;
      Method_Name : constant UXString := From_UTF_8 (Py.Proxy_Module.Get_Method_Name (Keywords));
      Result      : Handle;
      Result_Data : QtAda6.QVariant;
   begin
      if Method_Name = "rowCount" then
         Result :=
           Long_FromLong
             (ArgumentListModel_Proxy_Class.Get_Ada_Self (Keywords).rowCount
                (new QtAda6.QtCore.QModelIndex.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 0))));
         Py.Proxy_Module.Inc_Ref (Result);
         return Py.Proxy_Module.Get_Object (Result);
      elsif Method_Name = "data" then
         Result_Data :=
           ArgumentListModel_Proxy_Class.Get_Ada_Self (Keywords).data
             (new QtAda6.QtCore.QModelIndex.Inst'(Python_Proxy => Py.Proxy_Module.Tuple_GetItem (Args, 0)),
              Long_AsLong (Py.Proxy_Module.Tuple_GetItem (Args, 1)));
         Py.Proxy_Module.Inc_Ref (Result_Data.Python_Proxy);
         return Py.Proxy_Module.Get_Object (Result_Data.Python_Proxy);
      else
         return Py.Proxy_Module.No_Value;
      end if;
   exception
      when Python_Error =>
         return Null_Object;
      when Error : others =>
         Throw_SystemError (Error);
         return Null_Object;
   end Argument_List_Model_Method;

   function Create (Parent : access QtAda6.QtCore.QObject.Inst := null) return Class is
      Python_Class : constant Handle :=
        ArgumentListModel_Proxy_Class.Derive_Class
          ("PySide6.QtCore", "QAbstractListModel", ["rowCount", "data"]);
   begin
      ArgumentListModel_Proxy_Class.Set (Argument_List_Model_Method'Access);
      return Self : constant Class := new Argument_List_Model do
         ArgumentListModel_Proxy_Class.Init (Argument_List_Model_Access (Self), Python_Class, True);
         for S of QtAda6.QtCore.QCoreApplication.arguments loop
            self.argumentList.append (S);
         end loop;
      end return;
   end Create;

   function RowCount
     (Self : access Argument_List_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class) return QtAda6.int
   is
   begin
      return QtAda6.int (Self.argumentList.Length);
   end RowCount;

   procedure Assert_Index_Is_Valid
     (Self : access Argument_List_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class)
   is
      use QtAda6.QtCore;
      use type UXStrings.UXString;
      use type QtAda6.int;
      use QtAda6;
   begin
      if not Index.isValid then
         qFatal ("Index is not valid (r: " & Image (Index.row) & ")");
      end if;

      if Index.row < 0 or Self.rowCount (QtAda6.QtCore.QModelIndex.Create) < Index.row then
         qFatal
           ("Unreachable row (" & Image (Index.row) & ", max: " &
            Image (Self.RowCount (QtAda6.QtCore.QModelIndex.Create)) & ")");
      end if;
   end Assert_Index_Is_Valid;

   function Data
     (Self : access Argument_List_Model; Index : access QtAda6.QtCore.QModelIndex.Inst'Class; Role : QtAda6.int)
      return QtAda6.QVariant
   is
      use QtAda6.QtCore.Qt.ItemDataRole;
      use type QtAda6.int;
      result : constant QtAda6.QVariant := new QtAda6.Object'(Python_Proxy => No_Value);
   begin
      Self.Assert_Index_Is_Valid (Index);
      if Role /= DisplayRole_Value then
         --  QtAda6.QtCore.qWarning ("Not-supported role (" & Role'Img & ")");
         return result;
      end if;
      result.setValue (Self.argumentList (Positive (Index.row + 1)));
      return result;
   end Data;

end ArgumentListModel;
