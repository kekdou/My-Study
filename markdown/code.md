### 代码  

**要将单词或短语表示为代码，将其包裹在 \` 中**  

At the command prompt, type `start`.  

**若要表示的代码的单词或短语中包含一个或多个反引号，则可以通过将单词或短语包裹在 \`\` 中**  

``Use `code` in your Markdown file``  

**要创建代码块，将代码块每一行缩进至少四个空格或一个制表符**  
  
&nbsp;&nbsp;&nbsp;&nbsp;for(auto& it : arr){  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cout<<it;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}  

**渲染效果：**  

    for(auto& it : arr){
        cout<<it;
    }

**如要创建不用缩进的代码块，需使用围栏式代码块**  

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
