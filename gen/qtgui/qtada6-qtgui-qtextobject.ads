-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qtextobject.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QTextDocument;
limited with QtAda6.QtGui.QTextFormat;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QTextObject is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (doc_P : access QtAda6.QtGui.QTextDocument.Inst'Class) return Class;
   function document (self : access Inst) return access QtAda6.QtGui.QTextDocument.Inst'Class;
   function format (self : access Inst) return access QtAda6.QtGui.QTextFormat.Inst'Class;
   function formatIndex (self : access Inst) return int;
   function objectIndex (self : access Inst) return int;
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QTextFormat.Inst'Class);
end QtAda6.QtGui.QTextObject;
