@echo off
chcp 65001 >nul
setlocal

pushd "%~dp0"

rem 既存の仮想環境が存在する場合は削除
if exist .venv (
    echo 既存の仮想環境を削除中...
    rmdir /s /q .venv
)

echo 新しい仮想環境を作成中（Python 3.9）...
uv venv --python 3.9

echo 仮想環境をアクティベート中...
call .venv\Scripts\activate

echo.
echo ----------------------------------------------------------------------
echo pipをインストール中...
echo ----------------------------------------------------------------------
uv pip install pip

echo.
echo ----------------------------------------------------------------------
echo 基本パッケージをインストール中...
echo ----------------------------------------------------------------------
uv pip install -r requirements.txt

pause