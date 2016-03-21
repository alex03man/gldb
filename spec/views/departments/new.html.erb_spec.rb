require 'rails_helper'

RSpec.describe "departments/new", type: :view do
  before(:each) do
    assign(:department, Department.new(
      :dept_name => "MyString"
    ))
  end

  it "renders new department form" do
    render

    assert_select "form[action=?][method=?]", departments_path, "post" do

      assert_select "input#department_dept_name[name=?]", "department[dept_name]"
    end
  end
end
