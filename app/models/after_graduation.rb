class AfterGraduation < ActiveRecord::Base
  belongs_to :graduate
  validates_presence_of :belong,:job_kind
  validates :job_kind,
    :numericality => {:only_integer => true, :greater_than => 0}
end
