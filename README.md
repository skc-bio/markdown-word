# Markdown Word

[简体中文](README.md) · [English](README.en.md)

> **在“页面”上写 Markdown。**  
> 一个面向 Obsidian 的分页 Markdown 编辑器：保留 Markdown 的快速输入和可迁移性，同时加入类似 Word / PowerPoint 的页面、图层、公式与多格式导出能力。

**当前版本：0.9.31** · **作者：Su & ChatGPT** · **Desktop only**

## 为什么做这个插件？

很多理工科、课程与研究笔记的实际流程是：

**Obsidian 写内容 → Word 重新排版 → PPT 再做一遍 → PDF 再导出**

Markdown Word 希望把这条流程压缩到同一份文档里：

- Markdown 负责内容和结构
- 页面负责真实尺寸与分页
- 图层负责图片、文本框、箭头和方框
- 导出负责把同一份笔记交付为 PDF / PPTX / DOCX / HTML / MD

## ✨ 0.9.31 重点更新

相较早期版本，0.9.31 对 PDF 导出和页面排版做了较大的重构：

- **可复制矢量 PDF**：正文保持为真正的 PDF 文字，可选择、复制和搜索
- **MathJax 公式导出修复**：导出前将 MathJax 的伪元素字形物化，修复 `n`、`x`、`i`、`n²` 等变量在 PDF 中消失的问题
- **精确页面尺寸**：PDF 直接使用插件中的实际 `mm` 宽高，不再依赖浏览器打印框里的 A4 / Letter 设置
- **三种 PDF 模式**：可复制矢量 PDF、系统打印兼容模式、4× 超清图片 PDF
- **独立 HTML 放映**：导出可直接翻页、缩放、全屏展示的 HTML 文档
- **页面排版增强**：正文基础字号、页面边距、分页与浮动对象同步逻辑得到改进
- **文本框增强**：支持独立行间距、锁定 / 解锁等操作
- **Office 导出增强**：PPTX / DOCX 对页面尺寸、表格、文本框和常见公式的处理进一步改进

## 🌟 主要功能

- 分页纸张视图，支持 A4 / 横向 / 自定义物理尺寸
- Markdown 正文编辑与实时渲染
- `$...$` / `$$...$$` LaTeX / MathJax 公式
- Word 风格格式工具栏
- 浮动图片、文本框、箭头、方框
- 图片裁剪、缩放、图层顺序
- Shift 多选与框选，多对象整组拖动
- 页面缩略图、插页、排序、多页删除
- 正文基础字号与页面边距设置
- 原生 Office 表格导出
- 常见 LaTeX 尽量转换为 Office Math / OMML
- 导出 `PDF / PPTX / DOCX / HTML / MD`
- Undo / Redo
- 原始 Markdown 继续保留在 Vault 中

## 📦 安装

1. 前往 [Releases](https://github.com/skc-bio/markdown-word/releases) 下载最新的 `markdown-word-x.x.x.zip`
2. 解压 ZIP
3. 将解压后的 `markdown-word` 文件夹放到：

```text
你的 Vault/
└─ .obsidian/
   └─ plugins/
      └─ markdown-word/
         ├─ main.js
         ├─ manifest.json
         └─ styles.css
```

4. 完全重启 Obsidian
5. 打开 **设置 → 第三方插件 / Community plugins**
6. 找到 **Markdown Word** 并启用

> 如果 `.obsidian` 看不到，请先在文件管理器中显示隐藏文件。

## 🚀 快速使用

打开一篇 `.md` 笔记，然后通过命令面板或插件入口打开 **Markdown Word page mode**。

```md
# 标题

普通正文，**粗体**，*斜体*，~~删除线~~。

行内公式 $E=mc^2$

$$
\frac{x^2}{2}+\sqrt{y}
$$
```

图片、文本框与图形会作为独立图层保存在页面布局中；Markdown 正文仍保留为普通 `.md` 内容。

## 📤 导出

| 格式 | 说明 |
|---|---|
| PDF | 推荐使用“可复制矢量 PDF”；正文可复制，页面尺寸精确，MathJax 公式保持矢量显示 |
| PPTX | 尽量保持文字、图片、表格、文本框和图形为可编辑对象 |
| DOCX | 适合流式 Word 文档，表格与常见公式尽量使用原生 Office 对象 |
| HTML | 生成独立分页文档，可键盘翻页、缩放与全屏放映 |
| MD | 保留 / 导出 Markdown 文本副本 |

### PDF 模式建议

日常优先：**PDF ▾ → 可复制矢量 PDF（推荐）**。

如果目标环境不兼容，可使用“系统打印版”；只追求最高视觉一致性时，可使用“超清图片 PDF（4×）”。

## 📖 文档

- [项目网页](docs/index.html)
- [插件介绍](docs/intro.html)
- [实用指南](docs/guide.html)
- [English homepage](docs/index.en.html)
- [English introduction](docs/intro.en.html)
- [English guide](docs/guide.en.html)

## 💬 反馈

项目网页提供轻量的公开留言入口，会生成预填好的 GitHub Issue 草稿，由用户自己确认发布。整个流程不需要数据库、服务器或前端 GitHub Token。

也可以直接：

- [提交 Bug](https://github.com/skc-bio/markdown-word/issues/new?template=bug_report.yml)
- [提出功能建议](https://github.com/skc-bio/markdown-word/issues/new?template=feature_request.yml)

## 🛠 当前状态

Markdown Word 仍在快速迭代。用于重要作业、论文或长期资料时，建议定期备份 Vault，并在导出后用目标软件实际打开确认。

## 🔧 源码

仓库根目录中的 `main.js`、`manifest.json`、`styles.css` 为当前发布版插件的可运行代码 / 清单 / 样式。安装包请从 [Releases](https://github.com/skc-bio/markdown-word/releases) 下载。

## 📄 License

本项目采用 [MIT License](LICENSE)。

Project credit: **Su & ChatGPT**  
Copyright © 2026 **Su (skc-bio)**
