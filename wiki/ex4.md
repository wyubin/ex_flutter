# intro
Generic(泛型)
[Day20：泛型 (Generic)](https://ithelp.ithome.com.tw/articles/10240453)
[Day 21：像呼叫函式一樣的呼叫類別吧。(Callable class)](https://ithelp.ithome.com.tw/articles/10241328)
[Dart 22：將函數定義成型別吧。 (Typedef)](https://ithelp.ithome.com.tw/articles/10241928)

# Generic
- 就是用 T 來建構 class 或是 function

# Callable class
- 通常在物件中的函數會需要指定 function name 才能呼叫，但在很OO 的設計中，單一物件可能僅有一個函數做事，因此，可以用 call()將函數只接指定給 instance 本身

# Typedef
- 可以把導入相同參數的函數，定義為一種型別，概念像是同一個 interface，就可以在函數本身
- 如果沒指定回傳，就會是 dynamic,也可以限制回傳型態，在指定時就會檢查型態