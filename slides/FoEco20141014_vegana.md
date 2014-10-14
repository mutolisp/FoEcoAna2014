森林生態學1014

使用 R::vegan 分析資料
========================================================
author: 林政道 Cheng-Tao Lin
date: 2014/10/14
font-family: 'NotoSansHant-Light'
transition: concave

========================================================

![George H. Lewes](imgs/George_Henry_Lewes.jpg)
***
<br/>
<br/>
<br/>
<font family="Times New Roman">“Science is the systematic classification of experience”</font>
<br/>
<font size="0.8%">—George Henry Lewes</font>
植群分析軟體簡介
========================================================
<hr>
- 圖形介面：
  - JUICE vegetation analysis software (免費軟體)
	- PC-ORD (商業軟體)
	- CANOCO (商業軟體) 
- 文字介面：
	- vegan (R package)
  
為什麼要用 R 來教學
========================================================
<hr>
- 自由軟體(free software, free as freedom)，開放源碼
  - 不只價錢是免費，本身源碼可以自行修改、分享散播
- 圖形介面的商業軟體，雖然易上手，但要客製化再修改很難，但做研究這檔事...
  - 自己動手打造，設計實驗比較彈性且可符合需求
- R 更新快速，許多新的統計方法都能很快在 R 先實作出來
- R 支援數千個以上的第三方套件，從繪圖、分析、高效能計算都支援
- 跨平台，不管你是在 Microsoft Windows, Mac, GNU/Linux, BSD 都能使用！ 
  
為什麼要用 R 來教學
========================================================
<hr>
* 自由軟體(free software, free as freedom)，開放源碼
  * 不只價錢是免費，本身源碼可以自行修改、分享散播
* 圖形介面的商業軟體，雖然易上手，但要客製化再修改很難，但做研究這檔事...
  * 自己動手打造，設計實驗比較彈性且可符合需求
* R 更新快速，許多新的統計方法都能很快在 R 先實作出來
* R 支援數千個以上的第三方套件，從繪圖、分析、高效能計算都支援
* 跨平台，不管你是在 Microsoft Windows, Mac, GNU/Linux, BSD 都能使用！ 


安裝 R 
========================================================
<hr>
![R](imgs/Rlogo.jpg) 

R 的首頁: http://www.r-project.org
* __Windows__: 請到 R 網頁的[鏡像下載區](http://cran.csie.ntu.edu.tw) ，至 [base](http://cran.csie.ntu.edu.tw/bin/windows/base/) 子目錄下載，請先閱讀[安裝說明](http://cran.csie.ntu.edu.tw/bin/windows/base/README.R-3.1.1)。
* __Mac OS X__: 請至相對應的目錄下載安裝  R.app framework，或是安裝 [homebrew](http://brew.sh) 套件管理系統再透過下列指令安裝：
<pre>
brew tap homebrew/science
brew install r
</pre>

* __GNU/Linux__, *BSD，通常可以透過套件管理軟體，例如 apt-get/aptitude/pkg 等安裝
輔助軟體：RStudio
========================================================
<hr>
![RStudio](imgs/rstudio_logo.png) 

* 功能強大的 IDE (Integrated Development Environment; 整合開發環境)
  * 在同一畫面中結合 R 指令稿編輯、終端機(console)、環境、歷史指令、套件、說明等
  * 支援指令補齊(completion)、 [RMarkdown](http://rmarkdown.rstudio.com)筆記、R presentation、git/svn [版本控制](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)等強大功能
* 整合開發環境的圖形介面，讓初學者也能有效率的分析資料、繪圖

安裝 vegan package
========================================================
<hr>
說明：透過 install.packages() 這個指令安裝 vegan package，並且使用的儲存庫(repo=repository)為 http://cran.csie.ntu.edu.tw ，完整指令為：


```r
install.packages("vegan", repos = "http://cran.csie.ntu.edu.tw")
```

實作1. 梯度分析(ordination)
========================================================
<hr>
梯度分析
* 主成分分析(PCA)
* 降趨對應分析(DCA)

實作1. 分類(classification)
========================================================
<hr>
