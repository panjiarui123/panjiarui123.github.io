@echo off
:: 1. 强制将命令行路径切换到当前 .bat 文件所在的文件夹
cd /d "%~dp0"

:: 2. 执行 Git 上传老三样
git add .
git commit -m "自动更新：主页优化"
git push origin main --force

:: 3. 让窗口保持打开，方便看成功提示
echo ==== 部署完成，请查看上方是否有报错！ ====
pause
