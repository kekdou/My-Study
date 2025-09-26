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
