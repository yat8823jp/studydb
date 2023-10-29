# studydb

MySQL study for M1 Mac

## MySQL 日本語のための Tips

最新版の環境だと日本語が使えなかったので下記採用

- MySQL5.7
- Dockerfile への設定書き込み
- my.conf に言語設定

デバッグ用に yum install vi を記載

## データベースダミーデータ

- /sql/dummy.csv ユーザーデータ
- /sql/orders.csv 注文データ

dummy.csv は下記サイトにて作成
https://testdata.userlocal.jp/


ホスト側で作成したファイルになるため、事前に実行可能なパーミッションにしておく

```
chmod +x ./sql/dummy.csv
```

## Usage

Docker を利用するので、まずはインストールしてください
https://www.docker.com/ja-jp/

### install

イメージ作成から起動および再構築
```
docker-compose up --build
```

データベースの作成まで一通り自動で行います

コンテナに接続（ コンテナ名は studydb ）
```
docker exec -i -t studydb bash
```

mysql に接続
```
mysql -p
```

MySQL 情報

| 項目 | 値 |
|--|--|
| データベース名 | studydb |
| ユーザー名 | root |
| パスワード | root |

