-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qstringconverterbase-state.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QStringConverterBase.Flag;
package QtAda6.QtCore.QStringConverterBase.State is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create (f_P : access QtAda6.QtCore.QStringConverterBase.Flag.Inst'Class) return Class;
   procedure clear (self : access Inst);
   procedure reset (self : access Inst);
end QtAda6.QtCore.QStringConverterBase.State;
