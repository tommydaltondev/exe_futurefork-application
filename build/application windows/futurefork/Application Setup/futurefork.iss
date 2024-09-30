[Setup]
AppName=Future Fork
AppVerName=Future Fork 1.0
AppPublisher=Jonathan Petersen and Tommy Dalton
AppPublisherURL=http://rootleveldevelopment.com/futurefork/
AppSupportURL=rootleveldesign@gmail.com
AppUpdatesURL=http://rootleveldevelopment.com/futurefork/
DefaultDirName={pf}\Future Fork
DefaultGroupName=Future Fork
AllowNoIcons=yes
Uninstallable=yes
LicenseFile=
InfoBeforeFile=
InfoAfterFile=
ShowLanguageDialog=no
Compression=lzma
; WizardStyle=modern

[Tasks]
Name: "uninstall"; Description: "Create a &uninstall shortcut"; GroupDescription: "Create shortcuts:"; 
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Create shortcuts:"; MinVersion: 4,4; 

[Files]
Source: "A:\__CLIENTS\ACTIVE\0000-FutureFork\Workfiles\FutureFork_AS3\application windows\futurefork\Application\futurefork.exe"; DestDir: "{app}"; Flags: promptifolder

[INI]
Filename: "{app}\futurefork.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://rootleveldevelopment.com/futurefork/"

[Icons]
Name: "{group}\Future Fork"; Filename: "{app}\futurefork.exe"
Name: "{group}\Uninstall Future Fork"; Filename: "{uninstallexe}"; Flags: createonlyiffileexists; Tasks: uninstall
Name: "{userdesktop}\Future Fork"; Filename: "{app}\futurefork.exe"; MinVersion: 4,4; Tasks: desktopicon

[UninstallDelete]
Type: files; Name: "{app}\futurefork.url"
[Messages]
BeveledLabel=Inno Setup

