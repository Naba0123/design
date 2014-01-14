class Event < ActiveRecord::Base

    acts_as_readable :on => :created_at

    validates_presence_of :name, :date, :place, :detail

end
