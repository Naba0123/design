class Event < ActiveRecord::Base
  acts_as_readable :on => :created_at
end
