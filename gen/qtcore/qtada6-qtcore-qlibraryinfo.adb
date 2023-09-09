-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlibraryinfo.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.QLibraryInfo.LibraryPath;
with QtAda6.QtCore.QVersionNumber;
package body QtAda6.QtCore.QLibraryInfo is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function build return bytes is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "build");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return bytes (String'(Bytes_AsString (Result)));
   end build;
   function isDebugBuild return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "isDebugBuild");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isDebugBuild;
   function isSharedBuild return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "isSharedBuild");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isSharedBuild;
   function location (location_P : access QtAda6.QtCore.QLibraryInfo.LibraryPath.Inst'Class) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "location");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, location_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end location;
   function path_F (p_P : access QtAda6.QtCore.QLibraryInfo.LibraryPath.Inst'Class) return str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "path");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, p_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end path_F;
   function platformPluginArguments (platformName_P : str) return List_str is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "platformPluginArguments");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (platformName_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end platformPluginArguments;
   function version return access QtAda6.QtCore.QVersionNumber.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QVersionNumber.Class := new QtAda6.QtCore.QVersionNumber.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method           := Object_GetAttrString (Class, "version");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end version;
end QtAda6.QtCore.QLibraryInfo;
