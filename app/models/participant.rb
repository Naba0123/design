class Participant < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :wish,:wish_course,:teacher
end
