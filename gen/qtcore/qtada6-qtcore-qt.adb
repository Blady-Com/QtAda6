-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt.adb
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
with QtAda6.QtCore.QTextStream;
package body QtAda6.QtCore.Qt is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   procedure beginPropertyUpdateGroup is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "beginPropertyUpdateGroup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end beginPropertyUpdateGroup;
   function bin (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "bin");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bin;
   function bom (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "bom");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end bom;
   function center
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "center");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end center;
   function dec (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "dec");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end dec;
   procedure endPropertyUpdateGroup is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "endPropertyUpdateGroup");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end endPropertyUpdateGroup;
   function endl (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "endl");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end endl;
   function fixed (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "fixed");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fixed;
   function flush (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "flush");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end flush;
   function forcepoint
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "forcepoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end forcepoint;
   function forcesign
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "forcesign");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end forcesign;
   function hex (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "hex");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hex;
   function left (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "left");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end left;
   function lowercasebase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "lowercasebase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lowercasebase;
   function lowercasedigits
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "lowercasedigits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end lowercasedigits;
   function noforcepoint
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "noforcepoint");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end noforcepoint;
   function noforcesign
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "noforcesign");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end noforcesign;
   function noshowbase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "noshowbase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end noshowbase;
   function oct (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "oct");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end oct;
   function reset (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "reset");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end reset;
   function right (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "right");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end right;
   function scientific
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "scientific");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end scientific;
   function showbase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "showbase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end showbase;
   function uppercasebase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "uppercasebase");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end uppercasebase;
   function uppercasedigits
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "uppercasedigits");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end uppercasedigits;
   function ws_F (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QTextStream.Class := new QtAda6.QtCore.QTextStream.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Method := Object_GetAttrString (Class, "ws");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, s_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end ws_F;
end QtAda6.QtCore.Qt;
