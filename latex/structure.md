### 文档类型

`\documentclass[...]{...}`每个latex文档的起点。

**{ }内参数**  

告诉编译器创建文档类型，不同的文档类型有不同的默认格式，例如页边距，字体大小和编号方式   
- `article` 最常用的文档，适合写短篇论文、期刊文章、简短报告和信件。
- `report`：适用于较长的报告、学位论文或技术文档
- `book`：专为书籍编写设计，提供了额外的功能，如双面打印的页边距、封面和章节的开始页
- `letter`：专为写信设计，提供了一些特定的命令来格式化收件人地址、信件日期和落款  
- `beamer`：用于制作幻灯片，它提供了各种预设的主题和功能，可以轻松制作出美观的演示文稿

**[ ]内参数**  

可以设置文档 **基础字体大小，纸张大小，单双面打印，单双列排版**等功能，这些参数可以组合使用，用`,`分隔  
- `10pt`，`11pt`，`12pt`：设置基础字体大小
- `a4paper`，`letterpaper`：设置纸张大小，a4为亚欧常用，letter北美常用
- `oneside`，`twoside`：设置单双面打印
- `onecolum`，`twocolum`：设置单双列排版

```latex
\documentclass{article}
\documentclass[12pt, a4paper]{report}
```

---

### 宏包

`\usepackage{...}`写在导言区，即`\documentclass`和`\begin{document}`之间，用于调取宏包，宏包（package）是事先写好的代码库，用于拓展功能。

**常用的宏包有：**  
- `amsmath`：提供复杂数学公式的支持
- `graphicx`：用于在文档中插入图片
- `hyperref`：为文档中的交叉引用、目录和网址添加超链接,通常是最后一个被加载的宏包
- `babel`或`ctex`：支持多语言排版，babel提供了多种语言支持，而ctex是专门为中文排版设计的宏集
- `inputenc`：处理输入编码，确保LaTeX编译器能正确读取

---

### 标题和作者

这几个命令用来定义文档的元数据。`\maketitle`命令用于生成标题页，使用前面定义的标题、作者和日期信息， **必须放在\begin{document}之后，希望标题出现的位置**

```latex
\title{my article}
\author{kekdou}
\date{\today}     % \today会自动插入今天的日期

\begin{document}
\maketitle
...
\end{document}
```

如果需要副标题  

\title命令并不支持直接添加副标题，可以通过手动换行或使用`titlesec`宏包的\subtitle命令实现  

```latex
%手动换行
\title{主标题 \\ \large 副标题}    % \\用来强制换行，\large命令调整副标题字体大小
```

如果有多个作者，并且表示出机构

```latex
\author{
    kekdou\thanks{THU,Peking}\and    % \and用于并列作者
    kekdou2\thanks{PKU,Peking}       % \thanks{...}命令会为作者添加注脚
}
```

---

### 摘要和关键词

摘要需使用abstraction环境，会自动生成“摘要”的标题并对文本进行格式化，取决于文档类型。latex核心系统没有内置的关键词环境，因此需要手动创建关键词部分  

```latex
\begin{document}
\maketitle
\begin{abstract}
...              %摘要内容
\begin{abstract}

\noindent\textbf{关键词：} ...     %填写需要的关键词
...         %\noindent用于取消首行缩进
\end{document}
```

---

### 章节命令

用于组织文档的层次结构，会自动添加章节编号，并在目录中生成对应的条目  
不同文档类型有不同级别的章节命令，以最常用的article举例：  

```latex
\section{...}   %一级标题
...
\subsection{...}   %二级标题
...
\subsubsection{...}    %三级标题
...
\paragraph{...}   %四级标题
...
\subparagraph{...}    %五级标题
...
```

如果使用的是article，则\section是一级标题。如果是report或book，一级标题是\part或\chapter  

此外，如果想创建无编号章节，只需在章节命令后面添加一个`*`。这对于“引言”或“致谢”这样的章节非常有用  

```latex
\section*{...}   %无编号章节
```

***注意：** 无编号的章节不会被自动添加到目录中，如果想出现在目录中，但又不想编号，可以使用`\addcontentsline`命令手动添加*  

---
