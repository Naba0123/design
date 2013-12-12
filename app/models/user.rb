class User < ActiveRecord::Base
    has_secure_password
    
    validates_presence_of :account
    validates_presence_of :password, :on => :create
    validates_presence_of :name, :address
    validates :phone, format: { with:/\A[0-9]+\z/ }
    validates :account, :uniqueness => true
    
    # アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
    attr_accessible :account, :password, :password_confirmation, :name, :country, :address, :phone, :job, :job_kind, :birthday, :gender
    
    has_one :student
    has_one :graduate
    has_one :participant
    has_one :after_graduation

    belongs_to :job_kind
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
