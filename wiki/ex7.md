# intro
import
[Dart 26：用 import 匯入其他函式庫](https://ithelp.ithome.com.tw/articles/10244657)

# import
import 自己寫的 lib
- 資料夾架構
```shell
root directory --- lib --- lib_workshop.dart
                |
                -- pubspec.yaml 
```
- pubspec.yaml 是用來定義程式相關的設定，是 YAML 的格式，需注意空格，寫完以後會自動產生 .lock等相關檔案，像golang
- 進階架構如下
```shell
root directory --- lib --- lib_workshop.dart
                |       |
                |       -- src --- lib_workshop_base.dart 
                |
                -- pubspec.yaml 
                |
                -- example --- lib_workshop_example.dart
```
  - lib 裡面的每個 dart 像是一個 lib 的 index
  - src 則像是寫好的一個個 func 提供 export
  - 如果在同樣的 lib 資料夾中，import 可以直接用相對路徑，如果在 lib 外，就要用 package 了
  - 可以用 as 來多包一層名字