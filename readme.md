

My RESUME

\LeTeX 简历模板

http://www.latextemplates.com/

https://www.overleaf.com/gallery/tagged/cv

https://www.overleaf.com/latex/templates

markdown风格的\LeTeX:

入门：

[本地文档](file:///C:/Users/beidongjiedeguang/OneDrive/a_resume/marddown风格的latex/markdown/markdown.html#latex)

https://liam.page/2020/03/30/writing-manuscript-in-Markdown-and-typesetting-with-LaTeX/

http://mirror.lzu.edu.cn/CTAN/macros/generic/markdown/markdown.pdf

```bash
xelatex --shell-escape xxx.tex
```

开启与LaTeX混合风格的输入模式：

```latex
\documentclass[UTF8]{ctexart}
\usepackage{markdown}
\markdownSetup{hybrid = true}
```

这样，我们就可以在.md文件里写LaTeX代码了哈哈哈哈哈

