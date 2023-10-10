-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qaccessibleactioninterface.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QAccessibleActionInterface is
   type List_str is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function actionNames (self : access Inst) return List_str;
   function decreaseAction return str;
   procedure doAction (self : access Inst; actionName_P : str);
   function increaseAction return str;
   function keyBindingsForAction (self : access Inst; actionName_P : str) return List_str;
   function localizedActionDescription (self : access Inst; name_P : str) return str;
   function localizedActionName (self : access Inst; name_P : str) return str;
   function nextPageAction return str;
   function pressAction return str;
   function previousPageAction return str;
   function scrollDownAction return str;
   function scrollLeftAction return str;
   function scrollRightAction return str;
   function scrollUpAction return str;
   function setFocusAction return str;
   function showMenuAction return str;
   function toggleAction return str;
end QtAda6.QtGui.QAccessibleActionInterface;
