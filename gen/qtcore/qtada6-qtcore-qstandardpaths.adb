-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qstandardpaths.adb
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
with QtAda6.QtCore.QStandardPaths.StandardLocation;
with QtAda6.QtCore.QStandardPaths.LocateOption;
package body QtAda6.QtCore.QStandardPaths is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function displayName (type_K_P : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "displayName");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end displayName;
   function findExecutable (executableName_P : str; paths_P : SEQUENCE_str := (2 .. 1 => <>)) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "findExecutable");
      List   := List_New (paths_P'Length);
      for ind in paths_P'Range loop
         List_SetItem (List, ssize_t (ind - paths_P'First), Unicode_FromString (paths_P (ind)));
      end loop;
      Args := Tuple_New (2);
      Tuple_SetItem (Args, 0, Unicode_FromString (executableName_P));
      Tuple_SetItem (Args, 1, List);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end findExecutable;
   function isTestModeEnabled return bool is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "isTestModeEnabled");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isTestModeEnabled;
   function locate_F
     (type_K_P  : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class; fileName_P : str;
      options_P : access QtAda6.QtCore.QStandardPaths.LocateOption.Inst'Class := null) return str
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "locate");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 2, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end locate_F;
   function locateAll
     (type_K_P  : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class; fileName_P : str;
      options_P : access QtAda6.QtCore.QStandardPaths.LocateOption.Inst'Class := null) return LIST_str
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "locateAll");
      Args   := Tuple_New (3);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (fileName_P));
      Tuple_SetItem (Args, 2, (if options_P /= null then options_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end locateAll;
   procedure setTestModeEnabled (testMode_P : bool) is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "setTestModeEnabled");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (testMode_P));
      Result := Object_CallObject (Method, Args, True);
   end setTestModeEnabled;
   function standardLocations
     (type_K_P : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class) return LIST_str
   is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "standardLocations");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return (2 .. 1 => <>);
   end standardLocations;
   function writableLocation (type_K_P : access QtAda6.QtCore.QStandardPaths.StandardLocation.Inst'Class) return str is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QStandardPaths");
      Method := Object_GetAttrString (Class, "writableLocation");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end writableLocation;
end QtAda6.QtCore.QStandardPaths;
