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

cd /d %windir%\System32\drivers\etc
 
set U1=127.0.0.1 app.kf.yy.com
set U2=127.0.0.1 template.dl.yy.com
set U3=127.0.0.1 template2.dl.yy.com

findstr /v /c:"%U1%" "hosts">"hosts.tmp1"
findstr /v /c:"%U2%" "hosts.tmp1">"hosts.tmp2"
findstr /v /c:"%U3%" "hosts.tmp2">"hosts"
del "hosts.tmp*"