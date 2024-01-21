-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qt-timertype.adb
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
package body QtAda6.QtCore.Qt.TimerType is
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function PreciseTimer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TimerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "PreciseTimer"));
   end PreciseTimer;
   function CoarseTimer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TimerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "CoarseTimer"));
   end CoarseTimer;
   function VeryCoarseTimer return Class is
      Parent_Class, Enum_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "Qt");
      Enum_Class   := Object_GetAttrString (Parent_Class, "TimerType");
      return new Inst'(Python_Proxy => Object_GetAttrString (Enum_Class, "VeryCoarseTimer"));
   end VeryCoarseTimer;
end QtAda6.QtCore.Qt.TimerType;
