; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "findit_pi"
!define PRODUCT_VERSION "0."
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
XPStyle on
RequestExecutionLevel admin
#RequestExecutionLevel user


Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "FindIt-Setup.exe"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Czech.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\French.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\German.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Spanish.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Danish.nlf"
LoadLanguageFile "${NSISDIR}\Contrib\Language files\Polish.nlf"
; License data
; Not exactly translated, but it shows what's needed
/*LicenseLangString myLicenseData ${LANG_ENGLISH} ""
LicenseLangString myLicenseData ${LANG_DUTCH} ""
LicenseLangString myLicenseData ${LANG_FRENCH} ""
LicenseLangString myLicenseData ${LANG_GERMAN} ""
LicenseLangString myLicenseData ${LANG_KOREAN} ""
LicenseLangString myLicenseData ${LANG_RUSSIAN} ""
LicenseLangString myLicenseData ${LANG_SPANISH} ""
LicenseLangString myLicenseData ${LANG_SWEDISH} ""
LicenseLangString myLicenseData ${LANG_TRADCHINESE} ""
LicenseLangString myLicenseData ${LANG_SIMPCHINESE} ""
LicenseLangString myLicenseData ${LANG_SLOVAK} ""

LicenseData $(myLicenseData)
*/

;Name $(Name)
/*
; Directly change the inner lang strings (Same as ComponentText)
LangString ^ComponentsText ${LANG_ENGLISH} "English component page"
LangString ^ComponentsText ${LANG_DUTCH} "Dutch component page"
LangString ^ComponentsText ${LANG_FRENCH} "French component page"
LangString ^ComponentsText ${LANG_GERMAN} "German component page"
LangString ^ComponentsText ${LANG_KOREAN} "Korean component page"
LangString ^ComponentsText ${LANG_RUSSIAN} "Russian component page"
LangString ^ComponentsText ${LANG_SPANISH} "Spanish component page"
LangString ^ComponentsText ${LANG_SWEDISH} "Swedish component page"
LangString ^ComponentsText ${LANG_TRADCHINESE} "Traditional Chinese component page"
LangString ^ComponentsText ${LANG_SIMPCHINESE} "Simplified Chinese component page"
LangString ^ComponentsText ${LANG_SLOVAK} "Slovak component page"
*/
; Set one text for all languages (simply don't use a LangString)
CompletedText "FindIt completed"
/*
; A LangString for the section name
LangString Sec1Name ${LANG_ENGLISH} "English section #1"
LangString Sec1Name ${LANG_DUTCH} "Dutch section #1"
LangString Sec1Name ${LANG_FRENCH} "French section #1"
LangString Sec1Name ${LANG_GERMAN} "German section #1"
LangString Sec1Name ${LANG_KOREAN} "Korean section #1"
LangString Sec1Name ${LANG_RUSSIAN} "Russian section #1"
LangString Sec1Name ${LANG_SPANISH} "Spanish section #1"
LangString Sec1Name ${LANG_SWEDISH} "Swedish section #1"
LangString Sec1Name ${LANG_TRADCHINESE} "Trandional Chinese section #1"
LangString Sec1Name ${LANG_SIMPCHINESE} "Simplified Chinese section #1"
LangString Sec1Name ${LANG_SLOVAK} "Slovak section #1"
*/
/*
; A multilingual message
LangString Message ${LANG_ENGLISH} "English message"
LangString Message ${LANG_DUTCH} "Dutch message"
LangString Message ${LANG_FRENCH} "French message"
LangString Message ${LANG_GERMAN} "German message"
LangString Message ${LANG_KOREAN} "Korean message"
LangString Message ${LANG_RUSSIAN} "Russian message"
LangString Message ${LANG_SPANISH} "Spanish message"
LangString Message ${LANG_SWEDISH} "Swedish message"
LangString Message ${LANG_TRADCHINESE} "Trandional Chinese message"
LangString Message ${LANG_SIMPCHINESE} "Simplified Chinese message"
LangString Message ${LANG_SLOVAK} "Slovak message"
*/

#InstallDir "$PROGRAMFILES\OpenCPN"
InstallDir "$PROGRAMFILES"
Page directory
Page instfiles
Icon "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
UninstallIcon "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"
;LicenseText "Falls Sie alle Bedingungen des Abkommens akzeptieren, klicken Sie auf 'Annehmen'. Sie m�ssen die Lizenzvereinbarungen anerkennen um $(^Name) zu installieren."
;LicenseData "C:\Dokumente und Einstellungen\Konni.MICKY-6B710455C\Eigene Dateien\temp\Readme.txt"
LicenseForceSelection checkbox
ShowInstDetails show
ShowUnInstDetails show


Function .onInit
	;Language selection dialog

	Push ""
	Push ${LANG_ENGLISH}
	Push English
;	Push ${LANG_DUTCH}
;	Push Dutch
	Push ${LANG_FRENCH}
	Push French
	Push ${LANG_GERMAN}
	Push German
	Push ${LANG_POLISH}
	Push Polish
;	Push ${LANG_RUSSIAN}
;	Push Russian
	Push ${LANG_SPANISH}
	Push Spanish
;	Push ${LANG_SWEDISH}
;	Push Swedish
	Push ${LANG_DANISH}
	Push Danish
;	Push ${LANG_TRADCHINESE}
;	Push "Traditional Chinese"
;	Push ${LANG_SIMPCHINESE}
;	Push "Simplified Chinese"
	Push ${LANG_CZECH}
	Push Czech

	Push A ; A means auto count languages
	       ; for the auto count to work the first empty push (Push "") must remain
	LangDLL::LangDialog "Installer Language" "Please select the language of the installer"

	Pop $LANGUAGE
	StrCmp $LANGUAGE "cancel" 0 +2
	Abort
FunctionEnd

Section "DLL" SEC01
  SetOutPath "$INSTDIR\plugins"
  SetOverwrite on
  File "C:\Program Files (x86)\OpenCPN\plugins\findit_pi.dll"
SectionEnd

Section "Languages" SEC02
;   SetOutPath "$INSTDIR\share\locale\cs\LC_MESSAGES\"
;   File "C:\Program Files (x86)\OpenCPN\share\locale\cs\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
;   SetOutPath "$INSTDIR\share\locale\de\LC_MESSAGES\"
;   File "C:\Program Files (x86)\OpenCPN\share\locale\de\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
;   SetOutPath "$INSTDIR\share\locale\fr\LC_MESSAGES\"
;   File "C:\Program Files (x86)\OpenCPN\share\locale\fr\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
;   SetOutPath "$INSTDIR\share\locale\es\LC_MESSAGES\"
;   File "C:\Program Files (x86)\OpenCPN\share\locale\es\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
;   SetOutPath "$INSTDIR\share\locale\da\LC_MESSAGES\"
;   File "C:\Program Files (x86)\OpenCPN\share\locale\da\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
;   SetOutPath "$INSTDIR\share\locale\pl\LC_MESSAGES\"
;   File "C:\Program Files (x86)\OpenCPN\share\locale\pl\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
SectionEnd

Section "Layouts" SEC03
;  SetShellVarContext all
;  SetOutPath "$APPDATA\opencpn\plugins\logbook\data\HTMLLayouts"
;  File /r "C:\ProgramData\opencpn\plugins\logbook\data\HTMLLayouts\*.html"
;  SetOutPath "$APPDATA\opencpn\plugins\logbook\data\ODTLayouts"
;  File /r "C:\ProgramData\opencpn\plugins\logbook\data\ODTLayouts\*.odt"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\plugins\uninst_findit_pi.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\plugins\uninst_findit_pi.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfull uninstalled."
FunctionEnd

Function un.onInit
;  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Please close OpenCPN now, if it's running for a clean uninstall,$\nbut don't close this window.$\n$\nDo You like to uninstall $(^Name), all of it's components and data?" IDYES +2
;  Abort
FunctionEnd
/*
Function InstLanguageFiles
 Exch $R0 ; exclude file
 Exch
 Exch $R1 ; route dir
 Push $R2
 Push $R3

  FindFirst $R3 $R2 "$R1\*.*"
  IfErrors Exit

  Top:
;   StrCmp $R2 "." Next
   StrCmp $R2 ".." Next
;   StrCmp $R2 $R0 Next
   IfFileExists "$R1\$R2\LC_MESSAGES\opencpn-logbookkonni_pi.mo"  Inst Next

   #Goto Exit ;uncomment this to stop it being recursive (delete only one file)

   Inst:
 ;   detailprint "$R1\$R2\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
    SetOutPath $R1\$R2\LC_MESSAGES
    File "opencpn-logbookkonni*.*"
   Next:
    ClearErrors
    FindNext $R3 $R2
    IfErrors Exit
   Goto Top

  Exit:
  FindClose $R3

 Pop $R3
 Pop $R2
 Pop $R1
 Pop $R0
FunctionEnd
*/
/*
Function un.RmLanguageFiles
 Exch $R0 ; exclude file
 Exch
 Exch $R1 ; route dir
 Push $R2
 Push $R3

  FindFirst $R3 $R2 "$R1\*.*"
  IfErrors Exit

  Top:
;   StrCmp $R2 "." Next
   StrCmp $R2 ".." Next
;   StrCmp $R2 $R0 Next
   IfFileExists "$R1\$R2\LC_MESSAGES\opencpn-logbookkonni_pi.mo"  Del

   #Goto Exit ;uncomment this to stop it being recursive (delete only one file)

   Del:
;    detailprint "$R1\$R2\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
    Delete "$R1\$R2\LC_MESSAGES\opencpn-logbookkonni_pi.mo"
   Next:
    ClearErrors
    FindNext $R3 $R2
    IfErrors Exit
   Goto Top

  Exit:
  FindClose $R3

 Pop $R3
 Pop $R2
 Pop $R1
 Pop $R0
FunctionEnd
*/
Section Uninstall
  SetShellVarContext all
  RMDir /r $APPDATA\opencpn\plugins\findit
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/OverviewGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/ServiceGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/RepairsGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/BuyPartsGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/NavGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/WeatherGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/MotorGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/CrewGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/WakeGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/Logbook/EquipGridColWidth
;  DeleteINISec $APPDATA\opencpn\opencpn.ini PlugIns/LogbookKonni

;  Push "$PROGRAMFILES\OpenCPN\share\locale"
;  Push "file to exclude"
;  Call un.RmLanguageFiles
;  Delete "$PROGRAMFILES\opencpn-logbookkonni_pi.mo"

  Delete $INSTDIR\findit_pi.dll
  Delete $INSTDIR\uninst_findit_pi.exe


  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  SetAutoClose false
SectionEnd