-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qfileopenevent.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QUrl;
with QtAda6.QtCore.QEvent;
package QtAda6.QtGui.QFileOpenEvent is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QEvent.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (arg_1_P : access QtAda6.QtGui.QFileOpenEvent.Inst'Class) return Class;
   function Create (file_P : str) return Class;
   function Create (url_P : access QtAda6.QtCore.QUrl.Inst'Class) return Class;
-- function Create(url_P : str) return Class;
   function clone (self : access Inst) return access QtAda6.QtGui.QFileOpenEvent.Inst'Class;
   function file (self : access Inst) return str;
   function url (self : access Inst) return access QtAda6.QtCore.QUrl.Inst'Class;
end QtAda6.QtGui.QFileOpenEvent;
