-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimageiohandler-transformation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
package QtAda6.QtGui.QImageIOHandler.Transformation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Class_Array is array (Positive range <>) of access Inst'Class;
   type Inst is new Enum.Flag with null record;
   procedure Finalize (Self : in out Class);
   function TransformationNone return Class;-- 0x0
   function TransformationMirror return Class;-- 0x1
   function TransformationFlip return Class;-- 0x2
   function TransformationRotate180 return Class;-- 0x3
   function TransformationRotate90 return Class;-- 0x4
   function TransformationMirrorAndRotate90 return Class;-- 0x5
   function TransformationFlipAndRotate90 return Class;-- 0x6
   function TransformationRotate270 return Class;-- 0x7
end QtAda6.QtGui.QImageIOHandler.Transformation;
