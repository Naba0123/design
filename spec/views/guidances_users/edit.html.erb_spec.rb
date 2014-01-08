require 'spec_helper'

describe "guidances_users/edit" do
  before(:each) do
    @guidances_user = assign(:guidances_user, stub_model(GuidancesUser,
      :user_id => 1,
      :guidance_id => 1
    ))
  end

  it "renders the edit guidances_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guidances_user_path(@guidances_user), "post" do
      assert_select "input#guidances_user_user_id[name=?]", "guidances_user[user_id]"
      assert_select "input#guidances_user_guidance_id[name=?]", "guidances_user[guidance_id]"
    end
  end
end
