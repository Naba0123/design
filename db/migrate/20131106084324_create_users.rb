class CreateUsers < ActiveRecord::Base
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
      t.boolean :admin
      t.integer :grade
      t.integer :department
      t.integer :research_subject
      t.integer :research_room
      t.string :student_number
      t.string :guarantor_name
      t.string :guarantor_address
      t.string :guarantor_phone
      t.date :entry_date
      t.integer :wish
      t.integer :wish_course
      t.string :teacher
      t.boolean :changed
      t.date :finish_date
      t.date :meeting_date
      t.string :meeting_place
      t.integer :event_type
      t.string :belong
      t.string :position
      t.text :other

      t.timestamps
    end
  end
end

    end
  end
end 
