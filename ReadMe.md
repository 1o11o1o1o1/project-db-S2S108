# データベース応用 実習ワークスペース

## VSCode に最初にインストールする 拡張機能

### 入れ方

1. 左の「拡張機能」ボタンを押す
1. 検索ボックスに「@recommended」を入れる
1. 「ワークスペースの推奨事項」に表示されている Extension をインストール

### 対象

- Japanese Language Pack for Visual Studio Code
- Prettier
- Prettier SQL VSCode
- PostgreSQL
- Better Comments
- indent-rainbow
- vscode-icons

## 実習ワークスペース フォルダ構成

- 0.env
  - DB の初期化 SQL を格納している
- 1.text
  - 教科書の実習 SQL を作成する
- 2.task
  - 演習問題の SQL を作成する

## PostgreSQL DB への接続

### PostgreSQL 拡張機能の活用

1. VSCode 左側のアイコンの中から「Database」を開く

2. 「Create Connection」を押す

3. 「Connect」内で以下の設定を入力し、下部の「＋ Connect」ボタンを押す

- Name : DB
- Host : 127.0.0.1 ※デフォルト
- Port : 5432 ※デフォルト
- Username : postgres ※デフォルト
- Password : postgres
- Database : postgres ※デフォルト

4. PostgreSQL の DB に接続されれば準備完了

- ※エラーになった場合は、PostgreSQL のインストール状況を確認する
