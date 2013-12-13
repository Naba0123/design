class Participant < ActiveRecord::Base
    belongs_to :user
    
    # アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
    attr_accessible :user_id, :wish, :wish_course, :teacher, :unauthorized
    
end
