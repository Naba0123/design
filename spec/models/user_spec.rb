require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }

  specify '妥当なオブジェクト' do
    expect(user).to be_valid
  end
end
