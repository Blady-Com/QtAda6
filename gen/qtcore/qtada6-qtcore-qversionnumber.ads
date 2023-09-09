-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qversionnumber.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QVersionNumber is
   type Sequence_int is access Any;
   type List_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (maj_P : int) return Class;
   function Create (maj_P : int; min_P : int) return Class;
   function Create (maj_P : int; min_P : int; mic_P : int) return Class;
   function Create (seg_P : Sequence_int) return Class;
   procedure U_copy_U;
   function commonPrefix
     (v1_P : access QtAda6.QtCore.QVersionNumber.Inst'Class; v2_P : access QtAda6.QtCore.QVersionNumber.Inst'Class)
      return access QtAda6.QtCore.QVersionNumber.Inst'Class;
   function compare
     (v1_P : access QtAda6.QtCore.QVersionNumber.Inst'Class; v2_P : access QtAda6.QtCore.QVersionNumber.Inst'Class)
      return int;
   function fromString (string_P : str) return access QtAda6.QtCore.QVersionNumber.Inst'Class;
   function isNormalized (self : access Inst) return bool;
   function isNull (self : access Inst) return bool;
   function isPrefixOf (self : access Inst; other_P : access QtAda6.QtCore.QVersionNumber.Inst'Class) return bool;
   function majorVersion (self : access Inst) return int;
   function microVersion (self : access Inst) return int;
   function minorVersion (self : access Inst) return int;
   function normalized (self : access Inst) return access QtAda6.QtCore.QVersionNumber.Inst'Class;
   function segmentAt (self : access Inst; index_P : int) return int;
   function segmentCount (self : access Inst) return int;
   function segments (self : access Inst) return List_int;
   function toString (self : access Inst) return str;
end QtAda6.QtCore.QVersionNumber;
