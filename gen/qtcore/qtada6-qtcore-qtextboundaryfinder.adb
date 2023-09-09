-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qtextboundaryfinder.adb
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
with QtAda6.QtCore.QTextBoundaryFinder.BoundaryType;
with QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason;
package body QtAda6.QtCore.QTextBoundaryFinder is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextBoundaryFinder");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (other_P : access QtAda6.QtCore.QTextBoundaryFinder.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextBoundaryFinder");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P : access QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst'Class; str_P : str;
      buffer_P : Optional_bytes; bufferSize_P : int) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextBoundaryFinder");
      Args  := Tuple_New (4);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (str_P));
      Tuple_SetItem (Args, 2, No_Value);
      Tuple_SetItem (Args, 3, Long_FromLong (bufferSize_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create
     (type_K_P : access QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst'Class; string_P : str) return Class
   is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextBoundaryFinder");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, type_K_P.Python_Proxy);
      Tuple_SetItem (Args, 1, Unicode_FromString (string_P));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QTextBoundaryFinder");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
   function boundaryReasons
     (self : access Inst) return access QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason.Inst'Class
   is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason.Class :=
        new QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "boundaryReasons");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end boundaryReasons;
   function isAtBoundary (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isAtBoundary");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isAtBoundary;
   function isValid (self : access Inst) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end isValid;
   function position (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "position");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end position;
   procedure setPosition (self : access Inst; position_P : int) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPosition");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (position_P));
      Result := Object_CallObject (Method, Args, True);
   end setPosition;
   function string (self : access Inst) return str is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "string");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return As_String (Result);
   end string;
   procedure toEnd (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toEnd");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toEnd;
   function toNextBoundary (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toNextBoundary");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toNextBoundary;
   function toPreviousBoundary (self : access Inst) return int is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toPreviousBoundary");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end toPreviousBoundary;
   procedure toStart (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "toStart");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end toStart;
   function type_K (self : access Inst) return access QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Class :=
        new QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "type");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end type_K;
end QtAda6.QtCore.QTextBoundaryFinder;
