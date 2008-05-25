[Setup]
AppName=TakeNote
AppVerName=TakeNote 1.0
AppPublisher=me
AppPublisherURL=http://people.csail.mit.edu/rasmus/takenote
DefaultDirName={pf}\TakeNote
DefaultGroupName=TakeNote
DisableProgramGroupPage=true
OutputBaseFilename=takenote-1.0
Compression=lzma
SolidCompression=true
AllowUNCPath=false
VersionInfoVersion=1.0
VersionInfoCompany=Matt Rasmussen
VersionInfoDescription=TakeNote
; PrivilegeRequired=admin

[Dirs]
Name: {app}; Flags: uninsalwaysuninstall;

[Files]
Source: dist\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: {group}\TakeNote; Filename: {app}\takenote.exe; WorkingDir: {app}

[Run]
Filename: {app}\takenote.exe; Description: {cm:LaunchProgram,takenote}; Flags: nowait postinstall skipifsilent