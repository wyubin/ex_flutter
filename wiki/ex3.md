# intro
Class及繼承

# ref
[link](https://ithelp.ithome.com.tw/articles/10215207)
[Day14：類別與建構式](https://ithelp.ithome.com.tw/articles/10236606)
[Day 15：方法(Method)、getter 以及 setter](https://ithelp.ithome.com.tw/articles/10237210)
[Day 16：抽象類別 (Abstract class)](https://ithelp.ithome.com.tw/articles/10237935)
[Day18：Ｍixin](https://ithelp.ithome.com.tw/articles/10239174)

# class
- 通常先宣告property
- prefix "_"可為 private(property/method)
- 還需要一個 non-named constructor 作為 initiator，需要將不可 nullable 的 property 都完成initiate
- 如果是 nullable 需要 "?"
- this 可作為 class 本身
- 用 late 關鍵字在constructor 可以後續變數指定
- 在 class scope 裡面可以直接物件內部名字做 format

# get/set
在物件裡面，有這兩個關鍵字做 property 的存(set)/取(get)，在宣告好一個屬性後，也就同時做了這個屬性的 get/set，但也可以不以直接宣告的方式，分別以 getter/setter 來指定屬性應有的行為
- 通常一個 property 需要同時有 get/set
- get/set 可以視作以 function 來定義 property 應該被怎設定，通常作為與其他已宣告屬性的轉換

# 抽象類別 (Abstract class)
- 無法被實例化，只能被其他類別繼承
- 最好有 non-named constructor 讓子 class 能夠塞 property
- 註解是用 "///"，在 function or class 的前面

# extends 繼承
- 僅僅單一繼承
- 可以複寫 super 的 property 與 method

# mixin
- 相對於extends，mixin 有點像是後天繼承，但也會把相關屬性留給子 class
- 偏向於單一(較少)屬性的繼承方式
- 可以多個 mixin 加在同一 class

# implements
設定物件須實做相關的屬性方法
- 算是規範物件實做的屬性與方法
- 可能在實做上面會不常使用
