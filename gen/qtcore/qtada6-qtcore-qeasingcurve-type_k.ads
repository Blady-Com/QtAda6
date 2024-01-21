-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qeasingcurve-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QEasingCurve.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function Linear return Class;-- 0x0
   function InQuad return Class;-- 0x1
   function OutQuad return Class;-- 0x2
   function InOutQuad return Class;-- 0x3
   function OutInQuad return Class;-- 0x4
   function InCubic return Class;-- 0x5
   function OutCubic return Class;-- 0x6
   function InOutCubic return Class;-- 0x7
   function OutInCubic return Class;-- 0x8
   function InQuart return Class;-- 0x9
   function OutQuart return Class;-- 0xa
   function InOutQuart return Class;-- 0xb
   function OutInQuart return Class;-- 0xc
   function InQuint return Class;-- 0xd
   function OutQuint return Class;-- 0xe
   function InOutQuint return Class;-- 0xf
   function OutInQuint return Class;-- 0x10
   function InSine return Class;-- 0x11
   function OutSine return Class;-- 0x12
   function InOutSine return Class;-- 0x13
   function OutInSine return Class;-- 0x14
   function InExpo return Class;-- 0x15
   function OutExpo return Class;-- 0x16
   function InOutExpo return Class;-- 0x17
   function OutInExpo return Class;-- 0x18
   function InCirc return Class;-- 0x19
   function OutCirc return Class;-- 0x1a
   function InOutCirc return Class;-- 0x1b
   function OutInCirc return Class;-- 0x1c
   function InElastic return Class;-- 0x1d
   function OutElastic return Class;-- 0x1e
   function InOutElastic return Class;-- 0x1f
   function OutInElastic return Class;-- 0x20
   function InBack return Class;-- 0x21
   function OutBack return Class;-- 0x22
   function InOutBack return Class;-- 0x23
   function OutInBack return Class;-- 0x24
   function InBounce return Class;-- 0x25
   function OutBounce return Class;-- 0x26
   function InOutBounce return Class;-- 0x27
   function OutInBounce return Class;-- 0x28
   function InCurve return Class;-- 0x29
   function OutCurve return Class;-- 0x2a
   function SineCurve return Class;-- 0x2b
   function CosineCurve return Class;-- 0x2c
   function BezierSpline return Class;-- 0x2d
   function TCBSpline return Class;-- 0x2e
   function Custom return Class;-- 0x2f
   function NCurveTypes return Class;-- 0x30
end QtAda6.QtCore.QEasingCurve.Type_K;
