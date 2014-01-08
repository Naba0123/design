require 'spec_helper'

describe "guidances/index" do
  before(:each) do
    assign(:guidances, [
      stub_model(Guidance,
        :guidance_place => "Guidance Place",
        :guidance_kind => 1
      ),
      stub_model(Guidance,
        :guidance_place => "Guidance Place",
        :guidance_kind => 1
      )
    ])
  end

  it "renders a list of guidances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Guidance Place".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
