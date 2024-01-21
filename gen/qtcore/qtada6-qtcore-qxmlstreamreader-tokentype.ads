-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamreader-tokentype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QXmlStreamReader.TokenType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function NoToken return Class;-- 0x0
   function Invalid return Class;-- 0x1
   function StartDocument return Class;-- 0x2
   function EndDocument return Class;-- 0x3
   function StartElement return Class;-- 0x4
   function EndElement return Class;-- 0x5
   function Characters return Class;-- 0x6
   function Comment return Class;-- 0x7
   function DTD return Class;-- 0x8
   function EntityReference return Class;-- 0x9
   function ProcessingInstruction return Class;-- 0xa
end QtAda6.QtCore.QXmlStreamReader.TokenType;
