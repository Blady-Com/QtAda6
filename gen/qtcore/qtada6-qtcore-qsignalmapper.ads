-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qsignalmapper.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.Signal;
package QtAda6.QtCore.QSignalMapper is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new QtAda6.QtCore.QObject.Inst with null record;
   procedure Finalize (Self : in out Class);
   function mappedInt (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- mappedInt(int)
   function mappedObject (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- mappedObject(QObject*)
   function mappedString (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class;-- mappedString(QString)
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class;
   procedure map (self : access Inst);
   procedure map (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class);
   function mapping (self : access Inst; id_P : int) return access QtAda6.QtCore.QObject.Inst'Class;
   function mapping
     (self : access Inst; object_P : access QtAda6.QtCore.QObject.Inst'Class)
      return access QtAda6.QtCore.QObject.Inst'Class;
   function mapping (self : access Inst; text_P : str) return access QtAda6.QtCore.QObject.Inst'Class;
   procedure removeMappings (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class);
   procedure setMapping (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class; id_P : int);
   procedure setMapping
     (self     : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class;
      object_P : access QtAda6.QtCore.QObject.Inst'Class);
   procedure setMapping (self : access Inst; sender_P : access QtAda6.QtCore.QObject.Inst'Class; text_P : str);
end QtAda6.QtCore.QSignalMapper;
