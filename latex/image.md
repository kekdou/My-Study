### 图片

要插入图片，需要`\usepackage{graphicx}`宏包  

`\includegraphics[]{}`  

可以在方括号内添加参数，用于控制图片的大小和样式  
- `width=<宽度>`：设置图片宽度，通常使用相对长度如0.8\textwidth（文本宽度的 80%，这样可以确保图片在不同页面大小下都能自适应
- `height=<高度>`：设置图片高度
- `scale=<比例>`：按比例缩放图片，例如scale=0.5会将图片缩小一半
- `angle=<角度>`：旋转图片，例如angle=90

花括号里填写图片的 **文件名**，如果不在同一个文件夹里，需要提供 **完整路径**  

但\includegraphics命令只会把图片放在代码所在的位置，为了让图片能“浮动”到最合适的位置，并且能添加标题、标签和在目录中显示，你需要将它放在`figure`环境中  

`\begin{figure}[<位置>]`  

与\begin(table)用法相同，均提供浮动环境

```latex
\usepackage{graphicx}   %记得在引言区加载宏包
...
\begin{figure}[htbp]
\centering
\includegraphics[width=0.8\textwidth]{example-image}
\caption{示例图片}
\label{fig:flowchart}
\end{figure}
```

---
