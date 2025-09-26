### 搜索与替换

搜索
- `/text`：向下搜索text
- `?text`：向上搜索text
- `n`：跳转到下一个匹配项
- `N`：跳转到上一个匹配项
- `#`：向上搜索光标所在单词
- `*`：向下搜索光标所在单词

替换
`:[range]s/pattern/replacement/[flags]`  
- `s`：subsitute的缩写，表示进行替换操作
- `range`：指定替换的范围
- `flags`：控制替换的标志

`range`：
- `空`：只对当行进行操作
- `%`：对整个文件进行操作
- `n1,n2`：从n1行到n2行进行操作
- `g`：从光标到文件末尾

`flags`：
- `g`：全局替换（global）
- `c`：替换前确认（confirm）
- `i`：不区分大小写

- `:%s/old/new/g`：将整个文件中的old替换为new
- `:%s/old/new/gc`：在整个文件中替换，每次替换前询问（c是confirm的缩写）

---
