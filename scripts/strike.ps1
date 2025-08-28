# ⚔️ STRIKE TEAM DIRECT DEPLOYMENT
# Quick strike command alias

param(
    [Parameter(Position=0, ValueFromRemainingArguments=$true, Mandatory=$true)]
    [string[]]$Mission,
    
    [switch]$Deadpool
)

$missionText = $Mission -join " "

if ([string]::IsNullOrEmpty($missionText)) {
    Write-Host "🚨 MISSION PARAMETERS REQUIRED" -ForegroundColor Red
    Write-Host "Usage: strike 'your mission description'" -ForegroundColor Cyan
    Write-Host "Example: strike 'analyze market trends for crypto'" -ForegroundColor Cyan
    Write-Host "Maximum effort: strike 'build authentication system' -Deadpool" -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "⚔️ DIRECT STRIKE DEPLOYMENT" -ForegroundColor Yellow
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Yellow

if ($Deadpool) {
    Write-Host ""
    Write-Host "🔥 DEADPOOL PROTOCOL ENGAGED - MAXIMUM EFFORT" -ForegroundColor Red
    Write-Host ""
    Write-Host "📋 MISSION: $missionText" -ForegroundColor White
    Write-Host ""
    Write-Host "Copy this into Claude Code:" -ForegroundColor Cyan
    Write-Host "----------------------------------------" -ForegroundColor Gray
    Write-Host "🔥 DEADPOOL STRIKE MISSION: $missionText" -ForegroundColor Red
    Write-Host ""
    Write-Host "Deploy maximum effort strike team with full MCP server utilization, 2x agent deployment, and ultra-planning protocols. All agents must identify with military callsigns and maintain operational command structure throughout mission execution." -ForegroundColor White
} else {
    Write-Host ""
    Write-Host "📋 MISSION: $missionText" -ForegroundColor White
    Write-Host ""
    Write-Host "Copy this into Claude Code:" -ForegroundColor Cyan
    Write-Host "----------------------------------------" -ForegroundColor Gray
    Write-Host "⚔️ STRIKE MISSION: $missionText" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Deploy specialized strike team with appropriate MCP server integration. All agents must identify with military callsigns and maintain operational command structure throughout mission execution." -ForegroundColor White
}

Write-Host "----------------------------------------" -ForegroundColor Gray
Write-Host ""