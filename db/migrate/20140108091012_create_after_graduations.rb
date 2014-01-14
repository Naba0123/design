class CreateAfterGraduations < ActiveRecord::Migration
  def change
    create_table :after_graduations do |t|
      t.string :belong
      t.string :position
      t.integer :job_kind
      t.text :other
      t.integer :graduate_id

      t.timestamps
    end
  end
end
