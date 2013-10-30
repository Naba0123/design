class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :tel
      t.string :work
      t.integer :worktype
      t.date :birth
      t.integer :gender

      t.timestamps
    end
  end
end
