-------------------------------------------------------------------------------
-- NAME (spec)                  : qtada6-qtcore-qprocess.ads
-- AUTHOR                       : Pascal Pignard
-- ROLE                         : QtAda6 Core module provides non-GUI functionality
-- NOTES                        : Ada 2012, Simple Components, UXStrings, PySide
--
-- COPYRIGHT                    : (c) Pascal Pignard 2023
-- LICENCE                      : CeCILL V2.1 (https://cecill.info)
-- CONTACT                      : http://blady.pagesperso-orange.fr
-------------------------------------------------------------------------------
limited with QtAda6.QtCore.QObject;
limited with QtAda6.QtCore.QProcess.ProcessChannel;
limited with QtAda6.QtCore.QProcess.ProcessError;
limited with QtAda6.QtCore.QProcess.ExitStatus;
limited with QtAda6.QtCore.QProcess.InputChannelMode;
limited with QtAda6.QtCore.QIODeviceBase.OpenModeFlag;
limited with QtAda6.QtCore.QProcess.ProcessChannelMode;
limited with QtAda6.QtCore.QProcessEnvironment;
limited with QtAda6.QtCore.QByteArray;
limited with QtAda6.QtCore.QProcessEnvironment.Initialization;
limited with QtAda6.QtCore.QProcess.ProcessState;
with QtAda6.QtCore.QIODevice;
package QtAda6.QtCore.QProcess is
   type ClassVar_Signal is access Any;
   type Optional_QtAda6_QtCore_QObject is access Any;
   type List_str is access Any;
   type Sequence_str is access Any;
   type Union_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization is access Any;
   type Tuple_bool_int is access Any;
   type Inst;
   type Inst_Access is access all Inst;
   type Class is access all Inst'Class;
   type Inst is new QtAda6.QtCore.QIODevice.Inst with null record;
   procedure Finalize (Self : in out Class);
   errorOccurred           : ClassVar_Signal;-- errorOccurred(QProcess::ProcessError)
   finished                : ClassVar_Signal;-- finished(int,QProcess::ExitStatus)
   readyReadStandardError  : ClassVar_Signal;-- readyReadStandardError()
   readyReadStandardOutput : ClassVar_Signal;-- readyReadStandardOutput()
   started                 : ClassVar_Signal;-- started()
   stateChanged            : ClassVar_Signal;-- stateChanged(QProcess::ProcessState)
   function Create (parent_P : Optional_QtAda6_QtCore_QObject) return Class;
   function arguments (self : access Inst) return List_str;
   function bytesToWrite (self : access Inst) return int;
   procedure close (self : access Inst);
   procedure closeReadChannel (self : access Inst; channel_P : access QtAda6.QtCore.QProcess.ProcessChannel.Inst'Class);
   procedure closeWriteChannel (self : access Inst);
   function environment (self : access Inst) return List_str;
   function error_F (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessError.Inst'Class;
   function execute (program_P : str; arguments_P : Sequence_str) return int;
   function exitCode (self : access Inst) return int;
   function exitStatus_F (self : access Inst) return access QtAda6.QtCore.QProcess.ExitStatus.Inst'Class;
   function inputChannelMode_F (self : access Inst) return access QtAda6.QtCore.QProcess.InputChannelMode.Inst'Class;
   function isSequential (self : access Inst) return bool;
   procedure kill (self : access Inst);
   function nullDevice return str;
   function open (self : access Inst; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class) return bool;
   function processChannelMode_F
     (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessChannelMode.Inst'Class;
   function processEnvironment (self : access Inst) return access QtAda6.QtCore.QProcessEnvironment.Inst'Class;
   function processId (self : access Inst) return int;
   function program (self : access Inst) return str;
   function readAllStandardError (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function readAllStandardOutput (self : access Inst) return access QtAda6.QtCore.QByteArray.Inst'Class;
   function readChannel (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessChannel.Inst'Class;
   function readData (self : access Inst; maxlen_P : int) return Object;
   procedure setArguments (self : access Inst; arguments_P : Sequence_str);
   procedure setEnvironment (self : access Inst; environment_P : Sequence_str);
   procedure setInputChannelMode
     (self : access Inst; mode_P : access QtAda6.QtCore.QProcess.InputChannelMode.Inst'Class);
   procedure setProcessChannelMode
     (self : access Inst; mode_P : access QtAda6.QtCore.QProcess.ProcessChannelMode.Inst'Class);
   procedure setProcessEnvironment
     (self          : access Inst;
      environment_P : Union_QtAda6_QtCore_QProcessEnvironment_QtAda6_QtCore_QProcessEnvironment_Initialization);
   procedure setProcessState (self : access Inst; state_P : access QtAda6.QtCore.QProcess.ProcessState.Inst'Class);
   procedure setProgram (self : access Inst; program_P : str);
   procedure setReadChannel (self : access Inst; channel_P : access QtAda6.QtCore.QProcess.ProcessChannel.Inst'Class);
   procedure setStandardErrorFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class);
   procedure setStandardInputFile (self : access Inst; fileName_P : str);
   procedure setStandardOutputFile
     (self : access Inst; fileName_P : str; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class);
   procedure setStandardOutputProcess (self : access Inst; destination_P : access QtAda6.QtCore.QProcess.Inst'Class);
   procedure setWorkingDirectory (self : access Inst; dir_P : str);
   function splitCommand (command_P : str) return List_str;
   procedure start (self : access Inst; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class);
   procedure start
     (self   : access Inst; program_P : str; arguments_P : Sequence_str;
      mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class);
   procedure startCommand
     (self : access Inst; command_P : str; mode_P : access QtAda6.QtCore.QIODeviceBase.OpenModeFlag.Inst'Class);
   function startDetached (program_P : str; arguments_P : Sequence_str; workingDirectory_P : str) return Tuple;
   function startDetached (self : access Inst) return Tuple_bool_int;
   function state_F (self : access Inst) return access QtAda6.QtCore.QProcess.ProcessState.Inst'Class;
   function systemEnvironment return List_str;
   procedure terminate_K (self : access Inst);
   function waitForBytesWritten (self : access Inst; msecs_P : int) return bool;
   function waitForFinished (self : access Inst; msecs_P : int) return bool;
   function waitForReadyRead (self : access Inst; msecs_P : int) return bool;
   function waitForStarted (self : access Inst; msecs_P : int) return bool;
   function workingDirectory (self : access Inst) return str;
   function writeData (self : access Inst; data_P : bytes; len_P : int) return int;
end QtAda6.QtCore.QProcess;
