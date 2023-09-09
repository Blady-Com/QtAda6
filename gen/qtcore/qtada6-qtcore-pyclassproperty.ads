-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-pyclassproperty.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtCore.PyClassProperty is
   type Optional_Callable_AnyAny is access Any;
   type Optional_Callable_Any_AnyNoneType is access Any;
   type Optional_Callable_AnyNoneType is access Any;
   type Optional_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Property with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (fget_P : Optional_Callable_AnyAny; fset_P : Optional_Callable_Any_AnyNoneType;
      fdel_P : Optional_Callable_AnyNoneType; doc_P : Optional_str) return Class;
end QtAda6.QtCore.PyClassProperty;
