-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-pyclassproperty.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.PyClassProperty is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Property with null record;
   type CALLABLE_Any_Any is new Any;
   type CALLABLE_Any_Any_NoneType is new Any;
   type CALLABLE_Any_NoneType is new Any;
   procedure Finalize (Self : in out Class);
   function Create
     (fget_P : CALLABLE_Any_Any      := null; fset_P : CALLABLE_Any_Any_NoneType := null;
      fdel_P : CALLABLE_Any_NoneType := null; doc_P : str := "") return Class;
end QtAda6.QtCore.PyClassProperty;
