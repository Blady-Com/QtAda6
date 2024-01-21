-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qabstracteventdispatcher-timerinfo.adb
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
with QtAda6.QtCore.Qt.TimerType;
package body QtAda6.QtCore.QAbstractEventDispatcher.TimerInfo is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (TimerInfo_P : access QtAda6.QtCore.QAbstractEventDispatcher.TimerInfo.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "TimerInfo");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if TimerInfo_P /= null then TimerInfo_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   function Create (id_P : int; i_P : int; t_P : access QtAda6.QtCore.Qt.TimerType.Inst'Class) return Class is
      Class, Args, List : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "TimerInfo");
      Args  := Tuple_New (3);
      Tuple_SetItem (Args, 0, Long_FromLong (id_P));
      Tuple_SetItem (Args, 1, Long_FromLong (i_P));
      Tuple_SetItem (Args, 2, (if t_P /= null then t_P.Python_Proxy else No_Value));
      return new Inst'(Python_Proxy => Object_CallObject (Class, Args, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, List, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "TimerInfo");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Result := Object_CallObject (Method, Args, True);
   end U_copy_U;
end QtAda6.QtCore.QAbstractEventDispatcher.TimerInfo;
