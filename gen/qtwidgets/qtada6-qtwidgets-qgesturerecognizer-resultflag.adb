-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtwidgets-qgesturerecognizer-resultflag.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
package body QtAda6.QtWidgets.QGestureRecognizer.ResultFlag is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Ignore return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Ignore"));
   end Ignore;
   function MayBeGesture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "MayBeGesture"));
   end MayBeGesture;
   function TriggerGesture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TriggerGesture"));
   end TriggerGesture;
   function FinishGesture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "FinishGesture"));
   end FinishGesture;
   function CancelGesture return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CancelGesture"));
   end CancelGesture;
   function ResultState_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ResultState_Mask"));
   end ResultState_Mask;
   function ConsumeEventHint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ConsumeEventHint"));
   end ConsumeEventHint;
   function ResultHint_Mask return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtWidgets_Python_Proxy, "QGestureRecognizer");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "ResultHint_Mask"));
   end ResultHint_Mask;
end QtAda6.QtWidgets.QGestureRecognizer.ResultFlag;
