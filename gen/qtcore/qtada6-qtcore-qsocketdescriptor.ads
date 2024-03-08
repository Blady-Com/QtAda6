-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsocketdescriptor.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.QSocketDescriptor is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QSocketDescriptor_int is new Any;
   procedure Finalize (Self : in out Class);
   function Create (QSocketDescriptor_P : UNION_QtAda6_QtCore_QSocketDescriptor_int) return Class;
   function Create (descriptor_P : int := 0) return Class;
   procedure U_copy_U;
   function isValid (self : access Inst) return bool;
end QtAda6.QtCore.QSocketDescriptor;
