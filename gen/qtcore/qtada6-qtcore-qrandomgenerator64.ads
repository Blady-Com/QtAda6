-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qrandomgenerator64.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QRandomGenerator;
package QtAda6.QtCore.QRandomGenerator64 is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QRandomGenerator.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (begin_K_P : int; end_K_P : int) return Class;
   function Create (other_P : access QtAda6.QtCore.QRandomGenerator.Inst'Class) return Class;
-- function Create(seedBuffer_P : int;len_P : int) return Class;
   function Create (seedValue_P : int := 0) return Class;
   procedure discard (self : access Inst; z_P : int);
   function generate (self : access Inst) return int;
   function global_U return access QtAda6.QtCore.QRandomGenerator64.Inst'Class;
   function max return int;
   function min return int;
   function securelySeeded return access QtAda6.QtCore.QRandomGenerator64.Inst'Class;
   function system return access QtAda6.QtCore.QRandomGenerator64.Inst'Class;
end QtAda6.QtCore.QRandomGenerator64;
