param(
  [Parameter(Mandatory=$false)]
  [string]$RepoUrl = ""
)

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "Markdown Word - GitHub 上传助手" -ForegroundColor Cyan
Write-Host "--------------------------------" -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  Write-Host "没有检测到 Git。请先安装 Git for Windows：" -ForegroundColor Red
  Write-Host "https://git-scm.com/download/win"
  exit 1
}

if ([string]::IsNullOrWhiteSpace($RepoUrl)) {
  $RepoUrl = Read-Host "请输入你的 GitHub 仓库地址，例如 https://github.com/用户名/markdown-word.git"
}

if ([string]::IsNullOrWhiteSpace($RepoUrl)) {
  Write-Host "仓库地址不能为空。" -ForegroundColor Red
  exit 1
}

if (-not (Test-Path ".git")) {
  git init
}

git branch -M main

$origin = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
  git remote set-url origin $RepoUrl
} else {
  git remote add origin $RepoUrl
}

Write-Host ""
Write-Host "正在检查远程仓库……" -ForegroundColor Yellow
$remoteMain = git ls-remote --heads origin main

git add .

$hasStaged = git diff --cached --name-only
if ($hasStaged) {
  $msg = Read-Host "提交说明（直接回车使用：Initial Markdown Word release）"
  if ([string]::IsNullOrWhiteSpace($msg)) { $msg = "Initial Markdown Word release" }
  git commit -m $msg
}

if ($remoteMain) {
  Write-Host ""
  Write-Host "检测到远程 main 已经有内容。" -ForegroundColor Yellow
  Write-Host "将先获取远程内容，再尝试合并。若 GitHub 建仓库时自动创建了 README，这是正常的。"
  git fetch origin main
  git merge origin/main --allow-unrelated-histories --no-edit
}

Write-Host ""
Write-Host "正在推送到 GitHub……" -ForegroundColor Green
git push -u origin main

Write-Host ""
Write-Host "完成。" -ForegroundColor Green
Write-Host "接下来："
Write-Host "1. GitHub -> Releases -> New release，上传 release 文件夹里的 ZIP"
Write-Host "2. Settings -> Pages -> main -> /docs"
Write-Host "3. 修改 docs/index.html 中的 skc-bio"
Write-Host ""
