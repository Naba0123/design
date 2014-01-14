require 'spec_helper'

describe "after_graduations/edit" do
  before(:each) do
    @after_graduation = assign(:after_graduation, stub_model(AfterGraduation,
      :belong => "MyString",
      :position => "MyString",
      :job_kind => 1,
      :other => "MyText"
    ))
  end

  it "renders the edit after_graduation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", after_graduation_path(@after_graduation), "post" do
      assert_select "input#after_graduation_belong[name=?]", "after_graduation[belong]"
      assert_select "input#after_graduation_position[name=?]", "after_graduation[position]"
      assert_select "input#after_graduation_job_kind[name=?]", "after_graduation[job_kind]"
      assert_select "textarea#after_graduation_other[name=?]", "after_graduation[other]"
    end
  end
end
