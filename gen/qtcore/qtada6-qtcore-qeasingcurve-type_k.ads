-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qeasingcurve-type_k.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QEasingCurve.Type_K is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   Linear       : QEasingCurve.Type_K.Class;-- 0x0
   InQuad       : QEasingCurve.Type_K.Class;-- 0x1
   OutQuad      : QEasingCurve.Type_K.Class;-- 0x2
   InOutQuad    : QEasingCurve.Type_K.Class;-- 0x3
   OutInQuad    : QEasingCurve.Type_K.Class;-- 0x4
   InCubic      : QEasingCurve.Type_K.Class;-- 0x5
   OutCubic     : QEasingCurve.Type_K.Class;-- 0x6
   InOutCubic   : QEasingCurve.Type_K.Class;-- 0x7
   OutInCubic   : QEasingCurve.Type_K.Class;-- 0x8
   InQuart      : QEasingCurve.Type_K.Class;-- 0x9
   OutQuart     : QEasingCurve.Type_K.Class;-- 0xa
   InOutQuart   : QEasingCurve.Type_K.Class;-- 0xb
   OutInQuart   : QEasingCurve.Type_K.Class;-- 0xc
   InQuint      : QEasingCurve.Type_K.Class;-- 0xd
   OutQuint     : QEasingCurve.Type_K.Class;-- 0xe
   InOutQuint   : QEasingCurve.Type_K.Class;-- 0xf
   OutInQuint   : QEasingCurve.Type_K.Class;-- 0x10
   InSine       : QEasingCurve.Type_K.Class;-- 0x11
   OutSine      : QEasingCurve.Type_K.Class;-- 0x12
   InOutSine    : QEasingCurve.Type_K.Class;-- 0x13
   OutInSine    : QEasingCurve.Type_K.Class;-- 0x14
   InExpo       : QEasingCurve.Type_K.Class;-- 0x15
   OutExpo      : QEasingCurve.Type_K.Class;-- 0x16
   InOutExpo    : QEasingCurve.Type_K.Class;-- 0x17
   OutInExpo    : QEasingCurve.Type_K.Class;-- 0x18
   InCirc       : QEasingCurve.Type_K.Class;-- 0x19
   OutCirc      : QEasingCurve.Type_K.Class;-- 0x1a
   InOutCirc    : QEasingCurve.Type_K.Class;-- 0x1b
   OutInCirc    : QEasingCurve.Type_K.Class;-- 0x1c
   InElastic    : QEasingCurve.Type_K.Class;-- 0x1d
   OutElastic   : QEasingCurve.Type_K.Class;-- 0x1e
   InOutElastic : QEasingCurve.Type_K.Class;-- 0x1f
   OutInElastic : QEasingCurve.Type_K.Class;-- 0x20
   InBack       : QEasingCurve.Type_K.Class;-- 0x21
   OutBack      : QEasingCurve.Type_K.Class;-- 0x22
   InOutBack    : QEasingCurve.Type_K.Class;-- 0x23
   OutInBack    : QEasingCurve.Type_K.Class;-- 0x24
   InBounce     : QEasingCurve.Type_K.Class;-- 0x25
   OutBounce    : QEasingCurve.Type_K.Class;-- 0x26
   InOutBounce  : QEasingCurve.Type_K.Class;-- 0x27
   OutInBounce  : QEasingCurve.Type_K.Class;-- 0x28
   InCurve      : QEasingCurve.Type_K.Class;-- 0x29
   OutCurve     : QEasingCurve.Type_K.Class;-- 0x2a
   SineCurve    : QEasingCurve.Type_K.Class;-- 0x2b
   CosineCurve  : QEasingCurve.Type_K.Class;-- 0x2c
   BezierSpline : QEasingCurve.Type_K.Class;-- 0x2d
   TCBSpline    : QEasingCurve.Type_K.Class;-- 0x2e
   Custom       : QEasingCurve.Type_K.Class;-- 0x2f
   NCurveTypes  : QEasingCurve.Type_K.Class;-- 0x30
end QtAda6.QtCore.QEasingCurve.Type_K;
