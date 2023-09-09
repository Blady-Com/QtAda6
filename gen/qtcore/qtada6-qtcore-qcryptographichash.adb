-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qcryptographichash.adb
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
with QtAda6.QtCore.QCryptographicHash.Algorithm;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QIODevice;
package body QtAda6.QtCore.QCryptographicHash is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class) return Class is
      Class, Args : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, method_P.Python_Proxy);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure addData (self : access Inst; data_P : bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Result := Object_CallObject (Method, Args, True);
   end addData;
   procedure addData (self : access Inst; data_P : Union_QtAda6_QtCore_QByteArray_bytes) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, No_Value);
      Result := Object_CallObject (Method, Args, True);
   end addData;
   function addData (self : access Inst; device_P : access QtAda6.QtCore.QIODevice.Inst'Class) return bool is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "addData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, device_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end addData;
   function algorithm_F (self : access Inst) return access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QCryptographicHash.Algorithm.Class :=
        new QtAda6.QtCore.QCryptographicHash.Algorithm.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "algorithm");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end algorithm_F;
   function hash
     (data_P   : Union_QtAda6_QtCore_QByteArray_bytes;
      method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class)
      return access QtAda6.QtCore.QByteArray.Inst'Class
   is
      Class, Method, Args, Result : Handle;
      Ret                         : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      Method := Object_GetAttrString (Class, "hash");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, No_Value);
      Tuple_SetItem (Args, 1, method_P.Python_Proxy);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end hash;
   function hashLength (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class) return int is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      Method := Object_GetAttrString (Class, "hashLength");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, method_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return Long_AsLong (Result);
   end hashLength;
   procedure reset (self : access Inst) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "reset");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end reset;
   function result (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "result");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end result;
   function resultView (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Result : Handle;
      Ret                  : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "resultView");
      Args             := Tuple_New (0);
      Result           := Object_CallObject (Method, Args, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end resultView;
   function supportsAlgorithm (method_P : access QtAda6.QtCore.QCryptographicHash.Algorithm.Inst'Class) return bool is
      Class, Method, Args, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QCryptographicHash");
      Method := Object_GetAttrString (Class, "supportsAlgorithm");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, method_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
      return To_Ada (Result);
   end supportsAlgorithm;
   procedure swap (self : access Inst; other_P : access QtAda6.QtCore.QCryptographicHash.Inst'Class) is
      Method, Args, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, other_P.Python_Proxy);
      Result := Object_CallObject (Method, Args, True);
   end swap;
end QtAda6.QtCore.QCryptographicHash;
