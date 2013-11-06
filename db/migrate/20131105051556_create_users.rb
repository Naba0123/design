class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :number
      t.string :user_number
      t.string :password_digest
      t.string :name
      t.string :country
      t.string :address
      t.string :phone
      t.string :job
      t.integer :job_type
      t.date :birthday
      t.integer :gender
      t.boolean :admin

      t.timestamps
    end
  end
end
