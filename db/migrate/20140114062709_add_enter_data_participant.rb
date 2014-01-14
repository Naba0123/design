class AddEnterDataParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :entry_date, :date
    add_column :participants, :is_entered, :boolean
  end
end
