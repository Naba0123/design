class AfterGraduation < ActiveRecord::Base
    belongs_to :user
    
    # アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
    attr_accessible :user_id, :belong, :position, :work_kind, :other
    
end
