-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qabstractnativeeventfilter.adb
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
with QtAda6.QtCore.QByteArray;
package body QtAda6.QtCore.QAbstractNativeEventFilter is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QAbstractNativeEventFilter");
      Args  := Tuple_New (0);
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function nativeEventFilter
     (self : access Inst; eventType_P : UNION_QtAda6_QtCore_QByteArraybytes; message_P : int) return access Object'Class
   is
      Method, Args, List, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "nativeEventFilter");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if eventType_P /= null then eventType_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Long_FromLong (message_P));
      Result := Object_CallObject (Method, Args, True);
      return null;
   end nativeEventFilter;
end QtAda6.QtCore.QAbstractNativeEventFilter;
