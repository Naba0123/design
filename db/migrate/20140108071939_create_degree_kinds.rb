class CreateDegreeKind < ActiveRecord::Migration
  def change
    create_table :degree_kinds do |t|
      t.string :name
    end
  end
end
