# XMU Beamer Template

这是一个厦门大学风格的 Beamer 模板。项目已将原来的多个 `sty` 主题文件合并到 `xmu-beamer.dtx`，并通过 `xmu-beamer.ins` 生成统一的 `xmu-beamer.cls` 文档类。

## 文件结构

- `main.tex`: 示例演示文稿，只保留元信息、正文内容和参考文献入口。
- `xmu-beamer.dtx`: 模板源码，包含文档类、依赖包、颜色、字体、页面模板和自定义命令。
- `xmu-beamer.ins`: `docstrip` 安装脚本，用于从 `dtx` 生成 `xmu-beamer.cls`。
- `xmu-beamer.cls`: 生成后的 Beamer 文档类，供 `main.tex` 直接使用。
- `reference.bib`: 示例参考文献库。
- `figures/`: 示例图片。
- `xmulogo/`: 模板使用的校徽、字标和背景图。

## 快速开始

先生成文档类：

```bash
tex xmu-beamer.ins
```

注意：不要用 `xetex xmu-beamer.dtx` 生成类文件。`dtx` 文档本身需要 LaTeX 格式；如果要编译源码文档，应使用：

```bash
xelatex xmu-beamer.dtx
```

再编译示例文稿：

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

模板依赖 `XeLaTeX`，因为中文字体和系统字体由 `fontspec` 与 `xeCJK` 管理。

## 使用方式

新建或修改演示文稿时，使用：

```latex
\documentclass{xmu-beamer}
```

标题页信息写在 `main.tex` 的导言区：

```latex
\title[Short Title]{Main Title of Your Presentation}
\subtitle{Subtitle}
\author{Philoso}
\institute[Short Institute]{AI Department, \newline Informatics School, \newline Xiamen University.}
\date{\today}
\addbibresource{reference.bib}
```

正文中可以使用模板提供的页面命令：

- `\maketitlepage`: 生成标题页。
- `\makesection{...}`: 生成分节页，并自动加入目录。
- `\finalpagetext{...}`: 设置结束页文字。
- `\makefinalpage`: 生成结束页。
- `\colheader{...}`: 生成分栏标题。

## 字体规范

字体设置已统一放在 `xmu-beamer.dtx` 中：

- 正文使用有衬线字体。
- 标题、目录、页脚、图表标题和块标题使用无衬线字体。
- 代码和等宽内容使用等宽字体。
- 中文正文优先使用 `Songti SC`。
- 中文无衬线优先使用 `PingFang SC`，找不到时回退到 `Heiti SC` 或 `Songti SC`。
- 中文等宽内容优先使用 `Kaiti SC`，找不到时回退到 `Songti SC`。

如需调整字体，应修改 `xmu-beamer.dtx` 中的字体设置，然后重新运行：

```bash
tex xmu-beamer.ins
```

## 维护说明

不要直接长期维护 `xmu-beamer.cls`。它是从 `xmu-beamer.dtx` 生成的文件；样式改动应写入 `xmu-beamer.dtx`，再重新生成类文件。

`main.tex` 不再加载模板依赖包。如果需要新增通用包，优先加入 `xmu-beamer.dtx` 的 package 区；只有单篇演示文稿专用的设置才应写在 `main.tex`。
