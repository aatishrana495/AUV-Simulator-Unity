; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AUV Simulator"
#define MyAppVersion "1.0"
#define MyAppPublisher "TIBURON NITRKL"
#define MyAppURL "https://auvnitrkl.github.io/"
#define MyAppExeName "AUV Simulator.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1CBF083F-58F9-4EEC-9BCB-720513D8F5A9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\installer
OutputBaseFilename=AUV Simulator setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\AUV Simulator\AUV Simulator.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\AUV Simulator\UnityCrashHandler64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\AUV Simulator\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\AUV Simulator\How To.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\AUV Simulator\AUV Simulator_Data\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\Lafith\Desktop\UNITY FILES\AUV-Simulator\Builds\Windows\AUV Simulator\Mono\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
