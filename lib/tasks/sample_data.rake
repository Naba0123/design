require 'factory_girl'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    FactoryGirl.create(:midori)
    FactoryGirl.create(:gazilla)
    FactoryGirl.create(:arale)
    FactoryGirl.create(:akane)
    FactoryGirl.create(:taro)
  end
end



