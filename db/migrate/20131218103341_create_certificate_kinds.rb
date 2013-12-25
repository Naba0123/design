class CreateCertificateKinds < ActiveRecord::Migration
  def change
    create_table :certificate_kinds do |t|
      t.string :name
    end
  end
end
