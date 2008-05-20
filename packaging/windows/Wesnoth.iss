; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Battle for Wesnoth
AppVerName=Battle for Wesnoth 1.4.2
AppPublisher=David White
AppPublisherURL=http://www.wesnoth.org
AppSupportURL=http://www.wesnoth.org
AppUpdatesURL=http://www.wesnoth.org
DefaultDirName={pf}\Wesnoth 1.4.2
DefaultGroupName=Wesnoth 1.4.2
LicenseFile=C:\Entwicklung\Wesnoth\Release 1.4.2\COPYING
OutputBaseFilename=wesnoth-1.4.2-windows
OutputDir=C:\Entwicklung\Wesnoth\Temp
Compression=lzma
SolidCompression=yes
SourceDir=C:\Entwicklung\Wesnoth\Release 1.4.2
UsePreviousAppDir=no
UsePreviousGroup=no
WizardImageFile=C:\Entwicklung\Wesnoth\Wesnoth_SVN_Work\packaging\windows\WindowsInstallerGraphic.bmp
WizardSmallImageFile=C:\Entwicklung\Wesnoth\Wesnoth_SVN_Work\packaging\windows\windows_installer_w_881.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "Main"

[Icons]
Name: "{group}\Battle for Wesnoth (Fullscreen, Safe Mode)"; Filename: "{app}\wesnoth.exe"; Parameters: "--fullscreen"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Main"
Name: "{group}\Battle for Wesnoth (Fullscreen)"; Filename: "{app}\wesnoth_i486.exe"; Parameters: "--fullscreen"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\486"
Name: "{group}\Battle for Wesnoth (Fullscreen)"; Filename: "{app}\wesnoth_p2.exe"; Parameters: "--fullscreen"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\P2"
Name: "{group}\Battle for Wesnoth (Fullscreen)"; Filename: "{app}\wesnoth_p4.exe"; Parameters: "--fullscreen"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\P4"
Name: "{group}\Battle for Wesnoth (Fullscreen)"; Filename: "{app}\wesnoth_k6.exe"; Parameters: "--fullscreen"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\K6"
Name: "{group}\Battle for Wesnoth (Fullscreen)"; Filename: "{app}\wesnoth_athlon.exe"; Parameters: "--fullscreen"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\Athlon"
Name: "{group}\Battle for Wesnoth (Windowed, Safe Mode)"; Filename: "{app}\wesnoth.exe"; Parameters: "--windowed"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Main";
Name: "{group}\Battle for Wesnoth (Windowed)"; Filename: "{app}\wesnoth_i486.exe"; Parameters: "--windowed"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\486"
Name: "{group}\Battle for Wesnoth (Windowed)"; Filename: "{app}\wesnoth_p2.exe"; Parameters: "--windowed"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\P2"
Name: "{group}\Battle for Wesnoth (Windowed)"; Filename: "{app}\wesnoth_p4.exe"; Parameters: "--windowed"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\P4"
Name: "{group}\Battle for Wesnoth (Windowed)"; Filename: "{app}\wesnoth_k6.exe"; Parameters: "--windowed"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\K6"
Name: "{group}\Battle for Wesnoth (Windowed)"; Filename: "{app}\wesnoth_athlon.exe"; Parameters: "--windowed"; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\Athlon"
Name: "{group}\Map Editor (Safe Mode)"; Filename: "{app}\editor.exe"; WorkingDir: "{app}"; IconFilename: "{app}\editor.ico"; Components: "Main"
Name: "{group}\Map Editor"; Filename: "{app}\editor_i486.exe"; WorkingDir: "{app}"; IconFilename: "{app}\editor.ico"; Components: "Processor\486"
Name: "{group}\Map Editor"; Filename: "{app}\editor_p2.exe"; WorkingDir: "{app}"; IconFilename: "{app}\editor.ico"; Components: "Processor\P2"
Name: "{group}\Map Editor"; Filename: "{app}\editor_p4.exe"; WorkingDir: "{app}"; IconFilename: "{app}\editor.ico"; Components: "Processor\P4"
Name: "{group}\Map Editor"; Filename: "{app}\editor_k6.exe"; WorkingDir: "{app}"; IconFilename: "{app}\editor.ico"; Components: "Processor\K6"
Name: "{group}\Map Editor"; Filename: "{app}\editor_athlon.exe"; WorkingDir: "{app}"; IconFilename: "{app}\editor.ico"; Components: "Processor\Athlon"
Name: "{group}\Multiplayer Server (Safe Mode)"; Filename: "{app}\wesnothd.exe"; WorkingDir: "{app}"; Components: "Main"
Name: "{group}\Multiplayer Server"; Filename: "{app}\wesnothd_i486.exe"; WorkingDir: "{app}"; Components: "Processor\486"
Name: "{group}\Multiplayer Server"; Filename: "{app}\wesnothd_p2.exe"; WorkingDir: "{app}"; Components: "Processor\P2"
Name: "{group}\Multiplayer Server"; Filename: "{app}\wesnothd_p4.exe"; WorkingDir: "{app}"; Components: "Processor\P4"
Name: "{group}\Multiplayer Server"; Filename: "{app}\wesnothd_k6.exe"; WorkingDir: "{app}"; Components: "Processor\K6"
Name: "{group}\Multiplayer Server"; Filename: "{app}\wesnothd_athlon.exe"; WorkingDir: "{app}"; Components: "Processor\Athlon"
Name: "{group}\Manual"; Filename: "{app}\manual_html\manual.en.html"; WorkingDir: "{app}"; Components: "Main"
Name: "{group}\Uninstall Battle for Wesnoth"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Battle for Wesnoth"; Filename: "{app}\wesnoth_i486.exe"; Tasks: desktopicon; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\486"
Name: "{userdesktop}\Battle for Wesnoth"; Filename: "{app}\wesnoth_p2.exe"; Tasks: desktopicon; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\P2"
Name: "{userdesktop}\Battle for Wesnoth"; Filename: "{app}\wesnoth_p4.exe"; Tasks: desktopicon; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\P4"
Name: "{userdesktop}\Battle for Wesnoth"; Filename: "{app}\wesnoth_k6.exe"; Tasks: desktopicon; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\K6"
Name: "{userdesktop}\Battle for Wesnoth"; Filename: "{app}\wesnoth_athlon.exe"; Tasks: desktopicon; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Processor\Athlon"
Name: "{userdesktop}\Battle for Wesnoth (Safe Mode)"; Filename: "{app}\wesnoth.exe"; Tasks: desktopicon; WorkingDir: "{app}"; IconFilename: "{app}\wesnoth.ico"; Components: "Main"

[Run]
Filename: "{app}\wesnoth_i486.exe"; Description: "Launch Battle for Wesnoth"; Flags: nowait postinstall skipifsilent; WorkingDir: "{app}"; Components: "Processor\486"
Filename: "{app}\wesnoth_p2.exe"; Description: "Launch Battle for Wesnoth"; Flags: nowait postinstall skipifsilent; WorkingDir: "{app}"; Components: "Processor\P2"
Filename: "{app}\wesnoth_p4.exe"; Description: "Launch Battle for Wesnoth"; Flags: nowait postinstall skipifsilent; WorkingDir: "{app}"; Components: "Processor\P4"
Filename: "{app}\wesnoth_k6.exe"; Description: "Launch Battle for Wesnoth"; Flags: nowait postinstall skipifsilent; WorkingDir: "{app}"; Components: "Processor\K6"
Filename: "{app}\wesnoth_athlon.exe"; Description: "Launch Battle for Wesnoth"; Flags: nowait postinstall skipifsilent; WorkingDir: "{app}"; Components: "Processor\Athlon"

[Types]
Name: "full"; Description: "Wesnoth complete installation"; Flags: iscustom

[Components]
Name: "Main"; Description: "Main Application"; Types: full; Flags: fixed
Name: "Processor"; Description: "Processor Optimization"; Types: full; Flags: fixed
Name: "Processor\All"; Description: "Safe Mode"; Types: full; Flags: fixed
Name: "Processor\486"; Description: "Intel 486"; Types: full; Flags: exclusive
Name: "Processor\P2"; Description: "Intel Pentium 2"; Types: full; Flags: exclusive
Name: "Processor\P4"; Description: "Intel Pentium 4"; Types: full; Flags: exclusive
Name: "Processor\K6"; Description: "AMD K6"; Types: full; Flags: exclusive
Name: "Processor\Athlon"; Description: "AMD Athlon"; Types: full; Flags: exclusive

