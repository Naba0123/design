# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'active_record/fixtures'

ActiveRecord::Fixtures.create_fixtures "#{Rails.root}/db/seeds", "job_kinds"
ActiveRecord::Fixtures.create_fixtures "#{Rails.root}/db/seeds", "certificate_kinds"
ActiveRecord::Fixtures.create_fixtures "#{Rails.root}/db/seeds", "guidance_kinds"
ActiveRecord::Fixtures.create_fixtures "#{Rails.root}/db/seeds", "departments"
ActiveRecord::Fixtures.create_fixtures "#{Rails.root}/db/seeds", "research_subjects"
ActiveRecord::Fixtures.create_fixtures "#{Rails.root}/db/seeds", "research_rooms"
