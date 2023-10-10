-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qimageiohandler-transformation.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Enum.Flag;
package QtAda6.QtGui.QImageIOHandler.Transformation is
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Enum.Flag.Inst with null record;
   procedure Finalize (Self : in out Class);
   TransformationNone              : QImageIOHandler.Transformation.Class;-- 0x0
   TransformationMirror            : QImageIOHandler.Transformation.Class;-- 0x1
   TransformationFlip              : QImageIOHandler.Transformation.Class;-- 0x2
   TransformationRotate180         : QImageIOHandler.Transformation.Class;-- 0x3
   TransformationRotate90          : QImageIOHandler.Transformation.Class;-- 0x4
   TransformationMirrorAndRotate90 : QImageIOHandler.Transformation.Class;-- 0x5
   TransformationFlipAndRotate90   : QImageIOHandler.Transformation.Class;-- 0x6
   TransformationRotate270         : QImageIOHandler.Transformation.Class;-- 0x7
end QtAda6.QtGui.QImageIOHandler.Transformation;
