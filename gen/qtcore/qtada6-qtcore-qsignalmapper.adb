-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qsignalmapper.adb
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
package body QtAda6.QtCore.QSignalMapper is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function mappedInt (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "mappedInt"));
   end mappedInt;
   function mappedObject (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "mappedObject"));
   end mappedObject;
   function mappedString (self : access Inst) return CLASSVAR_Signal is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "mappedString"));
   end mappedString;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QSignalMapper");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if parent_P /= null then parent_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure map (self : access Inst) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end map;
   procedure map (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "map");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sender_P /= null then sender_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end map;
   function mapping (self : access Inst; id_P : int) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapping;
   function mapping
     (self : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtCore.QObject.Inst'Class
   is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapping;
   function mapping (self : access Inst; text_P : str) return access QtAda6.QtCore.QObject.Inst'Class is
      Method, Args, List, Result : Handle;
      Ret                        : constant QtAda6.QtCore.QObject.Class := new QtAda6.QtCore.QObject.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "mapping");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (text_P));
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end mapping;
   procedure removeMappings (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "removeMappings");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if sender_P /= null then sender_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end removeMappings;
   procedure setMapping (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class; id_P : int) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMapping");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if sender_P /= null then sender_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (id_P));
      Result := Object_CallObject (Method, Args, True);
   end setMapping;
   procedure setMapping
     (self     : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class;
      object_P : access QtAda6.QtCore.QObject.Inst'Class)
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMapping");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if sender_P /= null then sender_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if object_P /= null then object_P.Python_Proxy else No_Value));
      Result := Object_CallObject (Method, Args, True);
   end setMapping;
   procedure setMapping (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class; text_P : str) is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setMapping");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if sender_P /= null then sender_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Unicode_FromString (text_P));
      Result := Object_CallObject (Method, Args, True);
   end setMapping;
end QtAda6.QtCore.QSignalMapper;
