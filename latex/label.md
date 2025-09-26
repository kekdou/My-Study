### 引用

可以给任何章节、图标或公式打上`\label{<标签名>}`标签，然后在文档的其他地方用`\ref{<标签名>}`来引用它。文档内容变化时，latex会自动更新引用编号。  

*\label命令必须放在你想要引用的对象之后，对于章节，通常放在 **\section命令之后**，对于浮动体，则 **放在\caption之后***  

{ }内的参数可以填写任何想要的文本标签，但为了方便管理和阅读，一般遵循以下规则：
- **唯一性：** 标签在整个文档中必须是唯一的
- **语义化：** 标签应清楚的表明它所标记的内容  
- **前缀：** 使用前缀来区分不同类型的对象是一个好习惯  

推荐的命名格式：  
- `sec:`：用于章节（section），如`\section{引言}\label{sec:intro}`
- `fig:`：用于图片或图（figure），如`\caption{流程图}\label`{fig:flowchart}
- `tab:`：用于表格（table），如`\caption{实验数据}\label{tab:data}`
- `eq:`：用于公式（equation），如`\begin{equation}\label{eq:einstain}`

```latex
\section{简介}
\label{sec:intro}
...
...
正如第\ref{sec:intro}节所述...
```
