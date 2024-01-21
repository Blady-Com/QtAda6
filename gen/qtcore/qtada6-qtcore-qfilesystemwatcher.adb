-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qfilesystemwatcher.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QObject;
package body QtAda6.QtCore.QFileSystemWatcher is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function directoryChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "directoryChanged"));
   end directoryChanged;
   function fileChanged (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "fileChanged"));
   end fileChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileSystemWatcher");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (paths_P : SEQUENCE_str; parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QFileSystemWatcher");
      List  := List_New (paths_P'Length);
      for ind in paths_P'Range loop
         List_SetItem (List, ssize_t (ind - paths_P'First), Unicode_FromString (paths_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, List);
      Tuple_SetItem (Args, 1, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function addPath (self : access Inst; file_P : str) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (file_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end addPath;
   function addPaths (self : access Inst; files_P : SEQUENCE_str) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addPaths");
      List   := List_New (files_P'Length);
      for ind in files_P'Range loop
         List_SetItem (List, ssize_t (ind - files_P'First), Unicode_FromString (files_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end addPaths;
   function directories (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "directories");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end directories;
   function files (self : access Inst) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "files");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end files;
   function removePath (self : access Inst; file_P : str) return bool is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removePath");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (file_P));
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end removePath;
   function removePaths (self : access Inst; files_P : SEQUENCE_str) return LIST_str is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removePaths");
      List   := List_New (files_P'Length);
      for ind in files_P'Range loop
         List_SetItem (List, ssize_t (ind - files_P'First), Unicode_FromString (files_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end removePaths;
end QtAda6.QtCore.QFileSystemWatcher;
