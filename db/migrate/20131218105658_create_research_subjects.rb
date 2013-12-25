class CreateResearchSubjects < ActiveRecord::Migration
  def change
    create_table :research_subjects do |t|
      t.string :name
    end
  end
end
