-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qoperatingsystemversion.adb
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
with QtAda6.QtCore.QOperatingSystemVersion;
with QtAda6.QtCore.QOperatingSystemVersion.OSType;
with QtAda6.QtCore.QVersionNumber;
package body QtAda6.QtCore.QOperatingSystemVersion is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (QOperatingSystemVersion_P : access QtAda6.QtCore.QOperatingSystemVersion.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      Args  := Tuple_New (1);
      Tuple_SetItem
        (Args, 0, (if QOperatingSystemVersion_P /= null then QOperatingSystemVersion_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (osType_P : access QtAda6.QtCore.QOperatingSystemVersion.OSType.Inst'Class; vmajor_P : int; vminor_P : int := 0;
      vmicro_P : int := 0) return Class
   is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if osType_P /= null then osType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (vmajor_P));
      Dict := Dict_New;
      if vminor_P /= 0 then
         Dict_SetItemString (Dict, "vminor", Long_FromLong (vminor_P));
      end if;
      if vmicro_P /= 0 then
         Dict_SetItemString (Dict, "vmicro", Long_FromLong (vmicro_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function current return access QtAda6.QtCore.QOperatingSystemVersion.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QOperatingSystemVersion.Class := new QtAda6.QtCore.QOperatingSystemVersion.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      Method           := Object_GetAttrString (Class, "current");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end current;
   function currentType return access QtAda6.QtCore.QOperatingSystemVersion.OSType.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                            : constant QtAda6.QtCore.QOperatingSystemVersion.OSType.Class :=
        new QtAda6.QtCore.QOperatingSystemVersion.OSType.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QOperatingSystemVersion");
      Method           := Object_GetAttrString (Class, "currentType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentType;
   function majorVersion (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "majorVersion");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end majorVersion;
   function microVersion (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "microVersion");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end microVersion;
   function minorVersion (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minorVersion");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end minorVersion;
   function name (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "name");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end name;
   function segmentCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "segmentCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end segmentCount;
   function type_K (self : access Inst) return access QtAda6.QtCore.QOperatingSystemVersion.OSType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QOperatingSystemVersion.OSType.Class :=
        new QtAda6.QtCore.QOperatingSystemVersion.OSType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K;
   function version (self : access Inst) return access QtAda6.QtCore.QVersionNumber.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QVersionNumber.Class := new QtAda6.QtCore.QVersionNumber.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "version");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end version;
end QtAda6.QtCore.QOperatingSystemVersion;
