class Participant < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :wish,:wish_course,:teacher
  validates :wish,
    :numericality => {:only_integer => true, :greater_than => 0}
  validates :wish_course,
    :numericality => {:only_integer => true, :greater_than => 0}
end
