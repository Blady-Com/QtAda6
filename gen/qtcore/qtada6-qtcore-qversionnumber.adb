-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qversionnumber.adb
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
package body QtAda6.QtCore.QVersionNumber is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (maj_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maj_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (maj_P : int; min_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, Long_FromLong (maj_P));
      Tuple_SetItem (Args, 1, Long_FromLong (min_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (maj_P : int; min_P : int; mic_P : int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (maj_P));
      Tuple_SetItem (Args, 1, Long_FromLong (min_P));
      Tuple_SetItem (Args, 2, Long_FromLong (mic_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (seg_P : Sequence_int) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function commonPrefix
     (v1_P : access QtAda6.QtCore.QVersionNumber.Inst'Class; v2_P : access QtAda6.QtCore.QVersionNumber.Inst'Class)
      return access QtAda6.QtCore.QVersionNumber.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QVersionNumber.Class := new QtAda6.QtCore.QVersionNumber.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Method := Object_GetAttrString (Class, "commonPrefix");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, v1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, v2_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end commonPrefix;
   function compare
     (v1_P : access QtAda6.QtCore.QVersionNumber.Inst'Class; v2_P : access QtAda6.QtCore.QVersionNumber.Inst'Class)
      return int
   is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Method := Object_GetAttrString (Class, "compare");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, v1_P.Python_Proxy);
      Tuple_SetItem (Args, 1, v2_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end compare;
   function fromString (string_P : str) return access QtAda6.QtCore.QVersionNumber.Inst'Class is
      Class, Method, Args, Result : Handle;
      Ret : constant QtAda6.QtCore.QVersionNumber.Class := new QtAda6.QtCore.QVersionNumber.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QVersionNumber");
      Method := Object_GetAttrString (Class, "fromString");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (string_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromString;
   function isNormalized (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNormalized");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNormalized;
   function isNull (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isNull");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isNull;
   function isPrefixOf (self : access Inst; other_P : access QtAda6.QtCore.QVersionNumber.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isPrefixOf");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isPrefixOf;
   function majorVersion (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "majorVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end majorVersion;
   function microVersion (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "microVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end microVersion;
   function minorVersion (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "minorVersion");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end minorVersion;
   function normalized (self : access Inst) return access QtAda6.QtCore.QVersionNumber.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QVersionNumber.Class := new QtAda6.QtCore.QVersionNumber.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "normalized");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end normalized;
   function segmentAt (self : access Inst; index_P : int) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "segmentAt");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (index_P));
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end segmentAt;
   function segmentCount (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "segmentCount");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end segmentCount;
   function segments (self : access Inst) return List_int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "segments");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return null;
   end segments;
   function toString (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toString");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end toString;
end QtAda6.QtCore.QVersionNumber;
