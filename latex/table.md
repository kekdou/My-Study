### 表格

`tabular`环境是表格的基础。

`\begin{tabular}[<垂直对齐>]{<列格式>}`开始一个表格环境。第二个{ }里的内容定义了每一列的格式和分隔符。  
- 在`{}`中定义表格每一列的格式与分隔符
  - `l`：左对齐
  - `c`：居中对齐
  - `r`：右对齐
  - `|`：画一条竖直线
- 在`[]`中可选用垂直对齐的参数，表格嵌入段落时的基线位置
  - `t`：顶端对齐
  - `c`：居中对齐
  - `b`：底端对齐
- `&`用来分隔不同单元格
- `\\`用来换行
- `\hline`画一条完整水平线  

```latex
\begin{document}

这是一个段落，紧接着一个默认对齐的表格：
\begin{tabular}{|l|l|}
\hline
第一行&文本 \\
\hline
第二行&文本 \\
\hline
\end{tabular}
表格后的文本。

\vspace{1cm}  %添加一些垂直间距

这是一个段落，紧接着一个顶端对齐的表格：
\begin{tabular}[t]{|l|l|}
\hline
第一行&文本 \\
\hline
第二行&文本 \\
\hline
\end{tabular}
表格后的文本。

\vspace{1cm}   %添加一些垂直间距

这是一个段落，紧接着一个底端对齐的表格：
\begin{tabular}[b]{|l|l|}
\hline
第一行&文本 \\
\hline
第二行&文本 \\
\hline
\end{tabular}
表格后的文本。

\end{document}
```

同时，也可以对固定列的宽度，利用`p{ }`的表格项  

```latex
\begin{tabular}{|c|lll|p{4em}|}  
\hline
姓名&地理&生物&化学&备注 \\ 
\hline
小红&90&85&92&优秀 \\ 
\hline
张华&87&75&79&良好 \\ 
\hline
大明&91&75&97&存在偏科现象 \\ 
\hline
\end{tabular}
```

还可以利用`@{ }`来插入自定义内容或消除列间距，插入的内容不会算作一个新列  

利用这个特性可以实现按小数点对齐等等

```latex
\begin{tabular}{l @{--} r}
  起始时间 & 结束时间 \\
  10:00 & 11:00 \\
  12:30 & 13:00 \\
\end{tabular}
```

**实现单元格的合并**  

合并单元格需要`multirow`宏包，使用`\multicolum`命令能够合并列，使用`\multirow`命令能够合并行    

**合并列**  

`\multicolumn{<合并的列数>}{<列格式>}{<单元格内容>}`
- <合并的列数>: 需要合并的列数
- <列格式>: 合并后的单元格的对齐方式,可以是l、c、r，或者用|来定义边框
- <单元格内容>: 合并后的单元格中要显示的内容

```latex
\usepackage{multirow}   %导言区加载
...
\begin{tabular}{|c|c|c|}
\hline
\multicolumn{2}{|c|}{合并两列}&列3 \\
\hline
A&B&C \\
\hline
\end{tabular}
```

*需要注意的是\multicolumn命令后的列格式里只能有一个c或l或r或p{宽}*

**合并行**  

`\multirow{<合并的行数>}{<单元格宽度>}{<单元格内容>}`
- <合并的行数>: 需要合并的行数
- <单元格宽度>: 合并后的单元格的宽度。使用 * 表示自动计算宽度
- 合并后的单元格中要显示的内容

在tabular环境中,\hline命令会画一条横贯整个表格的完整横线，当合并了单元格时，需要用到\cline，它只在指定的列范围内画一条横线  

`\cline{<起始列号>-<结束列号>}`
- <起始列号>：画线的第一列
- <结束列号>：画线的最后一列

```latex
\usepackage{multirow}   %导言区加载
...
\begin{tabular}{|c|c|c|}
\hline
\multirow{2}{*}{合并两行}&A&B \\ \cline{2-3}  %只画部分横线
& C & D \\
\hline
\end{tabular}
```

一个综合运用：  

```latex
\usepackage{multirow}   %导言区加载
...
\begin{tabular}{|c|c|c|}
\hline
\multicolumn{2}{|c|}{\multirow{2}{*}{合并行和列}}&列3  \\ \cline{3-3}
\multicolumn{2}{|c|}{}&列3 \\
\hline
A&B&C \\
\hline
\end{tabular}
```

下面解释一下这个表格：  
1. `\multicolumn{2}{|c|}{\multirow{2}{*}{合并行和列}}`
  - `\multicolumn{2}{...}`：表示合并 2 列
  - `{|c|}`：左右有边框|，内容居中
  - `{\multirow{2}{*}{合并行和列}}`：表示这个单元格要跨越2行，内容是“合并行和列”
2. `cline{3-3}`：画第一行从第3列到第3列的横线
3. `\multicolumn{2}{|c|}{}`：再次合并了2列，但是内容是空的，作用是为\multirow单元格的第二行占位，让表格结构正确
4. `cline{3-3}`：画第二行从第3列到第3列的横线

**单元格的拆分**  

`\vline`命令，可以在某一行内画一条只占一行高度的分割线，可以用来拆分某一行已有的表项  

```latex
\begin{tabular}{|c|}
\hline
红 \\ \hline
红 \vline 黄 \\ \hline
红 \vline 黄 \vline 蓝 \\ \hline
\end{tabular} 
```

但是使用\vline命令拆分表项不易掌握间距，因此对于一些简单的图表可以使用嵌套的表格  

这里注意@{}的用法  

```latex
\begin{tabular}{|c|}
\hline
红 \\ 
\hline
\begin{tabular}{@{}c|c@{}}
红&蓝 
\end{tabular} \\
\hline
\begin{tabular}{@{}c|c|c@{}}
红&蓝&黄
\end{tabular} \\
\hline
\end{tabular}
```

**浮动表格**  

tabular环境只是创建了表格内容本身，如果希望表格可以浮动到页面的最佳位置，需要将tabular放在table环境中  

`\begin{table}[<位置>]`
- `h`：尽量放在你代码所在的位置（here）
- `t`：放在页面的顶部（top）
- `b`：放在页面的底部（bottom）
- `p`：放在一个单独的浮动页上（page）

也可以组合使用这些参数，例如`\begin{table}[htbp]`，这告诉LaTeX按照h、t、b、p的顺序尝试放置表格  

同时配合其他命令：
- `\centerin`：将表格居中
- `\caption{}`：为表格添加标题，它会自动编号
- `\label{}`：为表格打上标签，方便在正文中引用

```latex
\begin{table}[h]
\centering
\caption{水果价格表}
\label{tab:price}
\begin{tabular}{|l|c|r|}
\hline
水果&数量&价格 \\
\hline
苹果&5&10 \\
\hline
香蕉&3&6 \\
\hline
\end{tabular}
\end{table}
```

**三线表也是一种常用的表格**  

三线表（只用横线，不用竖线）是一种更常见、更美观的表格形式，需要用到`booktabs`宏包  

- `\toprule`：画顶线
- `\midrule`：画中线
- `\bottomrule`：画底线

booktabs宏包通常与tabular或table环境一起使用，在tabular列格式中不用画竖线  

```latex
\documentclass{article}
\usepackage{booktabs}   %导入宏包
...
\begin{table}[htbp]
\centering
\caption{三线表示例}
\label{tab:example}
\begin{tabular}{lcr}  %列中没有竖线
\toprule   %顶线
项目&数量&价格 \\
\midrule   %中线
苹果&5&10元 \\
香蕉&3&6元 \\
橙子&7&14元 \\
\bottomrule % 底线
\end{tabular}
\end{table}
```

**一般来说，更加推荐画三线表**

---
