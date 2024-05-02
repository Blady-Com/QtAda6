-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qtextboundaryfinder.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QTextBoundaryFinder.BoundaryType;
limited with QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason;
package QtAda6.QtCore.QTextBoundaryFinder is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (other_P : access QtAda6.QtCore.QTextBoundaryFinder.Inst'Class) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst'Class; str_P : str;
      buffer_P : bytes := null; bufferSize_P : int := 0) return Class;
   function Create
     (type_K_P : access QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst'Class; string_P : str) return Class;
   procedure U_copy_U;
   function boundaryReasons
     (self : access Inst) return access QtAda6.QtCore.QTextBoundaryFinder.BoundaryReason.Inst'Class;
   function isAtBoundary (self : access Inst) return bool;
   function isValid (self : access Inst) return bool;
   function position (self : access Inst) return int;
   procedure setPosition (self : access Inst; position_P : int);
   function string (self : access Inst) return str;
   procedure toEnd (self : access Inst);
   function toNextBoundary (self : access Inst) return int;
   function toPreviousBoundary (self : access Inst) return int;
   procedure toStart (self : access Inst);
   function type_K (self : access Inst) return access QtAda6.QtCore.QTextBoundaryFinder.BoundaryType.Inst'Class;
end QtAda6.QtCore.QTextBoundaryFinder;
