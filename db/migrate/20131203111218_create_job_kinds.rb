class CreateJobKinds < ActiveRecord::Migration
  def change
    create_table :job_kinds do |t|
      t.string :name
    end
  end
end
