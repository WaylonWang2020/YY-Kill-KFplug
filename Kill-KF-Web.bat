@ECHO OFF
::WRITE BY ��ؼ��
::û��ô���棬��һ��BAT�ű�
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)
::���ϴ���������������������Ȩ��

SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%
FOR %%A IN (
app.kf.yy.com
) DO (
 echo 127.0.0.1 %%A>>%hosts%
)

echo. 

ipconfig /flushdns

echo . 