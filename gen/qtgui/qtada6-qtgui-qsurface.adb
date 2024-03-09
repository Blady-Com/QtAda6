-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qsurface.adb
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
with QtAda6.QtGui.QSurface.SurfaceClass;
with QtAda6.QtGui.QSurfaceFormat;
with QtAda6.QtCore.QSize;
with QtAda6.QtGui.QSurface.SurfaceType;
package body QtAda6.QtGui.QSurface is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function Create (type_K_P : access QtAda6.QtGui.QSurface.SurfaceClass.Inst'Class) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QSurface");
      Args  := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if type_K_P /= null then type_K_P.Python_Proxy else No_Value));
      Dict := Dict_New;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   function size (self : access Inst) return access QtAda6.QtCore.QSize.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QSize.Class := new QtAda6.QtCore.QSize.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "size");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end size;
   function supportsOpenGL (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "supportsOpenGL");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end supportsOpenGL;
   function surfaceClass_F (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceClass.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurface.SurfaceClass.Class := new QtAda6.QtGui.QSurface.SurfaceClass.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "surfaceClass");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end surfaceClass_F;
   function surfaceHandle (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "surfaceHandle");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end surfaceHandle;
   function surfaceType_F (self : access Inst) return access QtAda6.QtGui.QSurface.SurfaceType.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurface.SurfaceType.Class := new QtAda6.QtGui.QSurface.SurfaceType.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "surfaceType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end surfaceType_F;
end QtAda6.QtGui.QSurface;
