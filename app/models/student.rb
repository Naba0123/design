class Student < ActiveRecord::Base
    belongs_to :user
  
    # アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
    attr_accessible :user_id, :grade, :research_subject, :research_room, :student_number, :guarantor_name, :guarantor_address, :guarantor_phone, :entry_date
    
end
