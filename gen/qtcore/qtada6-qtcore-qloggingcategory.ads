-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qloggingcategory.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QtMsgType;
package QtAda6.QtCore.QLoggingCategory is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create
     (category_P : bytes; severityLevel_P : access QtAda6.QtCore.QtMsgType.Inst'Class := null) return Class;
   function U_call_U (self : access Inst) return access QtAda6.QtCore.QLoggingCategory.Inst'Class;
   function categoryName (self : access Inst) return bytes;
   function defaultCategory return access QtAda6.QtCore.QLoggingCategory.Inst'Class;
   function isCriticalEnabled (self : access Inst) return bool;
   function isDebugEnabled (self : access Inst) return bool;
   function isEnabled (self : access Inst; type_K_P : access QtAda6.QtCore.QtMsgType.Inst'Class) return bool;
   function isInfoEnabled (self : access Inst) return bool;
   function isWarningEnabled (self : access Inst) return bool;
   procedure setEnabled (self : access Inst; type_K_P : access QtAda6.QtCore.QtMsgType.Inst'Class; enable_P : bool);
   procedure setFilterRules (rules_P : str);
end QtAda6.QtCore.QLoggingCategory;
