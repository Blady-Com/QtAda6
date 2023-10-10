-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qvector2dlist.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QVector2DList is
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new object with null record;
procedure Finalize (Self : in out Class);
end QtAda6.QtGui.QVector2DList;
