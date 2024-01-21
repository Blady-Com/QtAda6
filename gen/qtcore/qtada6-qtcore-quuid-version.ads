-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-quuid-version.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QUuid.Version is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Enum with null record;
   procedure Finalize (Self : in out Class);
   function VerUnknown return Class;-- -0x1
   function Time return Class;-- 0x1
   function EmbeddedPOSIX return Class;-- 0x2
   function Md5 return Class;-- 0x3
   function Name return Class;-- 0x3
   function Random return Class;-- 0x4
   function Sha1 return Class;-- 0x5
end QtAda6.QtCore.QUuid.Version;
