-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qbytearray-base64option.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtCore.QByteArray.Base64Option is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   Base64Encoding              : QByteArray.Base64Option.Class;-- 0x0
   IgnoreBase64DecodingErrors  : QByteArray.Base64Option.Class;-- 0x0
   KeepTrailingEquals          : QByteArray.Base64Option.Class;-- 0x0
   Base64UrlEncoding           : QByteArray.Base64Option.Class;-- 0x1
   OmitTrailingEquals          : QByteArray.Base64Option.Class;-- 0x2
   AbortOnBase64DecodingErrors : QByteArray.Base64Option.Class;-- 0x4
end QtAda6.QtCore.QByteArray.Base64Option;
