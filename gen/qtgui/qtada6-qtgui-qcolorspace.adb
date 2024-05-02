-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qcolorspace.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt GUI module provides basic GUI functionalities
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtGui.QColorSpace.NamedColorSpace;
with QtAda6.QtGui.QColorSpace.Primaries;
with QtAda6.QtGui.QColorSpace.TransferFunction;
with QtAda6.QtCore.QPointF;
with QtAda6.QtCore.QPoint;
with QtAda6.QtGui.QPainterPath.Element;
with QtAda6.QtCore.QDataStream;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QColorTransform;
package body QtAda6.QtGui.QColorSpace is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (colorSpace_P : access QtAda6.QtGui.QColorSpace.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorSpace_P /= null then colorSpace_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (colorSpace_P : access QtAda6.QtGui.QColorSpace.NamedColorSpace.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorSpace_P /= null then colorSpace_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (primaries_P : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class; gamma_P : float) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if primaries_P /= null then primaries_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, Float_FromDouble (gamma_P));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (primaries_P        : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if primaries_P /= null then primaries_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (primaries_P : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if primaries_P /= null then primaries_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redTransferFunctionTable_P  : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPointF.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P                  : access QtAda6.QtCore.QPoint.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P                   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P                 : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; redTransferFunctionTable_P : SEQUENCE_int;
      greenTransferFunctionTable_P : SEQUENCE_int; blueTransferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (7);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 5, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 6, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P         : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P       : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P        : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class; gamma_P : float := 0.0)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 4, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class; redPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P            : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P              : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; transferFunctionTable_P : SEQUENCE_int) return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create
     (whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class; transferFunctionTable_P : SEQUENCE_int)
      return Class
   is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Args  := Tuple_New (5);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      List := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 4, List);
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function U_lshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__lshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_lshift_U;
   function U_rshift_U
     (self : access Inst; arg_1_P : access QtAda6.QtCore.QDataStream.Inst'Class)
      return access QtAda6.QtCore.QDataStream.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QDataStream.Class := new QtAda6.QtCore.QDataStream.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "__rshift__");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if arg_1_P /= null then arg_1_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end U_rshift_U;
   function description (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "description");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end description;
   function fromIccProfile
     (iccProfile_P : access QtAda6.QtCore.QByteArray.Inst'Class) return access QtAda6.QtGui.QColorSpace.Inst'Class
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Method := Object_GetAttrString (Class, "fromIccProfile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if iccProfile_P /= null then iccProfile_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromIccProfile;
   function fromIccProfile (iccProfile_P : bytes) return access QtAda6.QtGui.QColorSpace.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QColorSpace");
      Method := Object_GetAttrString (Class, "fromIccProfile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (iccProfile_P.all)));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end fromIccProfile;
   function gamma (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "gamma");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end gamma;
   function iccProfile (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "iccProfile");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end iccProfile;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function primaries_F (self : access Inst) return access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorSpace.Primaries.Class := new QtAda6.QtGui.QColorSpace.Primaries.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "primaries");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end primaries_F;
   procedure setDescription (self : access Inst; description_P : str) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setDescription");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (description_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setDescription;
   procedure setPrimaries (self : access Inst; primariesId_P : access QtAda6.QtGui.QColorSpace.Primaries.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if primariesId_P /= null then primariesId_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPointF.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPointF.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self        : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P  : access QtAda6.QtCore.QPoint.Inst'Class; greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtCore.QPoint.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPointF.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class; bluePoint_P : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtCore.QPoint.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPointF.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtCore.QPoint.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setPrimaries
     (self         : access Inst; whitePoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      redPoint_P   : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      greenPoint_P : access QtAda6.QtGui.QPainterPath.Element.Inst'Class;
      bluePoint_P  : access QtAda6.QtGui.QPainterPath.Element.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setPrimaries");
      Args   := Tuple_New (4);
      Tuple_SetItem (Args, 0, (if whitePoint_P /= null then whitePoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if redPoint_P /= null then redPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 2, (if greenPoint_P /= null then greenPoint_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 3, (if bluePoint_P /= null then bluePoint_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setPrimaries;
   procedure setTransferFunction
     (self    : access Inst; transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class;
      gamma_P : float := 0.0)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransferFunction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransferFunction;
   procedure setTransferFunction (self : access Inst; transferFunctionTable_P : SEQUENCE_int) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransferFunction");
      Args   := Tuple_New (1);
      List   := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransferFunction;
   procedure setTransferFunctions
     (self : access Inst; redTransferFunctionTable_P : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int)
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setTransferFunctions");
      Args   := Tuple_New (3);
      List   := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setTransferFunctions;
   procedure swap (self : access Inst; colorSpace_P : access QtAda6.QtGui.QColorSpace.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorSpace_P /= null then colorSpace_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   procedure swap (self : access Inst; colorSpace_P : access QtAda6.QtGui.QColorSpace.NamedColorSpace.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swap");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorSpace_P /= null then colorSpace_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swap;
   function transferFunction_F (self : access Inst) return access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret                                          : constant QtAda6.QtGui.QColorSpace.TransferFunction.Class :=
        new QtAda6.QtGui.QColorSpace.TransferFunction.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "transferFunction");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transferFunction_F;
   function transformationToColorSpace
     (self : access Inst; colorspace_P : access QtAda6.QtGui.QColorSpace.Inst'Class)
      return access QtAda6.QtGui.QColorTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorTransform.Class := new QtAda6.QtGui.QColorTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformationToColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorspace_P /= null then colorspace_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformationToColorSpace;
   function transformationToColorSpace
     (self : access Inst; colorspace_P : access QtAda6.QtGui.QColorSpace.NamedColorSpace.Inst'Class)
      return access QtAda6.QtGui.QColorTransform.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorTransform.Class := new QtAda6.QtGui.QColorTransform.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "transformationToColorSpace");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if colorspace_P /= null then colorspace_P.Python_Proxy else No_Value));
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end transformationToColorSpace;
   function withTransferFunction
     (self    : access Inst; transferFunction_P : access QtAda6.QtGui.QColorSpace.TransferFunction.Inst'Class;
      gamma_P : float := 0.0) return access QtAda6.QtGui.QColorSpace.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "withTransferFunction");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if transferFunction_P /= null then transferFunction_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      if gamma_P /= 0.0 then
         Dict_SetItemString (Dict, "gamma", Float_FromDouble (gamma_P));
      end if;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end withTransferFunction;
   function withTransferFunction
     (self : access Inst; transferFunctionTable_P : SEQUENCE_int) return access QtAda6.QtGui.QColorSpace.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "withTransferFunction");
      Args   := Tuple_New (1);
      List   := List_New (transferFunctionTable_P'Length);
      for ind in transferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - transferFunctionTable_P'First), Long_FromLong (transferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end withTransferFunction;
   function withTransferFunctions
     (self : access Inst; redTransferFunctionTable_P : SEQUENCE_int; greenTransferFunctionTable_P : SEQUENCE_int;
      blueTransferFunctionTable_P : SEQUENCE_int) return access QtAda6.QtGui.QColorSpace.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QColorSpace.Class := new QtAda6.QtGui.QColorSpace.Inst;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "withTransferFunctions");
      Args   := Tuple_New (3);
      List   := List_New (redTransferFunctionTable_P'Length);
      for ind in redTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - redTransferFunctionTable_P'First), Long_FromLong (redTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 0, List);
      List := List_New (greenTransferFunctionTable_P'Length);
      for ind in greenTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - greenTransferFunctionTable_P'First),
            Long_FromLong (greenTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 1, List);
      List := List_New (blueTransferFunctionTable_P'Length);
      for ind in blueTransferFunctionTable_P'Range loop
         List_SetItem
           (List, ssize_t (ind - blueTransferFunctionTable_P'First), Long_FromLong (blueTransferFunctionTable_P (ind)));
      end loop;
      Tuple_SetItem (Args, 2, List);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end withTransferFunctions;
end QtAda6.QtGui.QColorSpace;
