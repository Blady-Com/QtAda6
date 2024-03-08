-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qeasingcurve-type_k.adb
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
package body QtAda6.QtCore.QEasingCurve.Type_K is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Linear return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Linear"));
   end Linear;
   function InQuad return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InQuad"));
   end InQuad;
   function OutQuad return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutQuad"));
   end OutQuad;
   function InOutQuad return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutQuad"));
   end InOutQuad;
   function OutInQuad return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInQuad"));
   end OutInQuad;
   function InCubic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InCubic"));
   end InCubic;
   function OutCubic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutCubic"));
   end OutCubic;
   function InOutCubic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutCubic"));
   end InOutCubic;
   function OutInCubic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInCubic"));
   end OutInCubic;
   function InQuart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InQuart"));
   end InQuart;
   function OutQuart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutQuart"));
   end OutQuart;
   function InOutQuart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutQuart"));
   end InOutQuart;
   function OutInQuart return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInQuart"));
   end OutInQuart;
   function InQuint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InQuint"));
   end InQuint;
   function OutQuint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutQuint"));
   end OutQuint;
   function InOutQuint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutQuint"));
   end InOutQuint;
   function OutInQuint return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInQuint"));
   end OutInQuint;
   function InSine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InSine"));
   end InSine;
   function OutSine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutSine"));
   end OutSine;
   function InOutSine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutSine"));
   end InOutSine;
   function OutInSine return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInSine"));
   end OutInSine;
   function InExpo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InExpo"));
   end InExpo;
   function OutExpo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutExpo"));
   end OutExpo;
   function InOutExpo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutExpo"));
   end InOutExpo;
   function OutInExpo return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInExpo"));
   end OutInExpo;
   function InCirc return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InCirc"));
   end InCirc;
   function OutCirc return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutCirc"));
   end OutCirc;
   function InOutCirc return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutCirc"));
   end InOutCirc;
   function OutInCirc return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInCirc"));
   end OutInCirc;
   function InElastic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InElastic"));
   end InElastic;
   function OutElastic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutElastic"));
   end OutElastic;
   function InOutElastic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutElastic"));
   end InOutElastic;
   function OutInElastic return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInElastic"));
   end OutInElastic;
   function InBack return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InBack"));
   end InBack;
   function OutBack return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutBack"));
   end OutBack;
   function InOutBack return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutBack"));
   end InOutBack;
   function OutInBack return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInBack"));
   end OutInBack;
   function InBounce return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InBounce"));
   end InBounce;
   function OutBounce return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutBounce"));
   end OutBounce;
   function InOutBounce return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InOutBounce"));
   end InOutBounce;
   function OutInBounce return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutInBounce"));
   end OutInBounce;
   function InCurve return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "InCurve"));
   end InCurve;
   function OutCurve return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "OutCurve"));
   end OutCurve;
   function SineCurve return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "SineCurve"));
   end SineCurve;
   function CosineCurve return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "CosineCurve"));
   end CosineCurve;
   function BezierSpline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "BezierSpline"));
   end BezierSpline;
   function TCBSpline return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "TCBSpline"));
   end TCBSpline;
   function Custom return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "Custom"));
   end Custom;
   function NCurveTypes return Class is
      Parent_Class : Handle;
   begin
      Parent_Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QEasingCurve");
      return new Inst'(Python_Proxy => Object_GetAttrString (Parent_Class, "NCurveTypes"));
   end NCurveTypes;
end QtAda6.QtCore.QEasingCurve.Type_K;
