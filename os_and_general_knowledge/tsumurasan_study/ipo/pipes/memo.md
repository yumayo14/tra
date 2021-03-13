親とその祖先の間では、リソースが共有される。
子から親、親から子に何らかのデータを送信したい場合。パイプと言う方法が用いられる。

パイプ = 単方向の通信が行える
* 読み取る側（IOオブジェクト）
* 書き込む側（IOオブジェクト）

の２つが必要。（IO#pipe）

単方向 = 一方通行。読み取る側が書き込みを行うことはできない。

余談、IOクラス。リソース（5.1 すべてはファイルを参照） を扱う際の共通のインターフェイス

17.3 パイプを共有する
11商が前提知識として必要。
パイプもリソースとしてみなされ、子プロセスと共有される。

```ruby
ruby ipo_by_pipe.rb
```

17.4 ストリームとメッセージ
パイプ、TCPソケットはこっち
「ストリーム」 = 開始と終了の概念を持たずにパイプにデータの読み書きを行うという意味

書き込む側
- プロトコル固有のデリミタを後ろにつけて、ストリームにデータを書き込む
  - ex, HTTP、連続した改行文字でヘッダーとボディーを区切る
読み込む側
- 区切り文字（デリミタ）が現れるまでの塊を一度に読み込む
  - ex, #puts #gets は 改行文字をデリミタとして扱う

Unixソケットなら可能
「メッセージ」」 = データグラムを使った通信。
- socketファイルのこと？？
- メッセージ全体を書き込んだり、別のソケットからメッセージ全体を読み込むことができるようになる