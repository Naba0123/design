class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :place
      t.text :detail

      t.timestamps
    end
  end
end
