### 列表
分为有序列表和无序列表，可以进行互相嵌套处理  

无序列表：

```latex
\begin{itemize}
\item apple
\item banana
\item orange
\end{itemize}

\begin{itemize}
\item apple
\item banana
\begin{itemize}
\item tomato
\item potato
\end{itemize}
\item orange
\end{itemize}
```

有序列表：

```latex
\begin{enumerate}
\item first step
\item second step
\item third step
\end{enumerate}

\begin{enumerate}
\item first step
\item second step
\begin{enumerate}
\item first step
\item second step
\end{enumerate}
\item third step
\end{enumerate}
```

*\item的缩进是可选的，为了可读性是可以缩进的，不影响编译结果*

---

