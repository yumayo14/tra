# はじめに
## 全文検索について
* 複数の文書を対象として特定の文字列が含まれる文書を探す技術
* 2種類の実現方法に大きく分けられる
  * 逐次検索
    * ファイルの中身を端から走査して目的の文字列を探す方法
    * UNIXでいうgrep
  * 索引型検索
    * 事前に文書を高速に検索できる索引を構成しておき、検索時にこの索引をキーに目的の文書を探す

# Elasticsearchについて
* 検索サーバーに当たる

# 公式のビデオチュートリアル
Elastic Stack
kibana
- 入っているデータを可視化するためのツール
- 監視
- 操作
- 管理
- devtoolsが入っている
  - ElasticSearchとかんたんにやり取りするためのツール
    - データの入出力を行える

Elasticsearch
- 後述

Beats
- データシッパー
  - 実際に欲しいデータが存在する場所に入れる

Logstash
- データを取り込むためのツール
  - RDBのデータを取り込んで何かしら制御するインターフェイス

この4つがElasticstack

Elasticsearchについて
- スケーラブル
- REST API

- Elastic cloud

- CRUD
  - json形式でデータを扱う
    - ドキュメントを保存する場合、jsonフォーマットのデータをREST APIに投げる
    - 値は6種類の
  - データを登録するとき、インデックスの名前を指定する
    - インデックス = データが格納される場所
      - DBテーブル的なもの？？
    - ドキュメント = インデックス内のデータ
      - DBの各行
  - データを検索するとき
    - 該当インデックス内に格納されているデータを格納する
    - インデックスを指定せずに検索することも可能

今、40分まで見た

# 疑問をまとめる
* RDB（というより単なるデータを格納するもの）との違いがよくわからない
  * [データベースとしてのElasticsearch](https://qiita.com/rjkuro/items/95f71ad522226dc381c8)
  * 特にNoSQLとの違いがわからない
    * [Elasticsearch as a NoSQL Database](https://www.elastic.co/jp/blog/found-elasticsearch-as-nosql)
