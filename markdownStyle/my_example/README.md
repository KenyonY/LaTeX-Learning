
### markdown风格的\LeTeX:

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

---

* 自定义包
  如果代码中自定义的命令和环境过多，可将它们打包放入单独的.sty文件中，单独维护管理：

  ```Tex
  \ProvidesPackage{mypkg}
  ...
  ```

  文件保持为`mypkg.sty`， 然后就可以在.tex文件里调用了：

  ```tex
  \documentclass[UTF8]{ctexart}
  \usepackage{mypkg}
  \begin{document}
  ...
  \end{document}
  ```

---

例如，在markdown里面写一个table,如下

| 1    | 2    | 3    | 5    |
| ---- | ---- | ---- | ---- |
| 11   | 22   | 33   | 55   |
| 3    | 3    | 9    | 99   |
| 5    | 7    | 9    | 9    |

保存为`table1.md`

然后在test.tex里面写下：

```tex
\documentclass[UTF8]{ctexart}
\usepackage{mypkg}
\begin{document}
我将导入一个markdown文件里的Table:
\markdownInput[smartEllipses]{README.md}
效果如上
\end{document}
```

编译：

```bas
xelatex --shell-scape test.tex
```

