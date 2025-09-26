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

1. First item
8. Second item
3. Third item
   1. Intended item
      1. Intended item
      2. Intended item
   2. Intended item
5. Fourth item  

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

**嵌套效果如下：**  

- First item
- Second item
- Third item
  - intended item
    - intended item
    - intended item
  - intended item
- Fourth item  

**还可以制作任务栏**  

利用`- [ ]`实现，若已完成则用`- [x]`表示  

- [x] write the press release
- [ ] update the websute
- [ ] contact the media

#### 嵌套其他元素 

**在保留列表连续性的同时添加其他元素，需要将该元素缩进4格或一个制表符**  

\- This is the first list item.  
\- Here's the second list item.   

&nbsp;&nbsp;&nbsp;&nbsp;\> I need to add another paragraph below the second list item.  

\- And here's the third list item.

**渲染效果：**  

- This is the first list item.  
- Here's the second list item.   
    
    > I need to add another paragraph below the second list item.  

- And here's the third list item.

**代码块通常采用四个空格或一个制表符缩进。当被放在列表中时，将其缩进八个空格或两个制表符**  

1\. Open the file.  
2\. Find the following code block on line 21:  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vector<int> arr;  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(int i=0;i<num;i++){  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;arr.push_back(i);  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}

3\. Close the file.

**渲染效果：**  

1. Open the file.
2. Find the following code block on line 21:

        vector<int> arr;
        for(int i=0;i<num;i++){
            arr.push_back(i);
        }

3. Close the file.

---

### 定义列表

**要创建定义列表，在第一行上键入术语，在下一行，键入一个`:`，后跟一个空格和定义**

First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second term.  

---
