-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qrandomgenerator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QRandomGenerator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (begin_K_P : int; end_K_P : int) return Class;
   function Create (other_P : access QtAda6.QtCore.QRandomGenerator.Inst'Class) return Class;
-- function Create(seedBuffer_P : int;len_P : int) return Class;
   function Create (seedValue_P : int := 0) return Class;
   function bounded (self : access Inst; highest_P : float) return float;
   function bounded (self : access Inst; highest_P : int) return int;
-- function bounded(self : access Inst;highest_P : int) return int;
-- function bounded(self : access Inst;highest_P : int) return int;
-- function bounded(self : access Inst;highest_P : int) return int;
   function bounded (self : access Inst; lowest_P : int; highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
-- function bounded(self : access Inst;lowest_P : int;highest_P : int) return int;
   procedure discard (self : access Inst; z_P : int);
   function generate (self : access Inst) return int;
   function generate64 (self : access Inst) return int;
   function generateDouble (self : access Inst) return float;
   function global_U return access QtAda6.QtCore.QRandomGenerator.Inst'Class;
   function max return int;
   function min return int;
   function securelySeeded return access QtAda6.QtCore.QRandomGenerator.Inst'Class;
   procedure seed (self : access Inst; s_P : int := 0);
   function system return access QtAda6.QtCore.QRandomGenerator.Inst'Class;
end QtAda6.QtCore.QRandomGenerator;
