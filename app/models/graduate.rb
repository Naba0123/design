class Graduate < ActiveRecord::Base
  belongs_to :user
  has_many :after_graduation
end
