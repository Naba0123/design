class CreateResearchRooms < ActiveRecord::Migration
  def change
    create_table :research_rooms do |t|
      t.string :name
    end
  end
end
