-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qt.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QTextStream;
package QtAda6.QtCore.Qt is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   procedure beginPropertyUpdateGroup;
   function bin (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function bom (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function center
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function dec (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   procedure endPropertyUpdateGroup;
   function endl (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function fixed
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function flush
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function forcepoint
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function forcesign
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function hex (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function left (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function lowercasebase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function lowercasedigits
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function noforcepoint
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function noforcesign
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function noshowbase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function oct (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function reset
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function right
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function scientific
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function showbase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function uppercasebase
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function uppercasedigits
     (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
   function ws_F (s_P : access QtAda6.QtCore.QTextStream.Inst'Class) return access QtAda6.QtCore.QTextStream.Inst'Class;
end QtAda6.QtCore.Qt;
