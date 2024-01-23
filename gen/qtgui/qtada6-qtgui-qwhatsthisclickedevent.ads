-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qwhatsthisclickedevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QWhatsThisClickedEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QWhatsThisClickedEvent.Inst'Class) return Class;
   function Create (href_P : str) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QWhatsThisClickedEvent.Inst'Class;
   function href (self : access Inst) return str;
end QtAda6.QtGui.QWhatsThisClickedEvent;
