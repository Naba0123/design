require 'spec_helper'

describe "guidances/new" do
  before(:each) do
    assign(:guidance, stub_model(Guidance,
      :guidance_place => "MyString",
      :guidance_kind => 1
    ).as_new_record)
  end

  it "renders new guidance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guidances_path, "post" do
      assert_select "input#guidance_guidance_place[name=?]", "guidance[guidance_place]"
      assert_select "input#guidance_guidance_kind[name=?]", "guidance[guidance_kind]"
    end
  end
end
