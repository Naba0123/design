require 'factory_girl'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    10.times do
      FactoryGirl.create(:arale)
      FactoryGirl.create(:akane)
      FactoryGirl.create(:taro)
    end
  end
end



