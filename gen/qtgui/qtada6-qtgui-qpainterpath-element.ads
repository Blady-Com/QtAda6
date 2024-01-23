-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpainterpath-element.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QPainterPath.Element is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create (Element_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class) return Class;
   procedure U_copy_U;
   function isCurveTo (self : access Inst) return bool;
   function isLineTo (self : access Inst) return bool;
   function isMoveTo (self : access Inst) return bool;
end QtAda6.QtGui.QPainterPath.Element;
