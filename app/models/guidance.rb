class Guidance < ActiveRecord::Base
# userと多：多の関係を持たせる
   has_many:guidances_users
   has_many:users, :through => :guidances_users 
# guidance_idと関係を持たせる
  belongs_to :guidance_kind

# アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
  attr_accessible :guidance_date,:guidance_place,:guidance_kind_id
end
