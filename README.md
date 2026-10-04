# Markdown Word

> 在“页面”上写 Markdown。  
> 一个面向 Obsidian 的分页 Markdown 笔记插件：保留 Markdown 的快速输入和可迁移性，同时加入类似 Word / PowerPoint 的页面、图层、图片、文本框、箭头、表格与导出能力。

**作者：Su & ChatGPT**

## ✨ 它适合什么人？

如果你的笔记经常包含：

- 数学公式、推导、理工科内容
- 图片、标注、箭头、方框
- 需要固定分页或打印
- 最后还要交 Word / PPT / PDF
- 又希望原始内容继续留在 Obsidian / Markdown 中

Markdown Word 的目标，就是减少“Obsidian 写一遍 → Word 再排一遍 → PPT 再做一遍”的重复工作。

## 🌟 主要功能

- 分页纸张视图，支持自定义页面尺寸
- Markdown 正文编辑与实时渲染
- `$...$` / `$$...$$` LaTeX 公式
- Word 风格格式工具栏
- 浮动图片、文本框、箭头、方框
- 图片裁剪、缩放、图层顺序
- Shift 多选与框选，多对象整组拖动
- 页面缩略图、换页、插页、多页删除
- 原生 Office 表格导出
- 常见 LaTeX 尽量导出为 Office Math / OMML
- 导出 `PPTX / DOCX / PDF / MD`
- Undo / Redo
- 原始 Markdown 仍保留在 Vault 中

## 📦 安装

1. 前往 [Releases](../../releases) 下载最新的 `markdown-word-x.x.x.zip`
2. 解压 ZIP
3. 将解压得到的 `markdown-word` 文件夹放到：

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

### Markdown

```md
# 标题

普通正文，**粗体**，*斜体*，~~删除线~~。

行内公式 $E=mc^2$

$$
\frac{x^2}{2}+\sqrt{y}
$$
```

### 图片与文本框

- 图片和文本框都是独立图层
- 单击文本框：选中 / 拖动
- 双击文本框：编辑文字
- 右键：复制、剪切、置顶、置底、删除

### 多选

- `Shift + 点击`：多选图片 / 文本框 / 图形
- 页面空白处拖动：框选
- 多选后拖动其中任意一个：同一页内整组移动
- `Delete / Backspace`：删除选中对象

### 表格

表格支持直接编辑，并可从右侧 / 下方扩展行列。  
导出到 PPTX / DOCX 时会尽量生成原生 Office 表格。

### 导出

| 格式 | 说明 |
|---|---|
| PPTX | 尽量保持文字、图片、表格、图形为可编辑对象 |
| DOCX | 适合流式 Word 文档；表格为原生 Word 表格 |
| PDF | 普通正文尽量保持可选择文字，图片和公式按页面位置输出 |
| MD | 保留原始 Markdown 内容 |

## 📖 文档

- [插件介绍](docs/intro.html)
- [实用指南](docs/guide.html)

如果启用了 GitHub Pages，也可以直接通过网站阅读。

## 💬 反馈

项目网页提供一个轻量的公开留言区：

1. 填写显示名、评分、类型和留言
2. 页面打开一个预填好的 GitHub Issue 草稿
3. 用户自己登录 GitHub 并确认发布
4. GitHub Actions 识别带有 Markdown Word 社区标记、且仍然打开的 Issues
5. 自动生成 `docs/community.json`
6. GitHub Pages 读取该快照显示最近留言
7. 关闭 Issue 后，留言会在下一次工作流运行后撤回

整个流程不需要数据库、服务器或前端 GitHub Token。

也可以直接：
- [提交 Bug](../../issues/new?template=bug_report.yml)
- [提出功能建议](../../issues/new?template=feature_request.yml)

## 🛠 当前状态

这是一个仍在快速迭代的原型插件。  
如果你打算把它用于重要作业、论文或长期资料，建议：

- 定期备份 Vault
- 导出后用目标软件实际打开检查
- 更新插件前保留旧版本 ZIP

## 🔧 源码

仓库根目录中的 `main.js`、`manifest.json`、`styles.css` 是当前发布版插件的可运行代码/清单/样式。  
安装包请从 [Releases](https://github.com/skc-bio/markdown-word/releases) 下载。

## 📄 License

本项目采用 [MIT License](LICENSE)。

你可以使用、复制、修改、分发和再发布本项目，但需要保留原版权声明与 MIT 许可文本。软件按“原样”提供，不附带担保。

---

Project credit: **Su & ChatGPT**  
Copyright © 2026 **Su (skc-bio)**
