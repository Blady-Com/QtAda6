-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qvalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.Signal;
limited with QtAda6.QtCore.QLocale;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QValidator is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   type UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is new Any;
   procedure Finalize (Self : in out Class);
   function changed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- changed()
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   function fixup (self : access Inst; arg_1_P : str) return str;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   procedure setLocale (self : access Inst; locale_P : UNION_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language);
   function validate (self : access Inst; arg_1_P : str; arg_2_P : int) return access Object'Class;
end QtAda6.QtGui.QValidator;
