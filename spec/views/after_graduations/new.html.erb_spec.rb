require 'spec_helper'

describe "after_graduations/new" do
  before(:each) do
    assign(:after_graduation, stub_model(AfterGraduation,
      :belong => "MyString",
      :position => "MyString",
      :job_kind => 1,
      :other => "MyText"
    ).as_new_record)
  end

  it "renders new after_graduation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", after_graduations_path, "post" do
      assert_select "input#after_graduation_belong[name=?]", "after_graduation[belong]"
      assert_select "input#after_graduation_position[name=?]", "after_graduation[position]"
      assert_select "input#after_graduation_job_kind[name=?]", "after_graduation[job_kind]"
      assert_select "textarea#after_graduation_other[name=?]", "after_graduation[other]"
    end
  end
end
