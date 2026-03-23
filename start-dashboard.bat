@echo off
title TwinScale Dashboard
cd /d C:\Users\st4rf\Desktop\Twinscale
echo.
echo  Starting TwinScale Location Intelligence...
echo  Opening http://localhost:3000
echo.
start "" http://localhost:3000
node node_modules/next/dist/bin/next dev
