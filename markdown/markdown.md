# markdown

### 标题
**用#表示标题，#的个数表示标题级数，最多可以存在6级标题**  
\# 一级标题  
\## 二级标题  
......  
\###### 六级标题  

**渲染效果：**
#### 四级标题
##### 五级标题
###### 六级标题

---

### 段落
**用空白行将多行文本进行分隔**  
I really like using Markdown.

I think I'll use it to format all of my documents from now on.  

<u>*不要用space或tabs缩进段落，有特殊用法，如创建代码块和换行* </u>

---

### 分隔线

**要创建分隔线，在单独一行上使用三个或以上`*`，`-`或`_`，且不包含其他内容**  

\---

**渲染效果：**  

---

利用 * 和 _ 同理

---

### 换行

**在一行末尾添加两个或以上空格，然后按回车，即可创建一个换行**   

This is the forst line.  
And this is the second line.

**特殊情况需要插入换行，如表格中，可以用`<br>`表示换行**

---

### 缩进

**可以用`&nbsp;`来表示缩进**  

这是一个未缩进的段落  
\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;\&nbsp;这是一个缩进的段落

**渲染效果：**  

这是一个未缩进的段落  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这是一个缩进的段落  

---

### 强调

- **加粗**  
在单词或短语前后各添加两个`*`  
I just love \*\*markdown\*\*.  
**渲染效果：**  
I just love **markdown**.

- **斜体**  
在单词或短语前后各添加一个`*`  
I just love \*markdown\*.  
**渲染效果：**  
I just love *markdown*.

- **高亮**  
在单词或短语前后各加两个`=`  
I just love \==markdown\==.  
**渲染效果：**  
I just love ==markdown==.

- **删除**  
在单词或短语前后各加两个`~`  
I \~\~don't\~\~ love markdown. 
**渲染效果：**  
I ~~don't~~ love markdown.

- **下划线**  
利用 `<u>` 实现   
\<u>I just love markdown\</u>  
**渲染效果：**  
<u>I just love markdown</u>  

- **代码**  
要将单词或短语表示为代码，将其包裹在  \` 中  
I just love \`markdown\`.  
**渲染效果**  
I just love `markdown`.  

---

### 转义字符  

**以下字符可以通过反斜杠达到转义目的**  

- \
- \`
- \*
- \_
- \{}
- \[]
- \()
- \#
- \+
- \-
- \.
- \!
- \|  

`<` 和 `&` 是两个与HTML相关的特殊符号，用法更加特殊  

---

### 文字居中  

**markdown没有文本对齐的方法，但可以使用CSS解决：**  

\<p style="text-align:center">这段文字居中显示\</p>  

**渲染效果：**  

<p style="text-align:center">这段文字居中显示</p>  

---

### 文字颜色

**markdown不支持更改文字颜色，但HTML可以：**  

\<font color="red">这段文字是红色的！\</font>  

**渲染效果：**  

<font color="red">这段文字是红色的！</font>  

**另一种方式：**  

\<p style="color:blue">这段文字是蓝色的。</p>  

**渲染效果：**  

<p style="color:blue">这段文字是蓝色的。</p>  

---

### 使用emoji

**一般可以直接复制表情符号直接粘贴在文档中**  

乐 🤣👉  

**也可以键入表情符号段代码来插入表情，以`:`开头和结尾**  

乐 \:joy\:  
帐篷 \:tent\:

**渲染效果：**  

乐 :joy:  
帐篷 :tent:  

<u>*所有的符号和表情都有自己的编码，可以利用编码表示出*</u>  

**利用emoji可以做出很多有意思的模块**  

> :warning: **警告：** 不要回头！  
> :memo: **注意：** 前面的区域以后再来探索吧！  
> :bulb: **提示：**  灵光一现，智识+3！  

---

### 公式  

**markdown支持直接插入latex公式**  

**嵌入到文本的公式用单个美元符号包围**  

例如：

\$f(x)=x^2+2x+3$   

**渲染效果：**  

$f(x)=x^2+2x+3$  

**公式块用两个美元符号包围**   

例如：

\$\$
\int_{-\infty}\^{\infty} e\^{-x^2} dx = \sqrt{\pi}
$$  

**渲染效果：**  

$$
\int_{- \infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$

---

### 引用  

**在段落前添加一个 `>` 创建引用块**   

**块引用可以包含多个段落，在段落之间空白行添加一个`>`**  

\> Dorothy followed her through may of the beautiful rooms in her castle  
\>  
\> The witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood   

**渲染效果：**  

> Dorothy followed her through may of the beautiful rooms in her castle
>
> The witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood   

**块引用可以嵌套，在需嵌套的段落前添加`>>`**  

\> Dorothy followed her through may of the beautiful rooms in her castle  
\>> The witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood  

**渲染效果：**  

> Dorothy followed her through may of the beautiful rooms in her castle
>> The witch bade her clean the pots and kettles and sweep the floor and keep the fire fed with wood   

**块引用内可以包含其他markdown格式的元素**  


### 代码  

**要将单词或短语表示为代码，将其包裹在 \` 中**  

At the command prompt, type `start`.  

**若要表示的代码的单词或短语中包含一个或多个反引号，则可以通过将单词或短语包裹在 \`\` 中**  

``Use `code` in your Markdown file``  

**围栏式代码块**  

**在代码块之前和之后的行上使用三个反引号**  

\`\`\`   
for(auto& it : arr){  
&nbsp;&nbsp;&nbsp;&nbsp;cout<<it;  
}  
\`\`\`  

**渲染效果：**  

```
for(auto& it : arr){
    cout<<it;
}
```

**语法高亮**  

只需在代码块之前的反引号后标注语言  

\`\`\`C++     
for(auto& it : arr){  
&nbsp;&nbsp;&nbsp;&nbsp;cout<<it;  
}  
\`\`\`   

**渲染效果：**  

```C++
for(auto& it : arr){
    cout<<it;
}
```  

---

### 列表  

#### 有序列表

**在列表前添加数字并紧跟一个`.`，数字可以不必按数学顺序，但应以`1`开始**   

1. First item  
   I really like using markdown.
2. Second item  
   And I 'll use markdown forever.
3. Third itrm  
   Markdown is very useful.
4. Fourth item  
   Do you like markdown?  

**列表可以进行嵌套**

#### 无序列表

**在列表前添加`-`**  

- First item  
  I really like using markdown.
- Second item  
  And I 'll use markdown forever.
- Third item  
  Markdown is very useful.
- Fourth item  
  Do you like markdown?  

**还可以制作任务栏**  

利用`- [ ]`实现，若已完成则用`- [x]`表示  

- [x] write the press release
- [ ] update the websute
- [ ] contact the media

---

### 定义列表

**要创建定义列表，在第一行上键入术语，在下一行，键入一个`:`，后跟一个空格和定义**

First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second term.  

---

### 表格

**要添加表，使用三个或多个`-`创建每列的标题，并使用`|`分隔每列**  

|A|B|  
\|---\|---\|  
|a|b|  
|Mark|Down|  

**渲染效果：**  

|A|B|
|---|---|
|a|b|
|Mark|Down|  

**可以选择在标题行的连字符左，右或两侧添加`:`，来将文本对齐到左侧，右侧或中心**  

|A|B|C|  
\| :--- \| :---: \| ---: \|  
| I love markdown | I love markdown | I love markdown |  

**渲染效果：**  

|A|B|C|
| :--- | :---: | ---: |
| I love markdown | I love markdown| I love markdown|  

<u>*可以在表格中添加强调，链接*  

*但不能添加标题，块引用，列表，水平规则，图像等*</u>  

**如果要在表格中插入列表，可以使用HTML解决**  

\|语法\|描述\|  
\|------\|------\|  
\|列表\|\<ul>\<li>项目一\</li>\<li>项目二\</li>\</ul>\|  

**渲染效果：**  

|语法|描述|
|---|---|
|列表|<ul><li>项目一</li><li>项目二</li></ul>|  

---
### 链接

**链接文本放在中括号中，链接地址放在后面小括号中，链接title可选**  

\[链接显示名]\(链接地址)  

**给链接增加title，即鼠标悬停后出现的文字，这是可选的，放在链接地址的后面，与链接之间以空格隔开**  

\[Markdown语法]\(`https://markdown.com.cn` "最好的markdown教程")  

**渲染效果：**  

[Markdown语法](https://markdown.com.cn "最好的markdown教程")  

**使用`< >`将URL或者Email地址变为可点击的链接**  

<u>*markdown处理器会自动将URL转换为链接，即使未使用尖括号*</u>   

<https://markdown.com.cn>  

如果不希望自动链接URL，可以将URL表示为带反引号的代码来删除链接  

`https://markdown.com.cn`  

**可对链接进行格式化操作**   

I love **[Markdown](https://markdown.com.cn)**   
This is the *[Markdown](https://markdown.com.cn)*  
See the section on [`代码`](#代码)  

---

### 图片

**要添加图像，用`!`，然后在方括号中添加替代文本，图片链接放在圆括号里，后可接可选的标题文本**  

\!\[Kaf]\(kaf.jpg "my wife")  

**渲染效果：**  

![Kaf](kaf.jpg "my love")  

**其中Kaf为图片描述，当图片无法正常显示时则替换为该文字，my love则是可选标题，当鼠标悬浮时显示的文字**    

<u>*图片和md文件若不在同一个文件夹，则需使用相对路径*</u>  

#### 调整图片  

**markdown不能指定图片尺寸，但可以用HTML设定宽高,位置等**   

\<img src="`kaf.jpg`" width="200" height="130">  

**渲染效果：**  

<img src="kaf.jpg" width="200" height="130">  

---

### 视频

**markdown不能直接嵌入视频，但可以用变通方式(图片+链接)实现**  

\[\![视频预览]\(链接)]\(链接)  

**渲染效果：**  

[![雏鸟](kaf.jpg)](https://www.bilibili.com/video/BV1wJ411873J/?share_source=copy_web&vd_source=d24c7af4324998cac3ef347fb5a94863)  

---
