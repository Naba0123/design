require 'spec_helper'

describe "guidances/show" do
  before(:each) do
    @guidance = assign(:guidance, stub_model(Guidance,
      :guidance_place => "Guidance Place",
      :guidance_kind => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Guidance Place/)
    rendered.should match(/1/)
  end
end
