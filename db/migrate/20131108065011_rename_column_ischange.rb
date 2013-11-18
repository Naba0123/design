class RenameColumnIschange < ActiveRecord::Migration
  def change
    rename_column :users, :ischange, :is_change
  end
end
