class User < ActiveRecord::Base
    has_secure_password

    # validates_presence_of で必須事項になる。書く順番でエラーメッセージの順番が変わる
    validates_presence_of :account
    validates :account, :uniqueness => true
    validates_presence_of :password, :on => :create
    validates_presence_of :name, :country, :address, :phone
    validates :phone, format: { with:/\A[0-9]+\z/ }
    validates_presence_of :job, :job_kind_id, :birthday, :gender
    
    # アソシエーションの設定 : 下の「親子関係の設定」よりも上に書かないとエラーになる（先に定義する）
    has_one :student, :dependent => :destroy
    has_one :graduate, :dependent => :destroy
    has_one :participant, :dependent => :destroy
    has_one :after_graduation, :dependent => :destroy
    
    # 親子関係の設定 : 以下のように設定をすることで、テーブル間の親子関係を設定する(こうするとすごく楽になる)
    accepts_nested_attributes_for :student
    accepts_nested_attributes_for :participant
    accepts_nested_attributes_for :graduate
    accepts_nested_attributes_for :after_graduation

    belongs_to :job_kind
    
    def user_type
      if self.graduate
        # 修了生の情報を持っていても承認がまだであれば生徒として扱う
        if self.graduate.is_entered
          return :graduate
        else
          return :student
        end
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

