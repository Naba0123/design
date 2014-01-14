require 'spec_helper'

describe "after_graduations/index" do
  before(:each) do
    assign(:after_graduations, [
      stub_model(AfterGraduation,
        :belong => "Belong",
        :position => "Position",
        :job_kind => 1,
        :other => "MyText"
      ),
      stub_model(AfterGraduation,
        :belong => "Belong",
        :position => "Position",
        :job_kind => 1,
        :other => "MyText"
      )
    ])
  end

  it "renders a list of after_graduations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Belong".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
