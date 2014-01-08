class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account
      t.string :password_digest
      t.string :name
      t.string :country
      t.string :address
      t.string :phone
      t.string :job
      t.belongs_to :job_kind
      t.date :birthday
      t.integer :gender
      t.boolean :authorized
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
      t.boolean :is_entered
    end
    create_table :participants do |t|
      t.integer :user_id
      t.integer :wish
      t.integer :wish_course
      t.string :teacher
    end
    create_table :meetings do |t|
      t.integer :user_id
      t.date :meeting_date
      t.string :meeting_place
      t.integer :event_kind
    end
  end
end
