-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextframeformat-borderstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtGui.QTextFrameFormat.BorderStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   BorderStyle_None       : QTextFrameFormat.BorderStyle.Class;-- 0x0
   BorderStyle_Dotted     : QTextFrameFormat.BorderStyle.Class;-- 0x1
   BorderStyle_Dashed     : QTextFrameFormat.BorderStyle.Class;-- 0x2
   BorderStyle_Solid      : QTextFrameFormat.BorderStyle.Class;-- 0x3
   BorderStyle_Double     : QTextFrameFormat.BorderStyle.Class;-- 0x4
   BorderStyle_DotDash    : QTextFrameFormat.BorderStyle.Class;-- 0x5
   BorderStyle_DotDotDash : QTextFrameFormat.BorderStyle.Class;-- 0x6
   BorderStyle_Groove     : QTextFrameFormat.BorderStyle.Class;-- 0x7
   BorderStyle_Ridge      : QTextFrameFormat.BorderStyle.Class;-- 0x8
   BorderStyle_Inset      : QTextFrameFormat.BorderStyle.Class;-- 0x9
   BorderStyle_Outset     : QTextFrameFormat.BorderStyle.Class;-- 0xa
end QtAda6.QtGui.QTextFrameFormat.BorderStyle;
