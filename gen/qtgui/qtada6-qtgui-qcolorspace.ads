-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtgui-qcolorspace.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtGui.QColorSpace.NamedColorSpace;
limited with QtAda6.QtGui.QColorSpace.Primaries;
limited with QtAda6.QtGui.QColorSpace.TransferFunction;
limited with QtAda6.QtCore.QPointF;
limited with QtAda6.QtCore.QPoint;
limited with QtAda6.QtGui.QPainterPath.Element;
limited with QtAda6.QtCore.QDataStream;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtGui.QColorTransform;
package QtAda6.QtGui.QColorSpace is
   type Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace is access Any;
   type Sequence_int is access Any;
   type Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element is access Any;
   type Union_QtAda6_QtCore_QByteArray_bytes is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new Shiboken.Object with null record;
   procedure Finalize (Self : in out Class);
   function Create return Class;
   function Create
     (colorSpace_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace) return Class;
   function Create (namedColorSpace_P : access QtAda6.QtGui.QColorSpace.NamedColorSpace.Inst'Class) return Class;
   function Create (primaries_P : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class; gamma_P : float) return Class;
   function Create
     (primaries_P        : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float) return Class;
   function Create
     (primaries_P : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class; transferFunctionTable_P : Sequence_int)
      return Class;
   function Create
     (whitePoint_P                : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      redPoint_P                  : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      greenPoint_P                : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      bluePoint_P                 : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      redTransferFunctionTable_P  : Sequence_int; greenTransferFunctionTable_P : Sequence_int;
      blueTransferFunctionTable_P : Sequence_int) return Class;
   function Create
     (whitePoint_P       : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      redPoint_P         : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      greenPoint_P       : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      bluePoint_P        : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float) return Class;
   function Create
     (whitePoint_P            : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      redPoint_P              : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      greenPoint_P            : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      bluePoint_P             : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      transferFunctionTable_P : Sequence_int) return Class;
   procedure U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class;
   function description (self : access Inst) return str;
   function fromIccProfile
     (iccProfile_P : Union_QtAda6_QtCore_QByteArray_bytes) return access QtAda6.QtGui.QColorSpace.Inst'Class;
   function gamma (self : access Inst) return float;
   function iccProfile (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function isValid (self : access Inst) return bool;
   function primaries_F (self : access Inst) return access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class;
   procedure setDescription (self : access Inst; description_P : str);
   procedure setPrimaries (self : access Inst; primariesId_P : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class);
   procedure setPrimaries
     (self         : access Inst;
      whitePoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      redPoint_P   : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      greenPoint_P : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element;
      bluePoint_P  : Union_QtAda6_QtCore_QPointF_QtAda6_QtCore_QPoint_QtAda6_QtGui_QPainterPath_Element);
   procedure setTransferFunction
     (self    : access Inst; transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class;
      gamma_P : float);
   procedure setTransferFunction (self : access Inst; transferFunctionTable_P : Sequence_int);
   procedure setTransferFunctions
     (self : access Inst; redTransferFunctionTable_P : Sequence_int; greenTransferFunctionTable_P : Sequence_int;
      blueTransferFunctionTable_P : Sequence_int);
   procedure swap
     (self : access Inst; colorSpace_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace);
   function transferFunction_F (self : access Inst) return access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class;
   function transformationToColorSpace
     (self : access Inst; colorspace_P : Union_QtAda6_QtGui_QColorSpace_QtAda6_QtGui_QColorSpace_NamedColorSpace)
      return access QtAda6.QtGui.QColorTransform.Inst'Class;
   function withTransferFunction
     (self    : access Inst; transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class;
      gamma_P : float) return access QtAda6.QtGui.QColorSpace.Inst'Class;
   function withTransferFunction
     (self : access Inst; transferFunctionTable_P : Sequence_int) return access QtAda6.QtGui.QColorSpace.Inst'Class;
   function withTransferFunctions
     (self : access Inst; redTransferFunctionTable_P : Sequence_int; greenTransferFunctionTable_P : Sequence_int;
      blueTransferFunctionTable_P : Sequence_int) return access QtAda6.QtGui.QColorSpace.Inst'Class;
end QtAda6.QtGui.QColorSpace;
