class User < ActiveRecord::Base
    validates_presence_of :name, :address
end

class Student < User
end

class Graduate < User
end

class Meeting < User
end

class AfterGraduation < User
end