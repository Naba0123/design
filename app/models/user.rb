class User < ActiveRecord::Base
    validates_presence_of :name, :address
    validates :phone, format: { with:/\A[0-9]+\z/ }
end

class Student < User
end

class Graduate < User
end

class Meeting < User
end

class AfterGraduation < User
end
