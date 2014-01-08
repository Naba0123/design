require 'spec_helper'

describe "guidances/edit" do
  before(:each) do
    @guidance = assign(:guidance, stub_model(Guidance,
      :guidance_place => "MyString",
      :guidance_kind => 1
    ))
  end

  it "renders the edit guidance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guidance_path(@guidance), "post" do
      assert_select "input#guidance_guidance_place[name=?]", "guidance[guidance_place]"
      assert_select "input#guidance_guidance_kind[name=?]", "guidance[guidance_kind]"
    end
  end
end
