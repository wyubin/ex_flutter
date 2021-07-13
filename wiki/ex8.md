# intro
Generator
[Day 27：讓產生器 (Generator) 來產生一連串的同步或異步資料吧。](https://ithelp.ithome.com.tw/articles/10245339)
- 會包含 Iterable 及 stream

# Iterator/Iterable
- Iterator 是一個抽象類別，moveNext 來確認是不是有下一個 item，current 則是return 現在的物件
```dart
abstract class Iterator<E>{
	bool moveNext();
	E get current;
}
```
- Iterable<E> 則是一個可以使用 Iterator 的物件，可用以實做物件 iterator 的功能
  - 實做之後就可以用 for - in 及 .forEach()進行物件的iteration
- 可以用 sync* - yield 的方式來產生一個 Iterable<E> 物件
- 如果邏輯過於複雜，可以用 yield* 來遞迴呼叫，而不用 for loop(但覺得儘量避免)
