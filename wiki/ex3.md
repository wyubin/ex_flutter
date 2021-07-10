# intro
Class及繼承

# ref
[link](https://ithelp.ithome.com.tw/articles/10215207)
[Day14：類別與建構式](https://ithelp.ithome.com.tw/articles/10236606)
[Day 15：方法(Method)、getter 以及 setter](https://ithelp.ithome.com.tw/articles/10237210)

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

