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
