require 'spec_helper'

describe "guidances_users/new" do
  before(:each) do
    assign(:guidances_user, stub_model(GuidancesUser,
      :user_id => 1,
      :guidance_id => 1
    ).as_new_record)
  end

  it "renders new guidances_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guidances_users_path, "post" do
      assert_select "input#guidances_user_user_id[name=?]", "guidances_user[user_id]"
      assert_select "input#guidances_user_guidance_id[name=?]", "guidances_user[guidance_id]"
    end
  end
end
