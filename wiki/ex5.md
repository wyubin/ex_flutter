# intro
async
[Dart23：異步處理](https://ithelp.ithome.com.tw/articles/10242688)
[Day 24：異步處理 Part2－Stream](https://ithelp.ithome.com.tw/articles/10243320)

# Future
- 這類物件是以 Future.value([val])靜態函數來 return一個 Future 的值
- Future.delayed(Duration,func()) 則是經過所設定的duration 才以後面 func 輸出值
- Future.error(error) 則是提供 future 內的 error handler，需要 .catchError 來處理 error 輸出
- .then(func(x)) 指定進行完 async 之後要執行的 function
- .whenComplete 則是最後完成 future 才執行的function，就不具參數
- 如果需要在一些 future 間進行同步協調，則需要 async 宣告，並在 function 內使用 await

# Stream
- 主要針對一連串 io或是 future 進行監聽，並可 trigger 事件
- 單一 stream 只允許單一監聽(listen)
- .listen(func(e)) 會在每次有 stream 輸出時 trigger function
- await for 語法則是會 for loop stream 進行操作，但也是要在 async 函數中，如果有 return 就是future object
- 有三種方式來產生 stream 提供監聽
  - Stream 的三個靜態方法 .fromFuture, .fromFutures, .fromIterable
  - StreamController 可以用來隨著script 流程把 element 加入 stream(需要 import 'dart:async';)
  - async* + yield 則是產生一個 stream 函數