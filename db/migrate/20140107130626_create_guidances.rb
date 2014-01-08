class CreateGuidances < ActiveRecord::Migration
  def change
    create_table :guidances do |t|
      t.date :guidance_date
      t.string :guidance_place
      t.belongs_to :guidance_kind

      t.timestamps
    end
  end
end
