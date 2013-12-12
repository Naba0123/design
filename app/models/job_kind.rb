class JobKind < ActiveRecord::Base
  has_many :users
end
