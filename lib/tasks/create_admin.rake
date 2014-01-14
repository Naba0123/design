require 'factory_girl'

namespace :db do
  desc "Fill database with sample data"
  task create_admin: :environment do
    FactoryGirl.create(:midori)
  end
end



