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

##連絡等
本番用環境にて、Apache2上でRailsアプリケーションを動かせるように設定しました。  
Apache2が起動していればRailsアプリケーションを個別に起動させる必要はありません。  
現在は「~/rails_test/foo」のRailsアプリケーションを使うようにしています。  
変更方法は、「/etc/apache2/conf.d/passenger」を管理者権限で開いて、  
DocumentRootとその下のDirectoryを「(アプリケーションのパス)/public」に変更し、  
「sudo /etc/init.d/apache2 restart」でApache2を再起動させれば出来ます。
