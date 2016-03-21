require 'rails_helper'

RSpec.describe "departments/edit", type: :view do
  before(:each) do
    @department = assign(:department, Department.create!(
      :dept_name => "MyString"
    ))
  end

  it "renders the edit department form" do
    render

    assert_select "form[action=?][method=?]", department_path(@department), "post" do

      assert_select "input#department_dept_name[name=?]", "department[dept_name]"
    end
  end
end
