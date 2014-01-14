class GuidancesUser < ActiveRecord::Base

    # 多：多の関係を持たせる
    belongs_to :user
    belongs_to :guidance

    validates_presence_of :user_id
    validates_numericality_of :user_id, { :greater_than => -1, :message => "は0以上の数字を選択してください。" }
    validates_numericality_of :user_id, { :only_integer => true, :message => "は整数で入力してください。"}
    validates_presence_of :guidance_id
    validates_numericality_of :guidance_id, { :greater_than => -1, :message => "は0以上の数字を選択してください。" }
    validates_numericality_of :guidance_id, { :only_integer => true, :message => "は整数で入力してください。"}
 
end
