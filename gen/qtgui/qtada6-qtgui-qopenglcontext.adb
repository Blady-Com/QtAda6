-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtgui-qopenglcontext.adb
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
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtGui.QOpenGLExtraFunctions;
with QtAda6.QtGui.QSurfaceFormat;
with QtAda6.QtGui.QOpenGLFunctions;
with QtAda6.QtGui.QSurface;
with QtAda6.QtGui.QOpenGLContext.OpenGLModuleType;
with QtAda6.QtGui.QScreen;
with QtAda6.QtGui.QSurfaceFormat.FormatOption;
with QtAda6.QtGui.QOpenGLContextGroup;
package body QtAda6.QtGui.QOpenGLContext is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function aboutToBeDestroyed (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "aboutToBeDestroyed"));
   end aboutToBeDestroyed;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple, Set : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function areSharing
     (first_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class; second_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class)
      return bool
   is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
      Method := Object_GetAttrString (Class, "areSharing");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, (if first_P /= null then first_P.Python_Proxy else No_Value));
      Tuple_SetItem (Args, 1, (if second_P /= null then second_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end areSharing;
   function create (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "create");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end create;
   function currentContext return access QtAda6.QtGui.QOpenGLContext.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLContext.Class := new QtAda6.QtGui.QOpenGLContext.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
      Method           := Object_GetAttrString (Class, "currentContext");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end currentContext;
   function defaultFramebufferObject (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "defaultFramebufferObject");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end defaultFramebufferObject;
   procedure doneCurrent (self : access Inst) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "doneCurrent");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end doneCurrent;
   function extensions (self : access Inst) return SET_QtAda6_QtCore_QByteArray is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "extensions");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : SET_QtAda6_QtCore_QByteArray (1 .. Natural (Set_Size (Result))) do
         for Ind in Ret'Range loop
            Ret (Ind).Python_Proxy := Set_Pop (Result);
         end loop;
      end return;
   end extensions;
   function extraFunctions (self : access Inst) return access QtAda6.QtGui.QOpenGLExtraFunctions.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLExtraFunctions.Class := new QtAda6.QtGui.QOpenGLExtraFunctions.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "extraFunctions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end extraFunctions;
   function format (self : access Inst) return access QtAda6.QtGui.QSurfaceFormat.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurfaceFormat.Class := new QtAda6.QtGui.QSurfaceFormat.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "format");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end format;
   function functions (self : access Inst) return access QtAda6.QtGui.QOpenGLFunctions.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLFunctions.Class := new QtAda6.QtGui.QOpenGLFunctions.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "functions");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end functions;
   function getProcAddress (self : access Inst; procName_P : bytes) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getProcAddress");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (procName_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end getProcAddress;
   function getProcAddress (self : access Inst; procName_P : access QtAda6.QtCore.QByteArray.Inst'Class) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "getProcAddress");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if procName_P /= null then procName_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end getProcAddress;
   function globalShareContext return access QtAda6.QtGui.QOpenGLContext.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLContext.Class := new QtAda6.QtGui.QOpenGLContext.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
      Method           := Object_GetAttrString (Class, "globalShareContext");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end globalShareContext;
   function hasExtension (self : access Inst; extension_P : access QtAda6.QtCore.QByteArray.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasExtension");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if extension_P /= null then extension_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasExtension;
   function hasExtension (self : access Inst; extension_P : bytes) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "hasExtension");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (extension_P.all)));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end hasExtension;
   function isOpenGLES (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isOpenGLES");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isOpenGLES;
   function isValid (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isValid");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isValid;
   function makeCurrent (self : access Inst; surface_P : access QtAda6.QtGui.QSurface.Inst'Class) return bool is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "makeCurrent");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if surface_P /= null then surface_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end makeCurrent;
   function openGLModuleType_F return access QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Inst'Class is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Class :=
        new QtAda6.QtGui.QOpenGLContext.OpenGLModuleType.Inst;
   begin
      Class            := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
      Method           := Object_GetAttrString (Class, "openGLModuleType");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end openGLModuleType_F;
   function resolveInterface (self : access Inst; name_P : bytes; revision_P : int) return int is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "resolveInterface");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (Standard.String (name_P.all)));
      Tuple_SetItem (Args, 1, Long_FromLong (revision_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end resolveInterface;
   function screen (self : access Inst) return access QtAda6.QtGui.QScreen.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QScreen.Class := new QtAda6.QtGui.QScreen.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "screen");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end screen;
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QSurfaceFormat.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFormat;
   procedure setFormat (self : access Inst; format_P : access QtAda6.QtGui.QSurfaceFormat.FormatOption.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setFormat");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if format_P /= null then format_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setFormat;
   procedure setScreen (self : access Inst; screen_P : access QtAda6.QtGui.QScreen.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setScreen");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if screen_P /= null then screen_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setScreen;
   procedure setShareContext (self : access Inst; shareContext_P : access QtAda6.QtGui.QOpenGLContext.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setShareContext");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if shareContext_P /= null then shareContext_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setShareContext;
   function shareContext (self : access Inst) return access QtAda6.QtGui.QOpenGLContext.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLContext.Class := new QtAda6.QtGui.QOpenGLContext.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shareContext");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shareContext;
   function shareGroup (self : access Inst) return access QtAda6.QtGui.QOpenGLContextGroup.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QOpenGLContextGroup.Class := new QtAda6.QtGui.QOpenGLContextGroup.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "shareGroup");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end shareGroup;
   function supportsThreadedOpenGL return bool is
      Class, Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtGui_Python_Proxy, "QOpenGLContext");
      Method := Object_GetAttrString (Class, "supportsThreadedOpenGL");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end supportsThreadedOpenGL;
   function surface (self : access Inst) return access QtAda6.QtGui.QSurface.Inst'Class is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
      Ret : constant QtAda6.QtGui.QSurface.Class := new QtAda6.QtGui.QSurface.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "surface");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end surface;
   procedure swapBuffers (self : access Inst; surface_P : access QtAda6.QtGui.QSurface.Inst'Class) is
      Method, Args, Dict, List, Tuple, Set, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "swapBuffers");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if surface_P /= null then surface_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end swapBuffers;
end QtAda6.QtGui.QOpenGLContext;
