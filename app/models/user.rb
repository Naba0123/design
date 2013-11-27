class User < ActiveRecord::Base
    validates_presence_of :name, :address
    validates :phone, format: { with:/\A[0-9]+\z/ }
    
    has_one :student
    has_one :graduate
    has_one :participant
    has_one :after_graduation
    def user_type
        if self.student
            return :student
        elsif self.participant
            return :participant
        elsif self.graduate
            return :graduate
        elsif  self.after_graduation
            return :after_graduation 
        else
          return :admin
        end
    end
end
