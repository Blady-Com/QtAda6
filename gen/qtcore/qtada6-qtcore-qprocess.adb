-------------------------------------------------------------------------------
-- NAME (body)                  : qtada6-qtcore-qprocess.adb
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : Qt Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2024
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
with Py; use Py;
with Ada.Unchecked_Deallocation;
with QtAda6.QtCore.Signal;
with QtAda6.QtCore.QObject;
with QtAda6.QtCore.QProcess.ProcessChannel;
with QtAda6.QtCore.QProcess.ProcessError;
with QtAda6.QtCore.QProcess.ExitStatus;
with QtAda6.QtCore.QProcess.InputChannelMode;
with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
with QtAda6.QtCore.QProcess.ProcessChannelMode;
with QtAda6.QtCore.QProcessEnvironment;
with QtAda6.QtCore.QByteArray;
with QtAda6.QtCore.QProcess.ProcessState;
with QtAda6.QtCore.QProcess;
package body QtAda6.QtCore.QProcess is
   use type QtAda6.int;
   use type QtAda6.float;
   use type QtAda6.str;
   procedure Finalize (Self : in out Class) is
      procedure Free is new Ada.Unchecked_Deallocation (Inst, Inst_Access);
   begin
      Py.Invalidate (Self.Python_Proxy);
      Free (Inst_Access (Self));
   end Finalize;
   function errorOccurred (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "errorOccurred"));
   end errorOccurred;
   function finished (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "finished"));
   end finished;
   function readyReadStandardError (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "readyReadStandardError"));
   end readyReadStandardError;
   function readyReadStandardOutput (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return
        new QtAda6.QtCore.Signal.Inst'
          (Python_Proxy => Object_GetAttrString (self.Python_Proxy, "readyReadStandardOutput"));
   end readyReadStandardOutput;
   function started (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "started"));
   end started;
   function stateChanged (self : access Inst) return access QtAda6.QtCore.Signal.Inst'Class is
   begin
      return new QtAda6.QtCore.Signal.Inst'(Python_Proxy => Object_GetAttrString (self.Python_Proxy, "stateChanged"));
   end stateChanged;
   function Create (parent_P : access QtAda6.QtCore.QObject.Inst'Class := null) return Class is
      Class, Args, Dict, List, Tuple : Handle;
   begin
      Class := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QProcess");
      Args  := Tuple_New (0);
      Dict  := Dict_New;
      if parent_P /= null then
         Dict_SetItemString (Dict, "parent", parent_P.Python_Proxy);
      end if;
      return new Inst'(Python_Proxy => Object_Call (Class, Args, Dict, True));
   end Create;
   function arguments (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "arguments");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end arguments;
   function bytesToWrite (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "bytesToWrite");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end bytesToWrite;
   procedure close (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "close");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end close;
   procedure closeReadChannel (self : access Inst; channel_P : access QtAda6.QtCore.QProcess.ProcessChannel.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeReadChannel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if channel_P /= null then channel_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end closeReadChannel;
   procedure closeWriteChannel (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "closeWriteChannel");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end closeWriteChannel;
   function environment (self : access Inst) return LIST_str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "environment");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end environment;
   function error (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessError.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QProcess.ProcessError.Class := new QtAda6.QtCore.QProcess.ProcessError.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "error");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end error;
   function execute (program_P : str; arguments_P : SEQUENCE_str := (2 .. 1 => <>)) return int is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QProcess");
      Method := Object_GetAttrString (Class, "execute");
      List   := List_New (arguments_P'Length);
      for ind in arguments_P'Range loop
         List_SetItem (List, ssize_t (ind - arguments_P'First), Unicode_FromString (arguments_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (program_P));
      Dict := Dict_New;
      if arguments_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "arguments", List);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end execute;
   function exitCode (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "exitCode");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end exitCode;
   function exitStatus_F (self : access Inst) return access QtAda6.QtCore.QProcess.ExitStatus.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QProcess.ExitStatus.Class := new QtAda6.QtCore.QProcess.ExitStatus.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "exitStatus");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end exitStatus_F;
   function inputChannelMode_F (self : access Inst) return access QtAda6.QtCore.QProcess.InputChannelMode.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QProcess.InputChannelMode.Class := new QtAda6.QtCore.QProcess.InputChannelMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "inputChannelMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end inputChannelMode_F;
   function isSequential (self : access Inst) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "isSequential");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end isSequential;
   procedure kill (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "kill");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end kill;
   function nullDevice return str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QProcess");
      Method := Object_GetAttrString (Class, "nullDevice");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end nullDevice;
   function open
     (self : access Inst; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null) return bool
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "open");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end open;
   function processChannelMode_F (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessChannelMode.Inst'Class
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret                                     : constant QtAda6.QtCore.QProcess.ProcessChannelMode.Class :=
        new QtAda6.QtCore.QProcess.ProcessChannelMode.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "processChannelMode");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end processChannelMode_F;
   function processEnvironment (self : access Inst) return access QtAda6.QtCore.QProcessEnvironment.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QProcessEnvironment.Class := new QtAda6.QtCore.QProcessEnvironment.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "processEnvironment");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end processEnvironment;
   function processId (self : access Inst) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "processId");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end processId;
   function program (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "program");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end program;
   function readAllStandardError (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readAllStandardError");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readAllStandardError;
   function readAllStandardOutput (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QByteArray.Class := new QtAda6.QtCore.QByteArray.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readAllStandardOutput");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readAllStandardOutput;
   function readChannel (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessChannel.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QProcess.ProcessChannel.Class := new QtAda6.QtCore.QProcess.ProcessChannel.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "readChannel");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end readChannel;
   function readData (self : access Inst; maxlen_P : int) return access Object'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "readData");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Long_FromLong (maxlen_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return null;
   end readData;
   procedure setArguments (self : access Inst; arguments_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setArguments");
      List   := List_New (arguments_P'Length);
      for ind in arguments_P'Range loop
         List_SetItem (List, ssize_t (ind - arguments_P'First), Unicode_FromString (arguments_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setArguments;
   procedure setEnvironment (self : access Inst; environment_P : SEQUENCE_str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setEnvironment");
      List   := List_New (environment_P'Length);
      for ind in environment_P'Range loop
         List_SetItem (List, ssize_t (ind - environment_P'First), Unicode_FromString (environment_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, List);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setEnvironment;
   procedure setInputChannelMode
     (self : access Inst; mode_P : access QtAda6.QtCore.QProcess.InputChannelMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setInputChannelMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setInputChannelMode;
   procedure setProcessChannelMode
     (self : access Inst; mode_P : access QtAda6.QtCore.QProcess.ProcessChannelMode.Inst'Class)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProcessChannelMode");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if mode_P /= null then mode_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setProcessChannelMode;
   procedure setProcessEnvironment
     (self          : access Inst;
      environment_P : UNION_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProcessEnvironment");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if environment_P /= null then environment_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setProcessEnvironment;
   procedure setProcessState (self : access Inst; state_P : access QtAda6.QtCore.QProcess.ProcessState.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProcessState");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if state_P /= null then state_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setProcessState;
   procedure setProgram (self : access Inst; program_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setProgram");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (program_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setProgram;
   procedure setReadChannel (self : access Inst; channel_P : access QtAda6.QtCore.QProcess.ProcessChannel.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setReadChannel");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if channel_P /= null then channel_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setReadChannel;
   procedure setStandardErrorFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStandardErrorFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardErrorFile;
   procedure setStandardInputFile (self : access Inst; fileName_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStandardInputFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardInputFile;
   procedure setStandardOutputFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStandardOutputFile");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (fileName_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardOutputFile;
   procedure setStandardOutputProcess (self : access Inst; destination_P : access QtAda6.QtCore.QProcess.Inst'Class) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setStandardOutputProcess");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, (if destination_P /= null then destination_P.Python_Proxy else No_Value));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setStandardOutputProcess;
   procedure setWorkingDirectory (self : access Inst; dir_P : str) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "setWorkingDirectory");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (dir_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end setWorkingDirectory;
   function splitCommand (command_P : str) return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QProcess");
      Method := Object_GetAttrString (Class, "splitCommand");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (command_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end splitCommand;
   procedure start (self : access Inst; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end start;
   procedure start
     (self   : access Inst; program_P : str; arguments_P : SEQUENCE_str := (2 .. 1 => <>);
      mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "start");
      List   := List_New (arguments_P'Length);
      for ind in arguments_P'Range loop
         List_SetItem (List, ssize_t (ind - arguments_P'First), Unicode_FromString (arguments_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (program_P));
      Dict := Dict_New;
      if arguments_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "arguments", List);
      end if;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end start;
   procedure startCommand
     (self : access Inst; command_P : str; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class := null)
   is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startCommand");
      Args   := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (command_P));
      Dict := Dict_New;
      if mode_P /= null then
         Dict_SetItemString (Dict, "mode", mode_P.Python_Proxy);
      end if;
      Result := Object_Call (Method, Args, Dict, True);
   end startCommand;
   function startDetached
     (program_P : str; arguments_P : SEQUENCE_str := (2 .. 1 => <>); workingDirectory_P : str := "") return TUPLE
   is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QProcess");
      Method := Object_GetAttrString (Class, "startDetached");
      List   := List_New (arguments_P'Length);
      for ind in arguments_P'Range loop
         List_SetItem (List, ssize_t (ind - arguments_P'First), Unicode_FromString (arguments_P (ind)));
      end loop;
      Args := Tuple_New (1);
      Tuple_SetItem (Args, 0, Unicode_FromString (program_P));
      Dict := Dict_New;
      if arguments_P /= (2 .. 1 => <>) then
         Dict_SetItemString (Dict, "arguments", List);
      end if;
      if workingDirectory_P /= "" then
         Dict_SetItemString (Dict, "workingDirectory", Unicode_FromString (workingDirectory_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return (null record);
   end startDetached;
   function startDetached (self : access Inst) return TUPLE_bool_int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "startDetached");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Ret : TUPLE_bool_int do
         Ret.C0 := To_Ada (Tuple_GetItem (Result, 0));
         Ret.C1 := Long_AsLong (Tuple_GetItem (Result, 1));
      end return;
   end startDetached;
   function state (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessState.Inst'Class is
      Method, Args, Dict, List, Tuple, Result : Handle;
      Ret : constant QtAda6.QtCore.QProcess.ProcessState.Class := new QtAda6.QtCore.QProcess.ProcessState.Inst;
   begin
      Method           := Object_GetAttrString (self.Python_Proxy, "state");
      Args             := Tuple_New (0);
      Dict             := Dict_New;
      Result           := Object_Call (Method, Args, Dict, True);
      Ret.Python_Proxy := Result;
      return Ret;
   end state;
   function systemEnvironment return LIST_str is
      Class, Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Class  := Object_GetAttrString (QtAda6.QtCore_Python_Proxy, "QProcess");
      Method := Object_GetAttrString (Class, "systemEnvironment");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return (2 .. 1 => <>);
   end systemEnvironment;
   procedure terminate_K (self : access Inst) is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "terminate");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
   end terminate_K;
   function waitForBytesWritten (self : access Inst; msecs_P : int := 0) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForBytesWritten");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if msecs_P /= 0 then
         Dict_SetItemString (Dict, "msecs", Long_FromLong (msecs_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end waitForBytesWritten;
   function waitForFinished (self : access Inst; msecs_P : int := 0) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForFinished");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if msecs_P /= 0 then
         Dict_SetItemString (Dict, "msecs", Long_FromLong (msecs_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end waitForFinished;
   function waitForReadyRead (self : access Inst; msecs_P : int := 0) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForReadyRead");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if msecs_P /= 0 then
         Dict_SetItemString (Dict, "msecs", Long_FromLong (msecs_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end waitForReadyRead;
   function waitForStarted (self : access Inst; msecs_P : int := 0) return bool is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "waitForStarted");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      if msecs_P /= 0 then
         Dict_SetItemString (Dict, "msecs", Long_FromLong (msecs_P));
      end if;
      Result := Object_Call (Method, Args, Dict, True);
      return To_Ada (Result);
   end waitForStarted;
   function workingDirectory (self : access Inst) return str is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "workingDirectory");
      Args   := Tuple_New (0);
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return As_String (Result);
   end workingDirectory;
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int is
      Method, Args, Dict, List, Tuple, Result : Handle;
   begin
      Method := Object_GetAttrString (self.Python_Proxy, "writeData");
      Args   := Tuple_New (2);
      Tuple_SetItem (Args, 0, Bytes_FromString (String (data_P)));
      Tuple_SetItem (Args, 1, Long_FromLong (len_P));
      Dict   := Dict_New;
      Result := Object_Call (Method, Args, Dict, True);
      return Long_AsLong (Result);
   end writeData;
end QtAda6.QtCore.QProcess;
