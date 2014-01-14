require 'spec_helper'

describe "after_graduations/show" do
  before(:each) do
    @after_graduation = assign(:after_graduation, stub_model(AfterGraduation,
      :belong => "Belong",
      :position => "Position",
      :job_kind => 1,
      :other => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Belong/)
    rendered.should match(/Position/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
