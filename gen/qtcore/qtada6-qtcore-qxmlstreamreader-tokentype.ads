-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qxmlstreamreader-tokentype.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Enum;
package QtAda6.QtCore.QXmlStreamReader.TokenType is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Enum.Inst with null record;
   procedure Finalize (Self : in out Class);
   NoToken               : QXmlStreamReader.TokenType.Class;-- 0x0
   Invalid               : QXmlStreamReader.TokenType.Class;-- 0x1
   StartDocument         : QXmlStreamReader.TokenType.Class;-- 0x2
   EndDocument           : QXmlStreamReader.TokenType.Class;-- 0x3
   StartElement          : QXmlStreamReader.TokenType.Class;-- 0x4
   EndElement            : QXmlStreamReader.TokenType.Class;-- 0x5
   Characters            : QXmlStreamReader.TokenType.Class;-- 0x6
   Comment               : QXmlStreamReader.TokenType.Class;-- 0x7
   DTD                   : QXmlStreamReader.TokenType.Class;-- 0x8
   EntityReference       : QXmlStreamReader.TokenType.Class;-- 0x9
   ProcessingInstruction : QXmlStreamReader.TokenType.Class;-- 0xa
end QtAda6.QtCore.QXmlStreamReader.TokenType;
