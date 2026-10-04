# 直接用 PowerShell 上传

你已经创建好 GitHub 仓库的话，最简单的流程：

## 先改 GitHub 用户名

在 `docs/index.html` 中搜索：

```text
skc-bio
```

替换为你的 GitHub 用户名。

例如：

```text
SuExample
```

如果仓库不叫 `markdown-word`，也把网页中的 `/markdown-word` 改成真实仓库名。

## 一键上传

在解压后的仓库文件夹空白处：

1. Shift + 右键
2. 选择“在终端中打开” / “在此处打开 PowerShell”
3. 运行：

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\upload-to-github.ps1
```

脚本会让你输入仓库地址，例如：

```text
https://github.com/你的用户名/markdown-word.git
```

之后会执行：

- `git init`
- 设置 `main`
- 设置 GitHub remote
- `git add .`
- `git commit`
- 如果远程已有 README，会尝试合并
- `git push -u origin main`

## 如果你不想运行脚本

也可以手动：

```powershell
git init
git branch -M main
git remote add origin https://github.com/你的用户名/markdown-word.git
git add .
git commit -m "Initial Markdown Word release"
git push -u origin main
```

如果 GitHub 仓库创建时已经自动生成 README，建议先：

```powershell
git fetch origin main
git merge origin/main --allow-unrelated-histories --no-edit
git push -u origin main
```

## 开启 GitHub Pages

上传成功后：

GitHub 仓库 -> Settings -> Pages

选择：

```text
Source: Deploy from a branch
Branch: main
Folder: /docs
```

保存。

网页一般会出现在：

```text
https://你的用户名.github.io/仓库名/
```

## 留言功能

留言采用：

```text
网页表单
  ↓
预填 GitHub Issue 草稿
  ↓
用户自己登录并发布
  ↓
GitHub Actions
  ↓
docs/community.json
  ↓
网页显示最近留言
```

没有数据库，没有服务器，也没有前端 GitHub Token。

`.github/workflows/community.yml` 会在留言 Issue 被打开、编辑、关闭等情况下自动重新生成 `docs/community.json`。

只统计带 `community` 标签且仍处于 open 状态的 Issue。

因此：

- 关闭 Issue -> 留言会从网页公开列表撤回
- 编辑 Issue -> 网页下一次工作流后同步
- 页面最多显示最近 20 条
