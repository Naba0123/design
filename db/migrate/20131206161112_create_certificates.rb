class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.integer :kind
      t.integer :finish_year
      t.integer :count
      t.text :purpose
      t.string :another_address

      t.timestamps
    end
  end
end
