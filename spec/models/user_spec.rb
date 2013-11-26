require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }

  specify '妥当なオブジェクト' do
    expect(user).to be_valid
  end

  specify "phone は数字を含む" do
    user[:phone] = '12345678912'
    expect(user).to be_valid
  end

  specify "phone は数字以外の文字を含まない" do
    ['A', '@', '０'].each do |value|
      user[:phone] = value
      expect(user).not_to be_valid
      expect(user.errors[:phone]).to be_present
    end
  end
end
