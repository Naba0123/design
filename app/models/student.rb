class Student < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :grade
    validates :grade, :inclusion => { :in => 1..6, :message => "は1～6の範囲で選択してください。" }
    validates_numericality_of :grade, { :only_integer => true, :message => "は整数で入力してください。"}
    validates_presence_of :department, :research_subject, :research_room, :student_number, :guarantor_name, :guarantor_address, :guarantor_phone
    validates :guarantor_phone,
      :length => { :in => 9..11},
      :format => { :with => /\A[0-9]+\z/,:message =>"は半角数字で入力してください" }
    validates_presence_of :entry_date
    
end
