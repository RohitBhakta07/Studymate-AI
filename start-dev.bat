@echo off
title StudyMate AI Launcher
echo ========================================
echo    Starting StudyMate AI Development
echo ========================================
echo.

echo [1/2] Starting Backend Server (FastAPI on http://127.0.0.1:8000)...
start "StudyMate Backend (FastAPI)" cmd /k "cd /d %~dp0backend && .venv\Scripts\python.exe -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload"

timeout /t 2 /nobreak >nul

echo [2/2] Starting Frontend Server (Vite on http://127.0.0.1:5173)...
start "StudyMate Frontend (Vite)" cmd /k "cd /d %~dp0frontend && npm run dev"

echo.
echo ========================================
echo Both servers started in separate windows!
echo - Frontend: http://localhost:5173
echo - Backend:  http://localhost:8000
echo ========================================
echo.
pause
