### 数学公式

分为独立公式和行内公式  

**行内公式** `$...$`或`\(...\)`,用来在文本中插入简短的公式  

```latex
牛顿第二定律是 $F=ma$
```

**独立公式** `\[...\]`或`\begin{equation}...\end{equation}`  

`\[...\]`，没有编号  
`\begin{equation}...\end{equation}`会自动编号  

```latex
%这是一个没有编号的独立公式：
\[
x = \frac{-b \pm \sqrt{b^2-4ac}}{2a}
\]

%这是一个有编号的独立公式：
\begin{equation}
y = ax^2 + bx + c
\end{equation}
```

**关于多行公式的对齐问题** ，需要使用`amsmath`宏包提供的环境  

使用`align`环境，并在想要对其的位置使用符号`&`，通常放在等号`=`前面  

```latex
\usepackage{amsmath}    %确保在导言区加载此宏包
...

\begin{align}
y&=(x+1)^2 \\      % \\用于换行
 &=x^2 + 2x + 1    % &指定对齐点
\end{align}
```

latex提供了丰富的数学符号，下面给出常用的一些类型：  

**基本符号与运算**  

- 符号  

|Symbol|LaTeX Code|Symbol|LaTeX Code|Symbol|LaTeX Code|Symbol|LaTeX Code|
|:---|:---|:---|:---|:---|:---|:---|:---|
|$\alpha$|`\alpha`|$\beta$|`\beta`|$\gamma$|`\gamma`|$\delta$|`\delta`|
|$\epsilon$|`\epsilon`|$\zeta$|`\zeta`|$\eta$|`\eta`|$\theta$|`\theta`|
|$\infty$|`\infty`|$e$|`e`|$\lambda$|`\lambda`|$\mu$|`\mu`|
|$\nu$ |`\nu`|$\xi$|`\xi`|$o$|`o`|$\pi$|`\pi`|
|$\rho$|`\rho`|$\sigma$|`\sigma`|$\tau$|`\tau`|$\upsilon$|`\upsilon`|
|$\phi$|`\phi`|$\chi$|`\chi`|$\psi$|`\psi`|$\omega$|`\omega`|  
 
大写即将首字母大写，如$\Omega$,`\Omega`  

|Symbol|Latex code|Symbol|Latex code|Symbol|Latex code|
|:---|:---|:---|:---|:---|:---|
|$\neq$|`\neq`|$\leqslant$|`\leqslant`|$\geqslant$|`\geqslant`|
|$\approx$|`\approx`|$\in$|`\in`|$\notin$|`\notin`|
|$\ni$|`\ni`|$\subset$|`\subset`|$\subseteq$|`\subseteq`|
|$\supset$|`\supset`|$\supseteq$|`\supseteq`|$\forall$|`\forall`|
|$\exists$|`\exists`|$\cap$|`\cap`|$\cup$|`\cup`|

|Symbol|Latex code|Symbol|Latex code|Symbol|Latex code|
|:---|:---|:---|:---|:---|:---|
|$\leftarrow$|`\leftarrow`|$\rightarrow$|`\rightarrow`|$\mapsto$|`\mapsto`|
|$\Leftarrow$|`\Leftarrow`|$\Rightarrow$|`\Rightarrow`|$\longmapsto$|`\longmapsto`|
|$\longleftarrow$|`\longleftarrow`|$\longrightarrow$|`\longrightarrow`|$\leftrightarrow$|`\leftrightarrow`|

不难发现规律，以此类推有uparrow和downarrow等

|Symbol|Latex code|Symbol|Latex code|Symbol|Latex code|
|:---|:---|:---|:---|:---|:---|
|$\|$|`\|`|$\\|$|`\|\|`|$\{$|`\{`|
|$\lceil$|`\lceil`|$\lfloor$|`\lfloor`|$[$|`[`|

使用`\left`和`\right`可以使分隔符匹配中间公式高度，把小括号变成大括号，如：  

`\left| \frac{A}{B} \right|`&nbsp;&nbsp;&nbsp;&nbsp;$\left| \frac{A}{B} \right|$  
`\left\{ \frac{A}{B} \right\}`&nbsp;&nbsp;&nbsp;&nbsp;$\left\{ \frac{A}{B} \right\}$   

如果只需要一边，需要使用`\left.`，如：

`\left. \frac{x}{2} \right|_{-\infty}^{\infty}`&nbsp;&nbsp;&nbsp;&nbsp;$\left. \frac{x}{2} \right|_{-\infty}^{\infty}$

- 表达式

|constructs|Latex code|constructs|Latex code|constructs|Latex code|  
|:---|:---|:---|:---|:---|:---|  
|$a^x$|`a^x`|$x_i$|`x_i`|$\overrightarrow{a}$|`\overrightarrow{a}`|
|$\frac{abc}{xyz}$|`\frac{abc}{xyz}`|$\sqrt[n]{abc}$|`\sqrt[n]{abc}`|$\overline{abc}$|`\overline{abc}`|
|$\sum_{i=1}^{\infty}$|`\sum_{i=1}^{\infty}`|$\prod_{i=1}^{\infty}$|`\prod_{i=1}^{\infty}`|$f'$|`f'`|
|$\int_{0}^{1}$|`\int_{0}^{1}`|$\iint$|`\iint`|$\oint$|`\oint`|
$\nabla$|`\nabla`|$\partial$|`\partial`|$\cdot$|`\cdot`|
|$\times$|`\times`|

如果不想将上下标标在左侧，可以利用`\limits`强制上下标出现在运算符正上下方，如：

`\sum\limits_{i=1}^{\infty}x_i`&nbsp;&nbsp;&nbsp;&nbsp;$\sum\limits_{i=1}^{\infty}x_i$

- 函数

|function|Latex code|function|Latex code|function|Latex code|
|:---|:---|:---|:---|:---|:---|
|$\exp$|`\exp`|$lg$|`\lg`|$\ln$|`\ln`|
|$\lim$|`\lim`|$\sup$|`\sup`|$\inf$|`\inf`|
|$\min$|`\min`|$\max$|`\max`|$\det$|`\det`|
|$\gcd$|`\gcd`|

对于 **矩阵** ，需要利用`amsmath`宏包
- `\pmatrix`：带圆括号的矩阵
- `\bmatrix`：带方括号的矩阵
- `\vmatrix`：带竖线的矩阵
- `\matrix`：不带括号的矩阵

```latex
\begin{pmatrix}
a&b \\
c&d
\end{pmatrix}
```

对于 **分段函数** ，需要利用`amsmath`宏包提供的cases环境  

在`\begin{cases}`和`\end{cases}`之间，使用`&`来分隔函数表达式和条件,`\text{ }`用于在数学环境中插入文本  

```latex
f(x) =
\begin{cases}
x^2+1 & \text{ if } x>0 \\
0 & \text{ if } x = 0 \\
x-1 & \text{ if } x<0
\end{cases}
```

*注意：\text{ }插入的文本，注意空格保持间距*

---