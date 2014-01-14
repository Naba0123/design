class Graduate < ActiveRecord::Base
  belongs_to :user
  has_many :after_graduation
  
  validates_presence_of :finish_date

end
