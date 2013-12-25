class CreateGuidanceKinds < ActiveRecord::Migration
  def change
    create_table :guidance_kinds do |t|
      t.string :name
    end
  end
end
