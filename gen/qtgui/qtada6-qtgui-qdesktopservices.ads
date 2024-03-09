-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qdesktopservices.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QDesktopServices is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   type UNION_QtAda6_QtCore_QUrl_str is new Any;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function openUrl (url_P : UNION_QtAda6_QtCore_QUrl_str) return bool;
   procedure setUrlHandler (scheme_P : str; receiver_P : access QtAda6.QtCore.QObject.Inst'Class; method_P : bytes);
   procedure unsetUrlHandler (scheme_P : str);
end QtAda6.QtGui.QDesktopServices;
