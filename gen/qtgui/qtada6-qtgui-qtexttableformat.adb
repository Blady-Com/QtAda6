-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qtexttableformat.adb
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
with QtAda6.QtGui.QTextTableFormat;
with QtAda6.QtGui.QTextFormat;
with QtAda6.QtCore.Qt.AlignmentFlag;
with QtAda6.QtGui.QTextLength;
package body QtAda6.QtGui.QTextTableFormat is
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
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableFormat");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (QTextTableFormat_P : access QtAda6.QtGui.QTextTableFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if QTextTableFormat_P /= null then QTextTableFormat_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function Create (fmt_P : access QtAda6.QtGui.QTextFormat.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableFormat");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if fmt_P /= null then fmt_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   procedure U_copy_U is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QTextTableFormat");
      Method := Object_GetAttrString (Class, "__copy__");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end U_copy_U;
   function alignment (self : access Inst) return access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.Qt.AlignmentFlag.Class := new QtAda6.QtCore.Qt.AlignmentFlag.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "alignment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end alignment;
   function borderCollapse (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "borderCollapse");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end borderCollapse;
   function cellPadding (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cellPadding");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end cellPadding;
   function cellSpacing (self : access Inst) return float is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "cellSpacing");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Float_AsDouble (Result);
   end cellSpacing;
   procedure clearColumnWidthConstraints (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "clearColumnWidthConstraints");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end clearColumnWidthConstraints;
   function columnWidthConstraints (self : access Inst) return LIST_QtAda6_QtGui_QTextLength is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columnWidthConstraints");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end columnWidthConstraints;
   function columns (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "columns");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end columns;
   function headerRowCount (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "headerRowCount");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end headerRowCount;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   procedure setAlignment (self : access Inst; alignment_P : access QtAda6.QtCore.Qt.AlignmentFlag.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setAlignment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if alignment_P /= null then alignment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setAlignment;
   procedure setBorderCollapse (self : access Inst; borderCollapse_P : bool) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setBorderCollapse");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, To_Python (borderCollapse_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setBorderCollapse;
   procedure setCellPadding (self : access Inst; padding_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCellPadding");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (padding_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCellPadding;
   procedure setCellSpacing (self : access Inst; spacing_P : float) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setCellSpacing");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Float_FromDouble (spacing_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setCellSpacing;
   procedure setColumnWidthConstraints (self : access Inst; constraints_P : SEQUENCE_QtAda6_QtGui_QTextLength) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumnWidthConstraints");
      List   := List_New (constraints_P'Length);
      for ind in constraints_P'Range loop
         List_SetItem
           (List, ssize_t (ind - constraints_P'First),
            (if constraints_P (ind) /= null then constraints_P (ind).Python_Proxy else No_Value));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumnWidthConstraints;
   procedure setColumns (self : access Inst; columns_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setColumns");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (columns_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setColumns;
   procedure setHeaderRowCount (self : access Inst; count_P : int) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setHeaderRowCount");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (count_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setHeaderRowCount;
end QtAda6.QtGui.QTextTableFormat;
