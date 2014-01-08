require 'spec_helper'

describe "guidances_users/show" do
  before(:each) do
    @guidances_user = assign(:guidances_user, stub_model(GuidancesUser,
      :user_id => 1,
      :guidance_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
