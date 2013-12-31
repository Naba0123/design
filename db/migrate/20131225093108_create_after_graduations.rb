class CreateAfterGraduations < ActiveRecord::Migration
  def change
    create_table :after_graduations do |t|
      t.belongs_to :user
      t.string     :belong
      t.string     :position
      t.belongs_to :job_kind
      t.text       :other
      t.timestamps
    end
  end
end
