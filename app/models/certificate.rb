class Certificate < ActiveRecord::Base
    belongs_to :certificate_kind
    
    validates_presence_of :certificate_kind_id, :finish_year
    validates :finish_year, :inclusion => { :in => 1949..2014, :message => "は1949～2014の範囲で選択してください。" }
    validates_presence_of :count
    validates :count, :inclusion => { :in => 1..5, :message => "は1～5の範囲で選択してください。" }
    validates_presence_of :purpose
    
end
