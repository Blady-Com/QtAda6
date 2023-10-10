-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qpytextobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QObject;
with QtAda6.QtGui.QTextObjectInterface;
package QtAda6.QtGui.QPyTextObject is
type Optional_QtAda6_QtCore_QObject is access Any;
type Inst;
type Inst_Access is access all Inst;
type Class is access all Inst'Class;
type Inst is new QtAda6.QtCore.QObject.Inst
--  and QtAda6.QtGui.QTextObjectInterface.Inst
 with null record;
procedure Finalize (Self : in out Class);
function Create(parent_P : Optional_QtAda6_QtCore_QObject) return Class;
end QtAda6.QtGui.QPyTextObject;
