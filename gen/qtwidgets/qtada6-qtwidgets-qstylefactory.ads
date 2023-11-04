-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtwidgets-qstylefactory.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Widgets module provides ready to use Widgets functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtWidgets.QStyle;
package QtAda6.QtWidgets.QStyleFactory is
   type List_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function create (arg_1_P : str) return access QtAda6.QtWidgets.QStyle.Inst'Class;
   function keys return List_str;
end QtAda6.QtWidgets.QStyleFactory;
