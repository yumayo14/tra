CGI（Common GateWay Interface）とはなにか
ホスティングサーバー上で、サーバー側のプログラムを実行するための仕組み。
CGIスクリプトという、呼び出し先の情報などがまとめられたファイルをサーバー側で用意し、リクエストがきたらその関数を実行し、その実行結果を返す仕組みのこと。
つまり、ブラウザにHTMLを返す場合、動的にHTMLを生成する必要がある。１つ１つ手作業で。
枯れた技術。理由はまだ知らない。
自分で試すには、サーバーを建てる必要があるみたいで少し面倒だった。楽に試せる方法がわかったら試す

Nginxについて

* Ruby、内臓のwebサーバーを持っている
  * Rails でいうRackがそれに当たる

参考にしたドキュメント
https://qiita.com/takahiro1127/items/fcb81753eaf381b4b33c