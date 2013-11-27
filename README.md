#Design Project Team E
デザインプロジェクトBのEチーム用です。  

##開発環境
* Ruby On Rails 4.0.0
* Passenger on Apache2
その他適宜追加します。

## 開発環境の構築と実行

リポジトリをクローンしたあとは，以下のコマンドを実行して，
開発環境を構築する．

```
bundle install --without=production
rake db:migrate
```

なお，`rake db:migrate`し直してエラーが出る場合，
一旦`/db/develop.sqlite3`を消してからマイグレーションを行うと成功するかもしれません．

サーバーを起動するには以下のコマンドを実行する．

```
rails s
```

## テスト環境の構築と実行

まずテスト環境のためのデータベーススキーマを構築する．
```
rake db:test:prepare
```

テストの実行は以下のコマンドを打つ．
```
bundle exec rspec path/to/testcase.rb
```
`path/to/testcase.rb` はテストケースのファイルへのパス．
これを省略するとすべてのテストケースを実行する．

## Git 利用の方針


## Gitコマンドとりあえず

自分(@tatarhy)が使ったことあるやつだけ

### とりあえず現在の状態を見る

```
git status
```

変更が加えられたファイルの一覧を表示する

```
git branch
```

ブランチの一覧を表示．先頭に`*`があるのがいまいるブランチ．

### 元にもどす

```
git reset
```

インデックス(`git add`したら送られるとこ．ここにあるファイルだけがコミットされる)
をaddする前の状態にもどす．

```
git checkout target.file
```

`target.file` を直前のコミット時点の状態までもどす．
なお最後の引数を`.`に換えるとカレントディレクトリ以下のすべてのファイルが対象になる．
なのでプロジェクトのルートのディレクトリで`git checkout .`
とかするとすべてのファイルが元に戻せるのでいいんじゃなかろうか．


### プルして，コミットして，プッシュする

```
git pull
```

リモートブランチをローカルにもってきてマージする．

```
git add .
git add path/to/modified.file
```

コミットするファイルを指定する

```
git commit -m "Comment for this commit"
```

メッセージ付きでコミットする．最後の`-m`オプションを省略するとエディタが起動する．
どのエディタが起動するかは`$EDITOR`による．

```
git push
```

ローカルのブランチをリモートリポジトリにプッシュする．

### マージする

```
git checkout master
git merge target-branch
```

上は`master`ブランチに`target-branch`ブランチをマージする場合．
`merge`コマンドはいまいるブランチに引数で指定したブランチをマージする．
したがってマージさせたいブランチに`checkout`コマンドで予め移動しておく．

### ブランチ操作

```
git checkout -b new-branch
```

`new-branch`を作成して，そこに移動．

```
git checkout one-branch
```

既に存在するブランチに移動する場合は`-b`オプションはいらない．

```
git branch -d one-branch
```

`one-branch`を削除．

```
git push origin new-branch
```

ローカルブランチを新たにリモートにプッシュする場合は上のように，
リモートリポジトリ名とローカルブランチ名を指定してプッシュする．


##連絡等
本番用環境にて、Apache2上でRailsアプリケーションを動かせるように設定しました。  
Apache2が起動していればRailsアプリケーションを個別に起動させる必要はありません。  
現在は「~/rails_test/foo」のRailsアプリケーションを使うようにしています。  
変更方法は、「/etc/apache2/conf.d/passenger」を管理者権限で開いて、  
DocumentRootとその下のDirectoryを「(アプリケーションのパス)/public」に変更し、  
「sudo /etc/init.d/apache2 restart」でApache2を再起動させれば出来ます。
