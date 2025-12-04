@echo off
REM =================================================================================
REM  Flux-AI-Pro - 純免費模式部署腳本 (Windows)
REM  版本: v9.0.0
REM  模式: 開發環境 (僅 Pollinations.ai - 100%% 免費)
REM =================================================================================

chcp 65001 >nul
cls

echo ================================================================
echo 🎨 Flux-AI-Pro v9.0.0 - 純免費模式部署
echo ================================================================
echo.
echo 📋 部署配置:
echo   • 提供商: Pollinations.ai (免費)
echo   • 模型數量: 17 個
echo   • 風格預設: 12 種
echo   • Cloudflare AI: 禁用
echo   • 成本: 100%% 免費
echo.
echo ================================================================
echo.

REM 步驟 1: 檢查 Node.js
echo [1/5] 🔍 檢查 Node.js...
node -v >nul 2>&1
if errorlevel 1 (
    echo ❌ 錯誤: 未安裝 Node.js
    echo 請訪問 https://nodejs.org/ 下載安裝
    pause
    exit /b 1
)
for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
echo ✅ Node.js 版本: %NODE_VERSION%
echo.

REM 步驟 2: 檢查/安裝 Wrangler
echo [2/5] 🔍 檢查 Wrangler CLI...
wrangler --version >nul 2>&1
if errorlevel 1 (
    echo ⚠️  未檢測到 Wrangler，正在安裝...
    call npm install -g wrangler
    if errorlevel 1 (
        echo ❌ Wrangler 安裝失敗
        pause
        exit /b 1
    )
    echo ✅ Wrangler 安裝完成
) else (
    for /f "tokens=*" %%i in ('wrangler --version') do set WRANGLER_VERSION=%%i
    echo ✅ Wrangler 版本: %WRANGLER_VERSION%
)
echo.

REM 步驟 3: 登錄 Cloudflare
echo [3/5] 🔐 登錄 Cloudflare...
echo ⏳ 即將打開瀏覽器進行授權...
call wrangler login
if errorlevel 1 (
    echo ❌ 登錄失敗
    pause
    exit /b 1
)
echo ✅ 登錄成功
echo.

REM 步驟 4: 部署到開發環境
echo [4/5] 🚀 部署到開發環境 (純免費模式)...
echo ⏳ 正在部署...
call wrangler deploy --env dev
if errorlevel 1 (
    echo ❌ 部署失敗
    pause
    exit /b 1
)
echo ✅ 部署完成
echo.

REM 步驟 5: 顯示結果
echo [5/5] 🌐 部署完成
echo.
echo ================================================================
echo 🎉 部署成功！
echo ================================================================
echo.
echo 📍 請訪問 Cloudflare Dashboard 查看 Worker URL:
echo    https://dash.cloudflare.com/
echo.
echo 🧪 測試接口:
echo    /health        - 健康檢查
echo    /v1/models     - 模型列表
echo    /v1/providers  - 提供商信息
echo.
echo 📖 功能說明:
echo    • 17 個 AI 模型完全免費
echo    • 自動高清優化 (Auto HD)
echo    • 智能參數優化
echo    • 12 種藝術風格
echo    • NSFW 內容支持
echo    • OpenAI 兼容 API
echo.
echo 💡 提示:
echo    • 此為開發環境，僅使用免費 Pollinations.ai
echo    • 如需啟用 Cloudflare AI，請使用 deploy-premium.bat
echo.
echo ================================================================
echo.
echo 🎯 下一步:
echo    1. 訪問 Cloudflare Dashboard 獲取 Worker URL
echo    2. 使用 Web 界面或 API 集成
echo    3. 查看 README.md 了解更多功能
echo.
pause
