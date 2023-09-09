-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurl-urlformattingoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.IntFlag;
package QtAda6.QtCore.QUrl.UrlFormattingOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.IntFlag.Inst with null record;
   procedure Finalize (Self : in out Class);
   None_U                : QUrl.UrlFormattingOption.Class;-- 0x0
   RemoveScheme          : QUrl.UrlFormattingOption.Class;-- 0x1
   RemovePassword        : QUrl.UrlFormattingOption.Class;-- 0x2
   RemoveUserInfo        : QUrl.UrlFormattingOption.Class;-- 0x6
   RemovePort            : QUrl.UrlFormattingOption.Class;-- 0x8
   RemoveAuthority       : QUrl.UrlFormattingOption.Class;-- 0x1e
   RemovePath            : QUrl.UrlFormattingOption.Class;-- 0x20
   RemoveQuery           : QUrl.UrlFormattingOption.Class;-- 0x40
   RemoveFragment        : QUrl.UrlFormattingOption.Class;-- 0x80
   PreferLocalFile       : QUrl.UrlFormattingOption.Class;-- 0x200
   StripTrailingSlash    : QUrl.UrlFormattingOption.Class;-- 0x400
   RemoveFilename        : QUrl.UrlFormattingOption.Class;-- 0x800
   NormalizePathSegments : QUrl.UrlFormattingOption.Class;-- 0x1000
end QtAda6.QtCore.QUrl.UrlFormattingOption;
