-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qoperatingsystemversionbase.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QOperatingSystemVersionBase.OSType;
limited with QtAda6.QtCore.QVersionNumber;
package QtAda6.QtCore.QOperatingSystemVersionBase is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (QOperatingSystemVersionBase_P : access QtAda6.QtCore.QOperatingSystemVersionBase.Inst'Class) return Class;
   function Create
     (osType_P : access QtAda6.QtCore.QOperatingSystemVersionBase.OSType.Inst'Class; vmajor_P : int; vminor_P : int;
      vmicro_P : int) return Class;
   procedure U_copy_U;
   function compare
     (v1_P : access QtAda6.QtCore.QOperatingSystemVersionBase.Inst'Class;
      v2_P : access QtAda6.QtCore.QOperatingSystemVersionBase.Inst'Class) return int;
   function current return access QtAda6.QtCore.QOperatingSystemVersionBase.Inst'Class;
   function currentType return access QtAda6.QtCore.QOperatingSystemVersionBase.OSType.Inst'Class;
   function majorVersion (self : access Inst) return int;
   function microVersion (self : access Inst) return int;
   function minorVersion (self : access Inst) return int;
   function name (osversion_P : access QtAda6.QtCore.QOperatingSystemVersionBase.Inst'Class) return str;
   function name (self : access Inst) return str;
   function segmentCount (self : access Inst) return int;
   function type_K (self : access Inst) return access QtAda6.QtCore.QOperatingSystemVersionBase.OSType.Inst'Class;
   function version (self : access Inst) return access QtAda6.QtCore.QVersionNumber.Inst'Class;
end QtAda6.QtCore.QOperatingSystemVersionBase;
