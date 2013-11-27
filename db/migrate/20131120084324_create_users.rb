class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password_digest
      t.string :name
      t.string :country
      t.string :address
      t.string :phone
      t.string :job
      t.integer :job_type
      t.date :birthday
      t.integer :gender
      #adminを削除
      t.timestamps
    end
    create_table :students do |t|
      t.integer :user_id
      
      t.integer :grade
      t.integer :department
      t.integer :research_subject
      t.integer :research_room
      t.string :student_number
      t.string :guarantor_name
      t.string :guarantor_address
      t.string :guarantor_phone
      t.date :entry_date
    end
    create_table :graduates do |t|
      t.integer :user_id
      
      t.boolean :is_change
      t.date :finish_date
    end
    create_table :participants do |t|
      t.integer :user_id
      
      t.integer :wish
      t.integer :wish_course
      t.string :teacher
      #登録済み、登録日を削除
    end
    create_table :meetings do |t|
      t.ineger :user_id
      
      t.date :meeting_date
      t.string :meeting_place
      t.integer :event_type
    end
    create_table :after_graduations do |t|
      t.integer :user_id
      
      t.string :belong
      t.string :position
      t.integer :work_type
      t.text :other
      
      t.timestamps
    end
  end
end