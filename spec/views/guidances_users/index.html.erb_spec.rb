require 'spec_helper'

describe "guidances_users/index" do
  before(:each) do
    assign(:guidances_users, [
      stub_model(GuidancesUser,
        :user_id => 1,
        :guidance_id => 2
      ),
      stub_model(GuidancesUser,
        :user_id => 1,
        :guidance_id => 2
      )
    ])
  end

  it "renders a list of guidances_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
