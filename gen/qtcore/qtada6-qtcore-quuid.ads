-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-quuid.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QUuid.StringFormat;
limited with QtAda6.QtCore.QUuid.Variant;
limited with QtAda6.QtCore.QUuid.Version;
package QtAda6.QtCore.QUuid is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (l_P  : int; w1_P : int; w2_P : int; b1_P : int; b2_P : int; b3_P : int; b4_P : int; b5_P : int; b6_P : int;
      b7_P : int; b8_P : int) return Class;
   function Create (string_P : str) return Class;
   procedure U_copy_U;
   function U_reduce_U (self : access Inst) return access Object'Class;
   function U_repr_U (self : access Inst) return access Object'Class;
   function createUuid return access QtAda6.QtCore.QUuid.Inst'Class;
   function createUuidV3
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : str) return access QtAda6.QtCore.QUuid.Inst'Class;
   function createUuidV3
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QUuid.Inst'Class;
   function createUuidV3
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : bytes) return access QtAda6.QtCore.QUuid.Inst'Class;
   function createUuidV5
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : str) return access QtAda6.QtCore.QUuid.Inst'Class;
   function createUuidV5
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : access QtAda6.QtCore.QByteArray.Inst'Class)
      return access QtAda6.QtCore.QUuid.Inst'Class;
   function createUuidV5
     (ns_P : access QtAda6.QtCore.QUuid.Inst'Class; baseData_P : bytes) return access QtAda6.QtCore.QUuid.Inst'Class;
   function fromRfc4122
     (arg_1_P : access QtAda6.QtCore.QByteArray.Inst'Class) return access QtAda6.QtCore.QUuid.Inst'Class;
   function fromRfc4122 (arg_1_P : bytes) return access QtAda6.QtCore.QUuid.Inst'Class;
   function fromString (string_P : str) return access QtAda6.QtCore.QUuid.Inst'Class;
   function isNull (self : access Inst) return bool;
   function toByteArray
     (self : access Inst; mode_P : access QtAda6.QtCore.QUuid.StringFormat.Inst'Class := null)
      return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toRfc4122 (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function toString
     (self : access Inst; mode_P : access QtAda6.QtCore.QUuid.StringFormat.Inst'Class := null) return str;
   function variant_F (self : access Inst) return access QtAda6.QtCore.QUuid.Variant.Inst'Class;
   function version_F (self : access Inst) return access QtAda6.QtCore.QUuid.Version.Inst'Class;
end QtAda6.QtCore.QUuid;
