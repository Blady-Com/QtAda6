-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsysinfo.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QByteArray;
package QtAda6.QtCore.QSysInfo is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function bootUniqueId return access QtAda6.QtCore.QByteArray.Inst'Class;
   function buildAbi return str;
   function buildCpuArchitecture return str;
   function currentCpuArchitecture return str;
   function kernelType return str;
   function kernelVersion return str;
   function machineHostName return str;
   function machineUniqueId return access QtAda6.QtCore.QByteArray.Inst'Class;
   function prettyProductName return str;
   function productType return str;
   function productVersion return str;
end QtAda6.QtCore.QSysInfo;
