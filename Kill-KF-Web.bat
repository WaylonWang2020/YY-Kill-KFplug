@ECHO OFF
::WRITE BY 文丶心
::没那么神奇，就一个BAT脚本
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)
::以上代码用于在批处理中提升权限

SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%
FOR %%A IN (
app.kf.yy.com
) DO (
 echo 127.0.0.1 %%A>>%hosts%
)

echo. & echo 已屏蔽客服模板WEB界面显示.

ipconfig /flushdns

echo . 