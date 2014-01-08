class GuidancesUser < ActiveRecord::Base

 #多：多の関係を持たせる
   belongs_to :user 
   belongs_to :guidance 
 
 # アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
    attr_accessible :user_id,:guidance_id 
end
