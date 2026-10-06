# Changelog

## 0.9.31

- Reworked PDF export around a selectable Chromium vector-PDF path
- Fixed missing MathJax variable glyphs (for example `n`, `x`, `i`, `n²`) by materializing generated glyphs before PDF export
- Added exact custom page sizing based on Markdown Word physical dimensions
- Added three PDF modes: selectable vector PDF, system-print compatibility, and 4× high-resolution image PDF
- Added standalone presentation HTML export
- Improved page reflow, page margins, base text size, and floating-object page tracking
- Added text-box line spacing and lock/unlock improvements
- Improved PPTX/DOCX export handling for tables, text boxes, page size, and common equations

## 0.9.14 → 0.9.31

The main architectural change is the export pipeline: current PDF export preserves selectable text and handles MathJax more reliably while respecting exact custom page dimensions. The page/layout and Office-export paths have also been expanded substantially.

## 0.9.3

- Shift 多选与框选支持整组拖动
- 改进 PDF 公式视觉保真，优先使用当前页面中的 MathJax 渲染结果
- 作者署名更新为 `Su & ChatGPT`

## 0.9.2

- 修复 PDF 导出 `splitInlineMath is not defined`
- PPTX / DOCX 表格改为 Office 原生表格
- 支持 Shift 多选与框选
- 多对象可批量删除

## 0.9.1

- 常见 LaTeX 尝试转换为 Office Math / OMML
- 修复插入页面后图片、文本框、图形没有随页面后移的问题

## 0.9.0

- PDF 改为可选择文字的矢量文本路径
- 增强 PPTX / DOCX 导出容错
