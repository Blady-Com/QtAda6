-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qvalidator.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLocale;
limited with QtAda6.QtCore.QLocale.Language;
with QtAda6.QtCore.QObject;
package QtAda6.QtGui.QValidator is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   changed : ClassVar_Signal;-- changed()
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function fixup (self : access Inst; arg_1_P : str) return str;
   function locale (self : access Inst) return access QtAda6.QtCore.QLocale.Inst'Class;
   procedure setLocale (self : access Inst; locale_P : Union_QtAda6_QtCore_QLocale_QtAda6_QtCore_QLocale_Language);
   function validate (self : access Inst; arg_1_P : str; arg_2_P : int) return Object;
end QtAda6.QtGui.QValidator;
