-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qinputmethodevent-attributetype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QInputMethodEvent.AttributeType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function TextFormat return Class;-- 0x0
   function Cursor return Class;-- 0x1
   function Language return Class;-- 0x2
   function Ruby return Class;-- 0x3
   function Selection return Class;-- 0x4
end QtAda6.QtGui.QInputMethodEvent.AttributeType;
