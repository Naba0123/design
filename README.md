#Design Project Team E
デザインプロジェクトBのEチーム用です。  

##開発環境
* Ruby On Rails 4.0.0
* Passenger on Apache2  
その他適宜追加します。

##連絡等
本番用環境にて、Apache2上でRailsアプリケーションを動かせるように設定しました。  
Apache2が起動していればRailsアプリケーションを個別に起動させる必要はありません。  
現在は「~/rails_test/foo」のRailsアプリケーションを使うようにしています。  
変更方法は、「/etc/apache2/conf.d/passenger」を管理者権限で開いて、  
DocumentRootとその下のDirectoryを「(アプリケーションのパス)/public」に変更し、  
「sudo /etc/init.d/apache2 restart」でApache2を再起動させれば出来ます。
