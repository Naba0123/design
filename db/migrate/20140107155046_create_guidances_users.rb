class CreateGuidancesUsers < ActiveRecord::Migration
  def self.up
    create_table :guidances_users do |t|
      t.string :user_id, :null => false,  :limit => 8
      t.string :guidance_id, :null => false,  :limit => 8
 
      t.datetime :create_at
      t.datetime :update_at
      t.timestamps
    end
  end
 
  def self.down
    drop_table :guidances_users
  end
end
