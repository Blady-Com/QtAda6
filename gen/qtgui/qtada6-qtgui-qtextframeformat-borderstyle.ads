-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextframeformat-borderstyle.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QTextFrameFormat.BorderStyle is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function BorderStyle_None return Class;-- 0x0
   function BorderStyle_Dotted return Class;-- 0x1
   function BorderStyle_Dashed return Class;-- 0x2
   function BorderStyle_Solid return Class;-- 0x3
   function BorderStyle_Double return Class;-- 0x4
   function BorderStyle_DotDash return Class;-- 0x5
   function BorderStyle_DotDotDash return Class;-- 0x6
   function BorderStyle_Groove return Class;-- 0x7
   function BorderStyle_Ridge return Class;-- 0x8
   function BorderStyle_Inset return Class;-- 0x9
   function BorderStyle_Outset return Class;-- 0xa
end QtAda6.QtGui.QTextFrameFormat.BorderStyle;
