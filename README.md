# studydb

MySQL study for M1 Mac

## MySQL 日本語のための Tips

最新版の環境だと日本語が使えなかったので下記採用

- MySQL5.7
- Dockerfile への設定書き込み
- my.conf に言語設定

デバッグ用に yum install vi を記載

## データベースダミーデータ

/sql/dummy.csv

https://testdata.userlocal.jp/
にて作成

ホスト側で作成したファイルになるため、事前に実行可能なパーミッションにしておく

```
chmod +x ./sql/dummy.csv
```
