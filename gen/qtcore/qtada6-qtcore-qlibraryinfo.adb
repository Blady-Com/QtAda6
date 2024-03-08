-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qlibraryinfo.adb
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
with QtAda6.QtCore.QLibraryInfo.LibraryPath;
with QtAda6.QtCore.QVersionNumber;
package body QtAda6.QtCore.QLibraryInfo is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function build return bytes is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "build");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return bytes (String'(Bytes_AsString (Result)));
   end build;
   function isDebugBuild return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "isDebugBuild");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isDebugBuild;
   function isSharedBuild return bool is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "isSharedBuild");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSharedBuild;
   function location (location_P : access QtAda6.QtCore.QLibraryInfo.LibraryPath.Inst'Class) return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "location");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if location_P /= null then location_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end location;
   function path (p_P : access QtAda6.QtCore.QLibraryInfo.LibraryPath.Inst'Class) return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "path");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if p_P /= null then p_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end path;
   function platformPluginArguments (platformName_P : str) return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method := Object_GetAttrString (Class, "platformPluginArguments");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (platformName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end platformPluginArguments;
   function version return access QtAda6.QtCore.QVersionNumber.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QVersionNumber.Class := new QtAda6.QtCore.QVersionNumber.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QLibraryInfo");
      Method           := Object_GetAttrString (Class, "version");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end version;
end QtAda6.QtCore.QLibraryInfo;
