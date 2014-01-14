class User < ActiveRecord::Base
    has_secure_password
    
    # guidanceと多：多の関係を持たせる
    has_many:guidances_users
    has_many:guidances, :through => :guidances_users
    # validates_presence_of で必須事項になる。書く順番でエラーメッセージの順番が変わる
    validates_presence_of :account
    validates :account, 
      :uniqueness => true,
      :length => { :in => 4..16},
      :format => { :with => /\A[a-zA-Z0-9]+\z/,:message => "は半角英数字で入力してください"}
          
    validates_presence_of :password,:on => :create
    validates :password,:on => :create, 
    :length => { :in => 6..32},
    :format => { :with => /\A[a-zA-Z0-9]+\z/,:message => "は半角英数字で入力してください"}
 
    validates_presence_of :name, :country, :address, :phone
    validates :phone,
      :length => { :in => 9..11},
      :format => { :with => /\A[0-9]+\z/,:message =>"は半角数字で入力してください" }
    validates_presence_of :job, :job_kind_id, :birthday, :gender
    
    # アソシエーションの設定 : 下の「親子関係の設定」よりも上に書かないとエラーになる（先に定義する）
    has_one :student, :dependent => :destroy
    has_one :graduate, :dependent => :destroy
    has_one :participant, :dependent => :destroy
    
    # 親子関係の設定 : 以下のように設定をすることで、テーブル間の親子関係を設定する(こうするとすごく楽になる)
    accepts_nested_attributes_for :student
    accepts_nested_attributes_for :participant
    accepts_nested_attributes_for :graduate

    belongs_to :job_kind

    acts_as_reader
    
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

