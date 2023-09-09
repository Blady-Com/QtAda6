-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qlibrary.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QLibrary.LoadHint;
with QtAda6.QtCore.QObject;
package QtAda6.QtCore.QLibrary is
   type Optional_QtAda6_QtCore_QObject is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function Create (fileName_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (fileName_P : str; verNum_P : int; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (fileName_P : str; version_P : str; parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function errorString (self : access Inst) return str;
   function fileName (self : access Inst) return str;
   function isLibrary (fileName_P : str) return bool;
   function isLoaded (self : access Inst) return bool;
   function load_F (self : access Inst) return bool;
   function loadHints (self : access Inst) return access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class;
   function resolve (fileName_P : str; symbol_P : bytes) return int;
   function resolve (fileName_P : str; verNum_P : int; symbol_P : bytes) return int;
   function resolve (fileName_P : str; version_P : str; symbol_P : bytes) return int;
   function resolve (self : access Inst; symbol_P : bytes) return int;
   procedure setFileName (self : access Inst; fileName_P : str);
   procedure setFileNameAndVersion (self : access Inst; fileName_P : str; verNum_P : int);
   procedure setFileNameAndVersion (self : access Inst; fileName_P : str; version_P : str);
   procedure setLoadHints (self : access Inst; hints_P : access QtAda6.QtCore.QLibrary.LoadHint.Inst'Class);
   function unload (self : access Inst) return bool;
end QtAda6.QtCore.QLibrary;
