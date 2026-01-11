@echo off
chcp 65001 >nul
pushd "%~dp0"

echo Gradioサーバーを起動中...
call .venv\Scripts\activate
start "" "http://127.0.0.1:7860"
python app.py
pause
