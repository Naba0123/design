class User < ActiveRecord::Base
    has_secure_password
    
    validates_presence_of :account
    validates_presence_of :password, :on => :create
    validates_presence_of :name, :address
    validates :phone, format: { with:/\A[0-9]+\z/ }
    validates :account, :uniqueness => true
    
    # アクセス制限 : 以下に書かれているものはフォーム（ハッシュ）から変更可能にする。
    attr_accessible :account, :password, :password_confirmation
    attr_accessible :name, :country, :address, :phone, :job, :job_kind_id, :birthday, :gender
    
    has_one :student, :dependent => :destroy
    has_one :graduate, :dependent => :destroy
    has_one :participant, :dependent => :destroy
    has_one :after_graduation, :dependent => :destroy

    belongs_to :job_kind
    
    def user_type
      if self.after_graduation
        return :after_graduation
      else
        if self.graduate
          return :graduate
        else
          if self.student
            return :student
          else
            if self.participant
              return :participant
            else
              return :admin
            end
          end
        end
      end
    end
  end

