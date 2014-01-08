class GuidancesUser < ActiveRecord::Base

 #多：多の関係を持たせる
   belongs_to :user 
   belongs_to :guidance 
 
 
end
