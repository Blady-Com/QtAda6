-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qurl-urlformattingoption.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QUrl.UrlFormattingOption is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.IntFlag with null record;
   procedure Finalize (Self : in out Class);
   function None_U return Class;-- 0x0
   function RemoveScheme return Class;-- 0x1
   function RemovePassword return Class;-- 0x2
   function RemoveUserInfo return Class;-- 0x6
   function RemovePort return Class;-- 0x8
   function RemoveAuthority return Class;-- 0x1e
   function RemovePath return Class;-- 0x20
   function RemoveQuery return Class;-- 0x40
   function RemoveFragment return Class;-- 0x80
   function PreferLocalFile return Class;-- 0x200
   function StripTrailingSlash return Class;-- 0x400
   function RemoveFilename return Class;-- 0x800
   function NormalizePathSegments return Class;-- 0x1000
end QtAda6.QtCore.QUrl.UrlFormattingOption;
