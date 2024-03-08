-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qmetaenum.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QMetaEnum is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type TUPLE is null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (QMetaEnum_P : access QtAda6.QtCore.QMetaEnum.Inst'Class) return Class;
   procedure U_copy_U;
   function enumName (self : access Inst) return bytes;
   function isFlag (self : access Inst) return bool;
   function isScoped (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function key (self : access Inst; index_P : int) return bytes;
   function keyCount (self : access Inst) return int;
   function keyToValue (self : access Inst; key_P : bytes) return TUPLE;
   function keysToValue (self : access Inst; keys_P : bytes) return TUPLE;
   function name (self : access Inst) return bytes;
   function scope (self : access Inst) return bytes;
   function value (self : access Inst; index_P : int) return int;
   function valueToKey (self : access Inst; value_P : int) return bytes;
   function valueToKeys (self : access Inst; value_P : int) return access QtAda6.QtCore.QByteArray.Inst'Class;
end QtAda6.QtCore.QMetaEnum;
